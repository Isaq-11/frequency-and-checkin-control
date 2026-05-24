import 'package:flutter/material.dart';
import 'package:frequency_control/frequency_control/models/dados.dart';
import 'package:frequency_control/frequency_control/models/participante_sessao.dart';
import 'package:frequency_control/frequency_control/models/participante.dart';

class PalestranteSessaoScreen extends StatefulWidget {

  final Participante participante;
  const PalestranteSessaoScreen({
    super.key, 
    required this.participante,
    });

  @override
  State<PalestranteSessaoScreen> createState() => _PalestranteSessaoState();
}

class _PalestranteSessaoState extends State<PalestranteSessaoScreen> {

  List<ParticipanteSessao> get presencaDaSessao {
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