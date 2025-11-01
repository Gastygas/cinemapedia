import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/presentation/providers/actors/actors_repository_provider.dart';
import 'package:flutter_riverpod/legacy.dart';

final actorsByMoviesProvider = StateNotifierProvider<ActorsByMovieNotifer, Map<String, List<Actor>>>((ref) {
  final actorsProvider = ref.watch(actorsRepositoryProvider);
  return ActorsByMovieNotifer(getActors: actorsProvider.getActorsByMovie);
});

typedef GetActorsCallback = Future<List<Actor>> Function(String movieId);

class ActorsByMovieNotifer extends StateNotifier<Map<String, List<Actor>>> {
  final GetActorsCallback getActors;

  ActorsByMovieNotifer({required this.getActors}) : super({});

  Future<void> loadActors(String movieId) async {
    if (state[movieId] != null) return;
    //No se va a hacer otra peticion de la misma movie si ya se hizo antes

    final List<Actor> actors = await getActors(movieId);

    state = {...state, movieId: actors};
  }
}
