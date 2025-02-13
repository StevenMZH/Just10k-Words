import 'package:flutter/material.dart';
import 'pages/scrollableWords.dart'; // Asegúrate de tener la ruta correcta

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Agregar el parámetro 'key' en el constructor
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scrollable Words Example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navegar a la página de las palabras deslizables
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScrollableWords()),
            );
          },
          child: Text("Go to Scrollable Words"),
        ),
      ),
    );
  }
}
