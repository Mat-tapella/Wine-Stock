import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winestock/widget/gtex/gtex_wine_controller.dart';

class GetxWineView extends GetView<GetxWineController> {
  const GetxWineView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx((state) => const Center(
            child: Text("page chargée"),
          )),
    );
  }
}
