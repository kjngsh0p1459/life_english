import 'package:life_english/src/models/item_model.dart';
import 'package:life_english/src/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class MoviesBloc {
    final _respository = Repository();
    final _moviesFetcher = PublishSubject<ItemModel>();

    Observable<ItemModel> get allMovies => _moviesFetcher.stream;

    fetchAllMovies() async {
      ItemModel itemModel = await _respository.fetchAllMovie();
      _moviesFetcher.sink.add(itemModel);
    }

    dispose() {
      _moviesFetcher.close();
    }
}

final bloc = MoviesBloc();
