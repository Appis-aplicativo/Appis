import 'package:appis_app/assets/colors.dart';
import 'package:flutter/material.dart';


class CadastrarProducoes extends StatefulWidget {
  const CadastrarProducoes({Key? key});

  @override
  State<CadastrarProducoes> createState() => _CadastrarProducoesState();
}

class _CadastrarProducoesState extends State<CadastrarProducoes> {
  int _selectedIndex = 0; // Índice selecionado inicialmente

  void _onItemTapped(int index) {
    // Adicione sua lógica para lidar com a navegação aqui
    setState(() {
      _selectedIndex = index;
    });
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
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Apelido:',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.preto,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.fundoApp,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const Divider(
                      color: paletaDeCores.cinza,
                      thickness: 2.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Descrição:',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.preto,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.fundoApp,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const Divider(
                      color: paletaDeCores.cinza,
                      thickness: 2.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Localização:',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.preto,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.fundoApp,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const Divider(
                      color: paletaDeCores.cinza,
                      thickness: 2.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Data:',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.preto,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.fundoApp,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const Divider(
                      color: paletaDeCores.cinza,
                      thickness: 2.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Tipo Abelha:',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.preto,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.fundoApp,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const Divider(
                      color: paletaDeCores.cinza,
                      thickness: 2.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Anotações:',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.preto,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.fundoApp,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const Divider(
                      color: paletaDeCores.cinza,
                      thickness: 2.0,
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () {
                          // Adicione sua lógica de salvar aqui
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: paletaDeCores.amareloClaro,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'Salvar',
                          style: TextStyle(
                            color: paletaDeCores.preto,
                            fontSize: 18,
                          ),
                        ),
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
        onTap: _onItemTapped,
      ),
    );
  }
}
