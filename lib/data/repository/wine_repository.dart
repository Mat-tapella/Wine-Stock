import 'package:dio/dio.dart';
import '../model/wine.dart';

class WineRepository {
  WineRepository();

  Future<List<Wine>> getAllWine() async {
    try {
      var response = await Dio().get(
        'https://portal.winedata.io/api/wines?language=en&per-page=10&page=1',
      );
      List<Wine> wineList =
          response.data.map<Wine>((wine) => Wine.fromJson(wine)).toList();
      return wineList;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
