import 'package:dio/dio.dart';

class WineRepository {
  WineRepository();

  Future<void> getAllWine() async {
    try {
      var response = await Dio().get(
        'http://www.google.com',
        queryParameters: {
          'monParam1': "maValeur1",
        },
      );
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
