import 'package:appis_app/assets/colors/colors.dart';
import 'package:appis_app/telas/Editar_Perfil.dart';
import 'package:appis_app/telas/Index_maps.dart';
import 'package:appis_app/telas/Tela_sobre.dart';
import 'package:appis_app/telas/Visualizar_Producoes.dart';
import 'package:flutter/material.dart';

class ViewPerfil extends StatefulWidget {
  const ViewPerfil({Key? key}) : super(key: key);

  @override
  State<ViewPerfil> createState() => _ViewPerfilState();
}

class _ViewPerfilState extends State<ViewPerfil> {
  int _selectedIndex = 0; // Índice inicial (Perfil)

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Direcionar para a página correspondente ao índice do botão
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              width: 341,
              height: 392,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nome',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Nome no Produtor',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'CPF',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '123.456.789-00',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'E-mail',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'teste@gmail.com',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Senha',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '****',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
  width: double.maxFinite,
  child: ElevatedButton(
    onPressed: () {
      // Chamar a classe EditPerfil() diretamente
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => EditPerfil()),
      );
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.amber,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 8),
        Text(
          'Editar',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ],
    ),
  ),
),

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
        showUnselectedLabels: true, // Mostrar rótulos não selecionados
        onTap: _onItemTapped,
        selectedFontSize: 14, // Tamanho da fonte do rótulo selecionado
        unselectedFontSize: 12, // Tamanho da fonte do rótulo não selecionado
        // Estilo personalizado para o item selecionado
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        // Cor do ícone selecionado
        selectedIconTheme: IconThemeData(color: paletaDeCores.preto, size: 32),
        // Cor de fundo do item selecionado
        backgroundColor: Colors.black,
      ),
    );
  }
}




