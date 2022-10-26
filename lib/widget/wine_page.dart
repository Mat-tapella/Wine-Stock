import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:winestock/widget/getx/getx_bindings.dart';
import 'package:winestock/widget/getx/getx_view.dart';

class WinePage extends StatelessWidget {
  const WinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: "/WinePage",
          page: () => const GetxWineView(),
          binding: GetxWineBindings(),
        ),
      ],
      initialRoute: "exo4",
      home: const GetxWineView(),
    );
  }
}
