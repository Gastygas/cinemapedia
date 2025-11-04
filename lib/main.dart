import 'package:flutter/material.dart';

import 'package:cinemapedia/config/router/app_router.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:cinemapedia/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:cinemapedia/config/database/database.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // final deleteQuery = db.delete(db.favouriteMovies);
  // await deleteQuery.go();

  //// final moviesQuery = db.select(db.favouriteMovies);
  // final movies = await db.select(db.favouriteMovies).get();
  // print('moviee, $movies');

  await dotenv.load(fileName: '.env');

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
    );
  }
}
