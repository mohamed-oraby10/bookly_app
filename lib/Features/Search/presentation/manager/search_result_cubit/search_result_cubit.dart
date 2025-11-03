import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_result_state.dart';

class SearchResultCubit extends Cubit<SearchResultState> {
  SearchResultCubit(this.searchRepo) : super(SearchResultInitial());
  final SearchRepo searchRepo;

  Future<void> fetchSearchResults({required String searchQuery}) async {
    emit(SearchResultLoading());
    var result = await searchRepo.fetchSearchResults(searchQuery: searchQuery);
    result.fold(
      (faiure) {
        emit(SearchResultFailure(errMessage: faiure.errMessage));
      },
      (books) {
        emit(SearchResultSuccess(books: books));
      },
    );
  }
}
