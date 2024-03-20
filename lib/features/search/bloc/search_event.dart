part of 'search_bloc.dart';

sealed class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class GetCoordenates extends SearchEvent {
  final String id;

  const GetCoordenates(this.id);

  @override
  List<Object> get props => [id];
}

class AutocompleteRequested extends SearchEvent {
  final String query;

  const AutocompleteRequested(this.query);

  @override
  List<Object> get props => [query];
}
