import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:winestock/widget/getx/getx_bindings.dart';
import 'package:winestock/widget/getx/getx_view.dart';

class WinePage extends StatelessWidget {
  const WinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(100, (index) {
        return Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
              side: const BorderSide(
                color: Colors.red,
                width: 2.0,
              ),
            ),
            child: SizedBox(
              width: 200,
              height: 200,
              child: Center(
                  child: Text(
                'Wine $index',
              )),
            ),
          ),
        );
      }),
    );
  }
}
