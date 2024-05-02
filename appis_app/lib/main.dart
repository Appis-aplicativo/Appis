import 'package:appis_app/telas/Autenticacao.dart';
import 'package:appis_app/telas/Cadastrar_Producoes.dart';
import 'package:appis_app/telas/Index_maps.dart';
import 'package:appis_app/telas/Tela_sobre.dart';
import 'package:appis_app/telas/Visualizar_Producoes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:go_router/go_router.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}


// final GoRouter _router = GoRouter(routes: <RouteBase>[
//   GoRoute(
//       path: '/autenticacao',
//       builder: (BuildContext context, GoRouterState state) {
//         return const LoginPage();
//       }),
//   GoRoute(
//       path: '/cadastrarProducoes',
//       builder: (BuildContext context, GoRouterState state) {
//         return const CadastrarProducoes();
//       }),
//     GoRoute(
//       path: '/visualizarProducoes',
//       builder: (BuildContext context, GoRouterState state) {
//         return  VisualizarProducoes();
//       }),
//          GoRoute(
//       path: '/paginaSobre',
//       builder: (BuildContext context, GoRouterState state) {
//         return  const SobrePage();
//       })
      
// ]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const  MapaGooglePage(),
    );
  }  
}


