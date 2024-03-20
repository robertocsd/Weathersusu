import 'package:challenge_esusu/core/search/repository/i_network_service.dart';
import 'package:challenge_esusu/domain/autocomplate_prediction.dart';
import 'package:dio/dio.dart';
import 'package:challenge_esusu/helper/constants.dart';

class SearchRepository implements ISearchRepository {
  final dio = Dio();

  @override
  Future<List<AutocompletePrediction>> autocompletePlace(String query) async {
    const url = 'https://maps.googleapis.com/maps/api/place/autocomplete/json';
    try {
      final response = await dio.get(url, queryParameters: {
        'input': query,
        'types': 'geocode',
        'key': apiKey,
      });

      if (response.statusCode == 200 && response.data['status'] == 'OK') {
        final List predictionsJson = response.data['predictions'];
        return predictionsJson
            .map((json) => AutocompletePrediction.fromJson(json))
            .toList();
      } else {
        throw Exception('Failed to fetch autocomplete places');
      }
    } catch (e) {
      throw Exception('Failed to fetch autocomplete places: $e');
    }
  }

  @override
  Future<List<double>> getCoordinates(String placeId) async {
    final url =
        'https://maps.googleapis.com/maps/api/place/details/json?placeid=$placeId&key=$apiKey';

    try {
      final response = await dio.get(url);

      if (response.statusCode == 200) {
        final lat = response.data['result']['geometry']['location']['lat'];
        final lng = response.data['result']['geometry']['location']['lng'];

        return [lng, lat];
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
