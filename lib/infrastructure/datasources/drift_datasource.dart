import 'package:cinemapedia/config/database/database.dart';
import 'package:cinemapedia/domain/datasources/local_storage_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:drift/drift.dart' as drift;

class DriftDatasource extends LocalStorageDatasource {
  final AppDatabase database;

  DriftDatasource([AppDatabase? databaseToUse])
    : database = databaseToUse ?? db;

  @override
  Future<bool> isFavouriteMovie(int movieId) async {
    //Build the query
    final query = database.select(db.favouriteMovies)
      ..where((table) => table.movieId.equals(movieId));

    // Execute query
    final favouriteMovie = await query.getSingleOrNull();

    // Return the result
    return favouriteMovie != null;
  }

  @override
  Future<List<Movie>> loadFavouriteMovies({
    int limit = 10,
    int offset = 0,
  }) async {
    final query = database.select(database.favouriteMovies)
      ..limit(limit, offset: offset);

    final getMovies = await query.get();

    final movies = getMovies.map(
      (row) => Movie(
        adult: false,
        backdropPath: row.backdropPath,
        genreIds: const [],
        id: row.movieId,
        originalLanguage: '',
        originalTitle: row.originalTitle,
        overview: '',
        popularity: 0,
        posterPath: row.posterPath,
        title: row.title,
        video: false,
        voteAverage: row.voteAverage,
        voteCount: 0,
      ),
    ).toList();
    return movies;
  }

  @override
  Future<void> toggleFavouriteMovie(Movie movie) async {
    final isFavourite = await isFavouriteMovie(movie.id);
    if (isFavourite) {
      final deleteQuery = database.delete(database.favouriteMovies)
        ..where((table) => table.movieId.equals(movie.id));

      await deleteQuery.go();
      return;
    }

    await database
        .into(database.favouriteMovies)
        .insert(
          FavouriteMoviesCompanion.insert(
            movieId: movie.id,
            backdropPath: movie.backdropPath,
            originalTitle: movie.originalTitle,
            posterPath: movie.posterPath,
            title: movie.title,
            voteAverage: drift.Value(movie.voteAverage),
          ),
        );
  }
}
