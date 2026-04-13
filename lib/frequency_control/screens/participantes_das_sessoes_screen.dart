import 'package:flutter/material.dart';
import 'package:frequency_control/frequency_control/models/dados.dart';
import 'package:frequency_control/frequency_control/models/participante.dart';
import 'package:frequency_control/frequency_control/models/presenca.dart';
import 'package:frequency_control/frequency_control/models/sessao.dart';
// import 'package:frequency_control/frequency_control/models/'

class ParticipantesDasSessoesScreen extends StatefulWidget{

  final Sessao sessao;

  const ParticipantesDasSessoesScreen({
    super.key, 
    required this.sessao,
    });

  @override
  State<ParticipantesDasSessoesScreen> createState() => _ParticipantesDasSessoesScreenState();

}

class _ParticipantesDasSessoesScreenState extends State<ParticipantesDasSessoesScreen>{


  List<Presenca> get presencaDaSessao {
      return listaPresencas.where((p) => p.sessaoId == widget.sessao).toList();
    }

  @override
  Widget build(BuildContext context){

    final presencas = presencaDaSessao;

    return Scaffold(
      appBar: AppBar(
        title: Text('Participantes da Sessão'),
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
                  Text('Título: ${widget.sessao.titulo}'),
                  Text('Descrição: ${widget.sessao.descricao}'),
                  Text('Local: ${widget.sessao.local}'),
                  Text('Capacidade: ${widget.sessao.capacidadePublico}'),
                  Text('Inscritos: ${presencas.length}'),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: presencas.length,
              itemBuilder: (context, index){
                final presenca = presencas[index];
                final participante = presenca.participanteId;

                return Card(
                  child: ListTile(
                    title: Text('Nome: ${participante.nome}'),
                  ),
                );
              }
            ),
          ),
         
        ],
      ),
    );
  }
}