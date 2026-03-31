import 'package:flutter/material.dart';
import 'package:frequency_control/frequency_control/main.dart';

class ListagemSessoesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Sessões', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 7, 32, 77),
      ),
    );
  }
}
