import 'package:flutter/material.dart';
import 'package:frequency_control/frequency_control/config/routes/routes.dart';

class InicioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem-Vindo!!', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 7, 32, 77),
      ),
      backgroundColor: const Color.fromARGB(255, 53, 109, 214),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, Rotas.telaPrincipalTeste);
          },
          child: Text('Iniciar'),
        ),
      ),
    );
  }
}
