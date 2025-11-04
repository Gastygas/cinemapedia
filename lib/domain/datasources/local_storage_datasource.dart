import 'package:cinemapedia/domain/entities/movie.dart';

abstract class LocalStorageDatasource {
  Future<void> toggleFavouriteMovie(Movie movie);

  Future<bool> isFavouriteMovie(int movieId);

  Future<List<Movie>> loadFavouriteMovies({int limit = 10, int offset = 0});
}
