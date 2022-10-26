import 'package:flutter/material.dart';

class WinePage extends StatelessWidget {
  const WinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(20, (index) {
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
