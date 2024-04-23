// ignore: file_names, depend_on_referenced_packages
import 'package:appis_app/assets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:appis_app/service/autenticacao.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool queroEntrar = true;
  final _formKey = GlobalKey<FormState>(); // Chave global para o formulário

  final TextEditingController senhaController = TextEditingController();
  final TextEditingController confirmarSenhaController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();
  final TextEditingController nomeController = TextEditingController();

  AutenticacaoServico _autenServico = AutenticacaoServico();
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
            key: _formKey, // Atribuir a chave global ao formulário
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              child: Column(
                children: [
                  if (queroEntrar) ...[
                    // Formulário de login
                    TextFormField(
                      controller:
                          emailController, // Adicionado o controlador para o email
                      decoration: InputDecoration(
                        labelText: 'Email:',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, insira seu email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      controller:
                          senhaController, // Adicionado o controlador para a senha
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Senha:',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, insira sua senha';
                        }
                        return null;
                      },
                    ),
                  ] else ...[
                    // Formulário de registro
                    TextFormField(
                      controller:
                          emailController, // Adicionado o controlador para o email
                      decoration: InputDecoration(
                        labelText: 'Email:',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, insira seu email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      controller:
                          cpfController, // Adicionado o controlador para o CPF
                      decoration: InputDecoration(
                        labelText: 'CPF:',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, insira seu CPF';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      controller:
                          nomeController, // Adicionado o controlador para o nome
                      decoration: InputDecoration(
                        labelText: 'Nome:',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, insira seu nome';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      controller:
                          senhaController, // Adicionado o controlador para a senha
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Senha:',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, insira sua senha';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      controller:
                          confirmarSenhaController, // Adicionado o controlador para confirmar senha
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Confirmar Senha:',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, confirme sua senha';
                        }
                        if (value != senhaController.text) {
                          return 'As senhas não coincidem';
                        }
                        return null;
                      },
                    ),
                  ],
                  const SizedBox(height: 64),
                  SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: () {
                        String nome = nomeController.text;
                        String email = emailController.text;
                        String senha = senhaController.text;

                        if (_formKey.currentState!.validate()) {
                          if (queroEntrar) {
                            // Se o usuário está tentando entrar
                            print('Entrada com sucesso');
                            // Limpar os campos de entrada
                            emailController.clear();
                            senhaController.clear();
                          } else {
                            // Se o usuário está tentando registrar
                            print('Cadastro com sucesso');
                            _autenServico.cadastrarUsario(nome: nome, senha: senha, email: email);
                            // Limpar os campos de entrada
                            emailController.clear();
                            cpfController.clear();
                            nomeController.clear();
                            senhaController.clear();
                            confirmarSenhaController.clear();
                          }
                        } else {
                          // Exibir mensagem de erro se não todos os campos forem preenchidos
                          print('Por favor, preencha todos os campos');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: paletaDeCores.amareloClaro,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        queroEntrar ? 'Entrar' : 'Registrar',
                        style: const TextStyle(
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
                    child: Text(
                      queroEntrar
                          ? "Se não tiver uma conta, entre"
                          : "Se tiver uma conta, faça login",
                    ),
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

