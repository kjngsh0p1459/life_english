import 'package:life_english/src/models/item_model.dart';
import 'package:life_english/src/models/trailer_model.dart';
import 'package:life_english/src/resources/movie_api_provider.dart';

class Repository {
  final MovieApiProvider movieApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovie() => movieApiProvider.fetchMovieList();

  Future<TrailerModel> fetchTrailers(int movieId) => movieApiProvider.fetchTrailer(movieId);
}
