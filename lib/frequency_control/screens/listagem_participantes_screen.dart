import 'package:flutter/material.dart';
import 'package:frequency_control/frequency_control/models/dados.dart';

class ListagemParticipantesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Participantes'),
        backgroundColor: const Color.fromARGB(255, 7, 32, 77),
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color.fromARGB(255, 53, 109, 214),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: listaParticipantes.length,
              itemBuilder: (context, index) {
                final particip = listaParticipantes[index];

                return Card(
                  color: Colors.white,
                  child: ListTile(
                    title: Text(
                      particip.nome,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Curso: ${particip.curso} || Período: ${particip.periodo}°',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
