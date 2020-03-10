import 'dart:convert';

import 'package:http/http.dart';
import 'package:life_english/src/models/item_model.dart';
import 'package:life_english/src/models/trailer_model.dart';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = 'b7787a762b4e9657fe3b3f84874e07ba';
  final _baseUrl = "http://api.themoviedb.org/3/movie";

  Future<ItemModel> fetchMovieList() async {
    final response = await client.get("$_baseUrl/popular?api_key=$_apiKey");
    print(response.body.toString());
    if (response.statusCode == 200) {
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }

  Future<TrailerModel> fetchTrailer(int movieId) async {
    final response =
    await client.get("$_baseUrl/$movieId/videos?api_key=$_apiKey");

    if (response.statusCode == 200) {
      return TrailerModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load trailers');
    }
  }

}
