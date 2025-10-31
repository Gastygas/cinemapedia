
import 'package:cinemapedia/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cinemapedia/infrastructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Solo lectura, es inmutable este repositorio
final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MoviedbDatasource());
  // return MovieRepositoryImpl(IMDBDataSource()); si quisieramos cambiar el provedor, podriamos hacerlo en esta linea
});