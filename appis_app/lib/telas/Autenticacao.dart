import 'package:appis_app/assets/colors/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool queroEntrar = true;
  
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
                  if (queroEntrar) ...[
                    // Formulário de login
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
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Senha:',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ] else ...[
                    // Formulário de registro
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Nome:',
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
                      obscureText: true,
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
                      obscureText: true,
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
                  const SizedBox(height: 64),
                  SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: () {
                        // Adicione sua lógica de login ou registro aqui
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: paletaDeCores.amareloClaro,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        queroEntrar ? 'Entrar' : 'Registrar',
                        style: TextStyle(
                          color: paletaDeCores.preto,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        queroEntrar = !queroEntrar;
                      });
                    },
                    child: Text(queroEntrar ? "Se não tiver uma conta, entre" : "Se tiver uma conta, faça login"),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
