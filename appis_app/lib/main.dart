<<<<<<< HEAD
import 'package:appis_app/telas/Tela_Login.dart';
=======
import 'package:appis_app/telas/Visualizar_Producoes.dart';
>>>>>>> efc64ef93582fcae90237e75fed803396ca4f034;
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
<<<<<<< HEAD
      home:  const LoginPage(),
=======
      home:  VisualizarProducoes(),
>>>>>>> efc64ef93582fcae90237e75fed803396ca4f034
    );
  }
}


