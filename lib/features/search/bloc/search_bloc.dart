import 'package:challenge_esusu/core/search/repository/i_network_service.dart';
import 'package:challenge_esusu/domain/autocomplate_prediction.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ISearchRepository searchRepository;

  SearchBloc(this.searchRepository) : super(SearchInitial()) {
    on<GetCoordenates>((event, emit) async {
      emit(SearchLoading());

      try {
        final coordenates = await searchRepository.getCoordinates(event.id);
        emit(SearchSuccess(coordenates));
        emit(SearchSuccess(coordenates));
      } catch (e) {
        emit(SearchFailed());
      }
    });
    on<AutocompleteRequested>((event, emit) async {
      try {
        final response = await searchRepository.autocompletePlace(event.query);
        emit(AutocompleteSearchSuccess(response));
      } catch (_) {
        emit(SearchFailed());
      }
    });
  }
}
