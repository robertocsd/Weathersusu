import 'package:bloc_test/bloc_test.dart';
import 'package:challenge_esusu/core/search/repository/i_network_service.dart';
import 'package:challenge_esusu/features/search/bloc/search_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:challenge_esusu/domain/autocomplate_prediction.dart';

class MockSearchRepository extends Mock implements ISearchRepository {}

void main() {
  group('SearchBloc', () {
    late ISearchRepository searchRepository;
    late SearchBloc searchBloc;

    setUp(() {
      searchRepository = MockSearchRepository();
      searchBloc = SearchBloc(searchRepository);
    });

    blocTest<SearchBloc, SearchState>(
      'emits [SearchLoading, SearchSuccess] when GetCoordenates is added',
      build: () => searchBloc,
      act: (bloc) {
        when(() => searchRepository.getCoordinates(any()))
            .thenAnswer((_) async => [0.0, 0.0]);
        bloc.add(const GetCoordenates('place_id'));
      },
      expect: () => [SearchLoading(), isA<SearchSuccess>()],
    );

    blocTest<SearchBloc, SearchState>(
      'emits [AutocompleteSearchSuccess] when AutocompleteRequested is added',
      build: () => searchBloc,
      act: (bloc) {
        when(() => searchRepository.autocompletePlace(any())).thenAnswer(
            (_) async =>
                [AutocompletePrediction(placeId: '1', description: 'Place 1')]);
        bloc.add(const AutocompleteRequested('query'));
      },
      expect: () => [isA<AutocompleteSearchSuccess>()],
    );

    tearDown(() {
      searchBloc.close();
    });
  });
}
