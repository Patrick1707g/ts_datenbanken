import 'package:flutter/material.dart';
import 'package:ts_datenbanken/aufgabe2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        /* home: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Datenbanken'),
          /*  ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Information()),
                  );
                },
                child: const Text('Zur Aufgabe2')),*/*/
        initialRoute: "/",
        routes: {
          "/": (context) => const Information(),
          //  "/simple_saving": (context) => SimpleSaving(),
          // "/crud_operations": (context) => const CrudOperations(),

          //],
        });
  }
}
