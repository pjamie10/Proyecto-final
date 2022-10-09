import 'package:flutter/material.dart';
import 'package:mercado_libre/pages/home_page.dart';

import '../function/loading.dart';

class Login2Page extends StatefulWidget {
  Login2Page({super.key});

  @override
  State<Login2Page> createState() => _Login2PageState();
}

class _Login2PageState extends State<Login2Page> {
  TextEditingController inputPass = TextEditingController();

  bool existePass = true;
  bool obscureText = true;

  void mostrarText() {
    obscureText = !obscureText;
    setState(() {});
  }

  validacion() => inputPass.text == ''
      ? {
          loading(context),
          Future.delayed(const Duration(seconds: 3)).then((value) {
            Navigator.pop(context);
            existePass = false;
            print('incorrecto;');
            setState(() {});
          }),
        }
      : {
          loading(context),
          Future.delayed(const Duration(seconds: 3)).then((value) {
            existePass = true;
            setState(() {});
            Navigator.pop(context);
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
                (route) => false);
          }),
        };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                'Ahora tu clave de Mercado Libre',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
              ),
              const SizedBox(height: 32.0),
              TextField(
                controller: inputPass,
                obscureText: obscureText,
                decoration: InputDecoration(
                    suffix: InkWell(
                      borderRadius: BorderRadius.circular(8.0),
                      onTap: mostrarText,
                      child: const Text('Mostrar',
                          style: TextStyle(color: Colors.blue)),
                    ),
                    border: const OutlineInputBorder(),
                    labelText: 'Contraseña'),
              ),
              Text(
                existePass ? '' : 'Contraseña incorrecta',
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
            ],
          ),
        ),
      ),
    );
  }
}
