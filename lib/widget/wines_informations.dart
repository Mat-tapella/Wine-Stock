import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class WinesInformations extends StatefulWidget {
  const WinesInformations({super.key});

  @override
  State<WinesInformations> createState() => _WinesInformationsState();
}

class _WinesInformationsState extends State<WinesInformations> {
  final Stream<QuerySnapshot> _winesStream =
      FirebaseFirestore.instance.collection('Wines').snapshots();
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
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            return ListTile(
              title: Text(data['name']),
              subtitle: Text(data['year']),
            );
          }).toList(),
        );
      },
    );
  }
}
