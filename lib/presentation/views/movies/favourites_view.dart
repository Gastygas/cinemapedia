import 'package:cinemapedia/presentation/widgets/movies/movies_masonry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';

class FavouritesView extends ConsumerStatefulWidget {
  const FavouritesView({super.key});

  @override
  ConsumerState<FavouritesView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends ConsumerState<FavouritesView> {
  @override
  void initState() {
    super.initState();
    ref.read(favouriteMoviesProvider.notifier).loadNextPage();
  }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {

    final favouriteMovies = ref.watch(favouriteMoviesProvider);
    final myMovieList = favouriteMovies.values.toList();
    print('mov ${myMovieList.length}');

    final colorPrimary = Theme.of(context).colorScheme.primary;

    if(myMovieList.isEmpty){
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite_border, size: 80, color: colorPrimary),
              Text('There is not any favourite movie')
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Center(child: const Text('Favourites Movies'))),
      body: MoviesMasonry(movies: myMovieList, loadNextPage: ref.read(favouriteMoviesProvider.notifier).loadNextPage)
    );
  }
}
