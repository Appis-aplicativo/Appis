import 'package:appis_app/telas/Index_maps.dart';
import 'package:appis_app/telas/Tela_sobre.dart';
import 'package:appis_app/telas/Visualizar_perfil.dart';
import 'package:flutter/material.dart';
import 'package:appis_app/assets/colors/colors.dart';
import 'package:appis_app/models/anotacoes_modelo.dart';
import 'package:appis_app/models/cadastroApiarios.dart';

class VisualizarProducoes extends StatelessWidget {
  VisualizarProducoes({Key? key});

  final ApiariosModelo apiarioModelo = ApiariosModelo(
      id: "AP001",
      apelido: "Apiário Fazenda X",
      descricao: "Apiário teste",
      localizacao: "Rajadinha",
      dateStart: "21/03/204",
      dateFinish: "21/03/2025",
      tipoAbelha: "Abelha Europa",
      qtdColmeias: "5");

  final List<anotacoesModelo> listaAnotacoes = [
    anotacoesModelo(
        id: "001", anotacoes: "abelha rainha fugiu", data: "09/03/2024"),
    anotacoesModelo(
        id: "002", anotacoes: "abelha rainha voltou", data: "09/04/2024")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: paletaDeCores.fundoApp,
      appBar: AppBar(title: const Text("Minhas produções")),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: FloatingActionButton.extended(
          backgroundColor: paletaDeCores.amareloClaro,
          onPressed: () {
            print("Foi clicado");
          },
          label: const Text("Nova Produção"),
          icon: const Icon(Icons.edit),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Container(
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: paletaDeCores.fundoApp,
              border: Border.all(
                color: Colors.black,
                width: 1.0,
              ),
            ),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Pesquisar',
                      contentPadding: EdgeInsets.all(8.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    // lógica da pesquisa
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(
                8.0), // Adicionando um espaçamento interno de 8.0
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "nome apiário",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(apiarioModelo.apelido),
                const Text(
                  "anotações",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(listaAnotacoes.length, (index) {
                    anotacoesModelo anotacoesagora = listaAnotacoes[index];
                    return ListTile(
                      title: Text(anotacoesagora.anotacoes),
                      subtitle: Text(anotacoesagora.data),
                    );  
                  }),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: paletaDeCores.amareloEscuro,
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
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        currentIndex: 2, // Índice 2 selecionado (Produções)
        onTap: (int index) {
          // Adicione sua lógica de navegação aqui
          switch (index) {
            case 0:
              Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ViewPerfil()),
        );
              break;
            case 1:
             Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MapaGooglePage()),
        );
              break;
            case 2:
              // Já está na página de produções, não é necessário navegar novamente
              break;
            case 3:
             Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SobrePage()),
        );
              break;
          }
        },
      ),
    );
  }
}
