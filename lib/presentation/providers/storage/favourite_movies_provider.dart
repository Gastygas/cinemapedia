/*
{
  1: Movie,
  2: Movie,
  3: Movie,
}
*/

import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/repository/local_storage_repository.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:flutter_riverpod/legacy.dart';

final favouriteMoviesProvider = StateNotifierProvider((ref) {

  final localStorageRepository = ref.watch(localStorageRepositoryProvider);
  
  return StorageMoviesNotifer(localStorageRepository: localStorageRepository) ;
});

class StorageMoviesNotifer extends StateNotifier<Map<int, Movie>> {
  int page = 0;
  final LocalStorageRepository localStorageRepository;

  StorageMoviesNotifer({required this.localStorageRepository}): super({});

  Future<List<Movie>> loadNextPage() async{
    final movies = await localStorageRepository.loadFavouriteMovies(
      limit: 10,
      offset: page * 10
    );
    page++;

    final tempMovies = <int, Movie>{};

    for( final movie in movies){
      // state = {...state, movie.id: movie}; //funcionaria pero se haria 10 veces si el limit es 10
      tempMovies[movie.id] = movie;
    }

    state = {...state, ...tempMovies}; //Solo se llama una vez

    return movies;
  }

  Future<void> toggleFavouriteMovie(Movie movie) async{
    final isFavourite = await localStorageRepository.isFavouriteMovie(movie.id);
    //cambio en base de datos
    await localStorageRepository.toggleFavouriteMovie(movie);
    //cambio en el front
    if(isFavourite){
      state.remove(movie.id);
      state = {...state};
      return;
    }

    state = {...state, movie.id: movie};

  }

}
