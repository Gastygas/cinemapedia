import 'package:flutter/material.dart';

class FavouritesView extends StatelessWidget {
  const FavouritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourites View'),
      ),
      body: Center(child: Text('Favourites movies'),),
    );
  }
}