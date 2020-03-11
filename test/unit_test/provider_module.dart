import 'package:inject/inject.dart';
import 'package:http/http.dart' as http;
import 'package:life_english/src/resources/movie_api_provider.dart';

import 'mock_client.dart';

@module
class ProviderModule{

  @provide
  @singleton
  http.Client client() => MockClient();

  @provide
  @singleton
  MovieApiProvider movieApiProvider(http.Client client) => MovieApiProvider(client);
}
