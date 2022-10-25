import 'package:get/get.dart';
import 'package:winestock/data/repository/wine_repository.dart';

class GetxWineController extends GetxController with StateMixin {
  WineRepository wineRepository;

  GetxWineController({required this.wineRepository});

  @override
  void onReady() async {
    await wineRepository.getAllWine();
    super.onInit();
  }
}
