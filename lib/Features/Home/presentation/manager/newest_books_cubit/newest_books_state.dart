part of 'newest_books_cubit.dart';

abstract class NewestBooksState {
  const NewestBooksState();
}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books;

  NewestBooksSuccess({required this.books});
}

class NewestBooksFailure extends NewestBooksState {
  final String errMessage;

  NewestBooksFailure({required this.errMessage});
}
