import 'dart:async';
import 'package:life_english/src/models/state.dart';

import 'movie_api_provider.dart';
import '../models/item_model.dart';
import '../models/trailer_model.dart';
import 'package:inject/inject.dart';

class Repository {
  final MovieApiProvider moviesApiProvider;

  @provide
  Repository(this.moviesApiProvider);

  Future<State> fetchAllMovies() => moviesApiProvider.fetchMovieList();

  Future<State> fetchTrailers(int movieId) => moviesApiProvider.fetchTrailer(movieId);
}
