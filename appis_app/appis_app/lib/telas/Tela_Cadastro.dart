// ignore_for_file: file_names

import 'package:appis_app/assets/colors/colors.dart';
import 'package:flutter/material.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  paletaDeCores.fundoApp,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 16),
        child: Column(
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
              alignment: Alignment.center,
              child: const Text(
                'Entre com seus dados para se registrar.',
                style: TextStyle(
                  color: paletaDeCores.preto,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Nome:  ',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'CPF:',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'E-mail:',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Senha:',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Confirmar Senha:',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  // Adicione sua lógica de criação de conta aqui
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: paletaDeCores.amareloClaro,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Confirmar',
                  style: TextStyle(
                    color: paletaDeCores.preto,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  // Adicione sua lógica para cancelar aqui
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: paletaDeCores.fundoApp,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(
                      color: paletaDeCores.preto,
                    ),
                  ),
                ),
                child: const Text(
                  'Cancelar',
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
    );
  }
}
