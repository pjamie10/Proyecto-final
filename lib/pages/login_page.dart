import 'package:flutter/material.dart';
import 'package:mercado_libre/pages/login2_page.dart';

import '../function/loading.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController inputUser = TextEditingController();

  bool existe = true;

  validacion() => inputUser.text == ''
      ? {
          loading(context),
          Future.delayed(const Duration(seconds: 3)).then((value) {
            Navigator.pop(context);
            existe = false;
            setState(() {});
          }),
        }
      : {
          loading(context),
          Future.delayed(const Duration(seconds: 3)).then((value) {
            existe = true;
            setState(() {});
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login2Page()));
          }),
        };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            children: [
              const Text(
                '¡Hola! Para seguir, ingresa tu e-mail o usuario',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
              ),
              const SizedBox(height: 32.0),
              TextField(
                controller: inputUser,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail o usuario'),
              ),
              Text(
                existe ? '' : 'Agrega un usuario o e-mail existente',
                style: const TextStyle(color: Colors.red),
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: validacion,
                  child: const Text('Continuar'),
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Crear cuenta',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}