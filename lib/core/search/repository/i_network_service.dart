// core/repository/i_weather_repository.dart

import 'package:challenge_esusu/domain/autocomplate_prediction.dart';

abstract class ISearchRepository {
  Future<List<double>> getCoordinates(String placeId);
  Future<List<AutocompletePrediction>> autocompletePlace(String query);
}
