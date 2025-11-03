part of 'search_result_cubit.dart';

abstract class SearchResultState extends Equatable {
  const SearchResultState();

  @override
  List<Object> get props => [];
}

class SearchResultInitial extends SearchResultState {}
class SearchResultLoading extends SearchResultState {}

class SearchResultFailure extends SearchResultState {
  final String errMessage;

const  SearchResultFailure({required this.errMessage});
}

class SearchResultSuccess extends SearchResultState {
  final List<BookModel> books;

  const SearchResultSuccess({required this.books});
}
