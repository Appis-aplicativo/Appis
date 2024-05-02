import 'package:appis_app/assets/colors/colors.dart';
import 'package:appis_app/telas/Tela_sobre.dart';
import 'package:appis_app/telas/Visualizar_Producoes.dart';
import 'package:appis_app/telas/Visualizar_perfil.dart';
import 'package:flutter/material.dart';


class MapaGooglePage extends StatefulWidget {
  const MapaGooglePage({Key? key});

  @override
  _MapaGooglePageState createState() => _MapaGooglePageState();
}

class _MapaGooglePageState extends State<MapaGooglePage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    if (index == _selectedIndex) return;

    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ViewPerfil()),
        );
        break;
      case 1:
        // Nada acontece ao selecionar a própria página
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
      appBar: AppBar(
        title: const Text('Minhas produções'),
      ),
      backgroundColor: paletaDeCores.fundoApp,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Hello World',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
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
            icon: Icon(Icons.bug_report_outlined),
            label: 'Produções',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Sobre',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: paletaDeCores.preto,
        unselectedItemColor: paletaDeCores.preto,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        backgroundColor: paletaDeCores.fundoApp,
      ),
    );
  }
}
