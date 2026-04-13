import 'package:flutter/material.dart';
import 'package:frequency_control/frequency_control/models/dados.dart';
import 'package:frequency_control/frequency_control/models/presenca.dart';
import 'package:frequency_control/frequency_control/models/participante.dart';

class SessoesDosParticipantesScreen extends StatefulWidget {

  final Participante participante;
  const SessoesDosParticipantesScreen({
    super.key, 
    required this.participante,
    });

  @override
  State<SessoesDosParticipantesScreen> createState() => _SessoesDosParticipantesState();
}

class _SessoesDosParticipantesState extends State<SessoesDosParticipantesScreen> {

  List<Presenca> get presencaDaSessao {
    return listaPresencas.where((p) => p.participanteId == widget.participante).toList();
  }

  @override
  Widget build(BuildContext context) {

    final sessoes = presencaDaSessao;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sessões deste Participante'),
        backgroundColor: const Color.fromARGB(255, 7, 32, 77),
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color.fromARGB(255, 53, 109, 214),
      body: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Nome: ${widget.participante.nome}'),
                  Text('RA: ${widget.participante.ra}'),
                  Text('Curso: ${widget.participante.curso}'),
                  Text('Período: ${widget.participante.periodo}'),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: sessoes.length,
              itemBuilder: (context, index){
                final presenca = sessoes[index];
                final sessao = presenca.sessaoId;

                return Card(
                  child: ListTile(
                    title: Text('Título: ${sessao.titulo}'),
                  ),
                );
              }
            ),
          ),
          SizedBox(height: 10,), 
        ],
      ),
    );
  }
}