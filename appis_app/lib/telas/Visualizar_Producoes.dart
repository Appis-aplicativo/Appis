import 'package:appis_app/models/cadastroApiarios.dart';
import 'package:flutter/material.dart';

class VisualizarProducoes extends StatelessWidget {
   VisualizarProducoes({super.key});

  final ApiariosModelo apiarioModelo = ApiariosModelo(
      id: "AP001",
      apelido: "Apiário Fazenda X",
      descricao: "Apiário teste",
      localizacao: "Rajadinha",
      dateStart: "21/03/204",
      dateFinish: "21/03/2025",
      tipoAbelha: "Abelha Europa",
      qtdColmeias: "5",
      anotacoes: "Teste ");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Minhas produções")),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 16.0), // Espaçamento opcional
        child: FloatingActionButton.extended(
          onPressed: () {
            print("Foi clicado");
          },
          label: const Text("Nova Produção"),
          icon: const Icon(Icons.edit),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Pesquisar',
                      contentPadding: EdgeInsets.all(8.0),
                      border: OutlineInputBorder(),
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
        ],
      ),
    );
  }
}
