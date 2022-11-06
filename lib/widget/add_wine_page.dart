import 'package:flutter/material.dart';
import 'package:multiselect/multiselect.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final nameController = TextEditingController();
  final yearController = TextEditingController();
  List<String> region = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajouter une bouteille'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: const BorderSide(color: Colors.red, width: 1.5)),
                title: Row(
                  children: [
                    const Text('Nom : '),
                    Expanded(
                        child: TextField(
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                      controller: nameController,
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: const BorderSide(color: Colors.red, width: 1.5)),
                title: Row(
                  children: [
                    const Text('Année : '),
                    Expanded(
                        child: TextField(
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                      controller: yearController,
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              DropDownMultiSelect(
                onChanged: (List<String> x) {
                  setState(() {
                    region = x;
                  });
                },
                options: const [
                  'Alsace',
                  'Champagne',
                  'Bordeaux',
                  'Beaujolais',
                  'Jura',
                  'Bourgogne',
                  'Provence-Corse',
                  'Languedoc-Roussillon',
                  'Vallée du Rhône',
                  'Vallée de la Loire',
                  'Lorraine',
                  'Sud-Ouest',
                  'Savoie-Bugey'
                ],
                selectedValues: region,
                whenEmpty: 'Sélectionné une Région',
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50)),
                  onPressed: () {
                    FirebaseFirestore.instance.collection('wines').add({
                      'name': nameController.value.text,
                      'year': yearController.value.text,
                      'region': region,
                      'image':
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/WINE-Logo.svg/1200px-WINE-Logo.svg.png'
                    });
                    Navigator.pop(context);
                  },
                  child: const Text('Ajouter'))
            ],
          )),
    );
  }
}
