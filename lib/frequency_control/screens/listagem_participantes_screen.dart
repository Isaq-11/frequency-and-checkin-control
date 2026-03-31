import 'package:flutter/material.dart';

class ListagemParticipantesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lista de Participantes',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 7, 32, 77),
      ),
    );
  }
}
