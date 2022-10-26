import 'package:get/get.dart';
import 'package:winestock/widget/getx/gtex_wine_controller.dart';

class GetxWineBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetxWineController());
  }
}
