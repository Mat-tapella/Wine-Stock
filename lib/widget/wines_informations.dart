import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class WinesInformations extends StatefulWidget {
  const WinesInformations({super.key});

  @override
  State<WinesInformations> createState() => _WinesInformationsState();
}

class _WinesInformationsState extends State<WinesInformations> {
  final Stream<QuerySnapshot> _winesStream =
      FirebaseFirestore.instance.collection('wines').snapshots();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _winesStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Chargement");
        }

        if (snapshot.hasError) {
          return const Text("Quelque chose c'est mal passé");
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> wine =
                document.data()! as Map<String, dynamic>;
            return Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    height: 200,
                    child: Image.network(wine['image']),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          wine['name'],
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const Text('Année de cépage'),
                        Text(wine['year'].toString()),
                        Row(children: [
                          for (final region in wine['region'])
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Chip(
                                backgroundColor:
                                    Color.fromARGB(255, 219, 94, 85),
                                label: Text(region),
                              ),
                            ),
                        ])
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
