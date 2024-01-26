import 'package:flutter/material.dart';
import 'package:ts_datenbanken/aufgabe2function.dart';

import 'aufgabe2classjson.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  late TextEditingController nameController;
  List<User> people = [];

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              style: const TextStyle(color: Color.fromARGB(255, 93, 6, 207)),
            ),
            ElevatedButton(
                onPressed: () async {
                  await writeJasonToSharedPreferences(
                      [User(nameController.text)]);

                  //nameController.text = "";
                  setState(() {});
                },
                child: const Text("Daten wiedergeben")),
            /* ElevatedButton(
                onPressed: () async {
                  //people = await ....
                  for (User user in people) {
                    Text(user.name);
                  }
                  setState(() {});
                },
                child: const Text("Load All Data")),*/
            Text(
              nameController.text == "" ? "" : nameController.text,
              style: const TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
