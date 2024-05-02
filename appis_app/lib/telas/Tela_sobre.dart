import 'package:appis_app/telas/Index_maps.dart';
import 'package:appis_app/telas/Visualizar_perfil.dart';
import 'package:flutter/material.dart';
import 'package:appis_app/assets/colors.dart';
import 'package:appis_app/telas/Autenticacao.dart';
import 'package:appis_app/telas/Cadastrar_Producoes.dart';
import 'package:appis_app/telas/Tela_sobre.dart';
import 'package:appis_app/telas/Visualizar_Producoes.dart';

class SobrePage extends StatefulWidget {
  const SobrePage({Key? key});

  @override
  State<SobrePage> createState() => _SobrePageState();
}

class _SobrePageState extends State<SobrePage> {
  int _selectedIndex = 3; // Índice inicial (Sobre)

  // Lista de rótulos dos ícones
  final List<String> _navBarItemLabels = [
    'Perfil',
    'Mapa',
    'Produções',
    'Sobre',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Direcione para a página correspondente ao índice do botão
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ViewPerfil()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MapaGooglePage()),
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
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context); // Voltar para a página anterior
                    // Atualizar o índice selecionado para o índice correspondente à página anterior
                    setState(() {
                      _selectedIndex = 2; // Altere conforme necessário para a página anterior
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: paletaDeCores.preto,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('lib/assets/images/login_image.png'),
            ),
            const SizedBox(height: 20),
            // Texto
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Aplicativo desenvolvido com o objetivo de '
                'colaborar com o controle, administração e apoio a tomada e '
                'proposição do local de inserção de colônias em apiárias e '
                'meliponários de maneira a permitir aos produtores o '
                'planejamento de suas atividades apícolas e consorciamentos.',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            // Lista de desenvolvedores
            const Text(
              'Desenvolvedores:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Caio Daoud'),
                Text('Tiago Segato'),
                Text('Beatriz Silva'),
                Text('Barbara Beatriz'),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: List.generate(_navBarItemLabels.length, (index) {
          return BottomNavigationBarItem(
            icon: Icon(getIcon(index)), // Ícone
            label: _navBarItemLabels[index], // Rótulo
          );
        }),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black, // Cor do ícone selecionado
        unselectedItemColor: Colors.black,
        showSelectedLabels: true, // Exibir rótulos selecionados
        showUnselectedLabels: true, // Exibir rótulos não selecionados
        onTap: _onItemTapped,
      ),
    );
  }

  // Função auxiliar para obter o ícone com base no índice
  IconData getIcon(int index) {
    switch (index) {
      case 0:
        return Icons.person;
      case 1:
        return Icons.map;
      case 2:
        return Icons.bug_report_outlined;
      case 3:
        return Icons.info;
      default:
        return Icons.info;
    }
  }
}
