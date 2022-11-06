import 'package:flutter/material.dart';
import 'package:winestock/widget/add_wine_page.dart';
import 'package:winestock/widget/wines_informations.dart';
import 'package:winestock/widget/add_wine_page.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wine Stock'),
        leading: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) {
                return const AddPage();
              },
              fullscreenDialog: true,
            ));
          },
        ),
      ),
      body: const WinesInformations(),
    );
  }
}
