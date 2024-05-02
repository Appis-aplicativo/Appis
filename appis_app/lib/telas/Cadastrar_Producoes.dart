import 'package:appis_app/assets/colors.dart';
import 'package:flutter/material.dart';

// Importe suas páginas aqui
import 'package:appis_app/telas/Autenticacao.dart';
import 'package:appis_app/telas/Cadastrar_Producoes.dart';
import 'package:appis_app/telas/Tela_sobre.dart';
import 'package:appis_app/telas/Visualizar_Producoes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Inicialize o Firebase ou outras dependências aqui, se necessário
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const CadastrarProducoes(),
    );
  }
}

class CadastrarProducoes extends StatefulWidget {
  const CadastrarProducoes({Key? key});

  @override
  State<CadastrarProducoes> createState() => _CadastrarProducoesState();
}

class _CadastrarProducoesState extends State<CadastrarProducoes> {
  int _selectedIndex = 0; // Índice selecionado inicialmente

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Direcione para a página correspondente ao índice do botão
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => VisualizarProducoes()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SobrePage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: paletaDeCores.fundoApp,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 40,
          top: 32,
          right: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    // Adicione sua lógica para voltar à página anterior aqui
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: paletaDeCores.preto,
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: const Text(
                'Entre com as informações sobre sua produção.',
                style: TextStyle(
                  color: paletaDeCores.preto,
                ),
              ),
            ),
            // Resto do conteúdo da página aqui
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Mapa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bug_report_outlined), // Ícone de produções
            label: 'Produções',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Sobre',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
