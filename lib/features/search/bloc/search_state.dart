part of 'search_bloc.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchFailed extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<dynamic> coordenates;

  const SearchSuccess(this.coordenates);

  @override
  List<Object> get props => [coordenates];
}

class AutocompleteSearchSuccess extends SearchState {
  final List<AutocompletePrediction> predictions;

  const AutocompleteSearchSuccess(this.predictions);

  @override
  List<Object> get props => [predictions];
}
