import 'package:cinemapedia/domain/datasources/local_storage_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/repository/local_storage_repository.dart';

class LocalStorageRepositoryImpl extends LocalStorageRepository {

  final LocalStorageDatasource datasource;

  LocalStorageRepositoryImpl({required this.datasource});

  @override
  Future<bool> isFavouriteMovie(int movieId) {
    return datasource.isFavouriteMovie(movieId);
  }

  @override
  Future<List<Movie>> loadFavouriteMovies({int limit = 10, int offset = 0}) {
    return datasource.loadFavouriteMovies(limit: limit, offset: offset);
  }

  @override
  Future<void> toggleFavouriteMovie(Movie movie) {
    return datasource.toggleFavouriteMovie(movie);
  }
}
