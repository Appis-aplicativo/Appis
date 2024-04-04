// ignore_for_file: file_names

import 'package:appis_app/assets/colors/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: paletaDeCores.fundoApp,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 200,
            width: 240,
            margin: const EdgeInsets.only(top: 50),
            child: Image.asset('lib/assets/images/logo.png'),
            // a imagem não ta apareceendo, não sei o porque
          ),
          const Text(
            'Entre com seu login e senha ou faça seu registro',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email:',
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
                  const SizedBox(height: 64),
                  SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: () {
                        // Adicione sua lógica de login aqui
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: paletaDeCores.amareloClaro,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Entrar',
                        style: TextStyle(
                          color: paletaDeCores.preto,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: () {
                        // Adicione sua lógica de registro aqui
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: paletaDeCores.amareloClaro,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Registrar',
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
    );
  }
}
