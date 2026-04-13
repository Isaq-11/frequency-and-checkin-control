import 'package:flutter/material.dart';
import 'package:frequency_control/frequency_control/models/dados.dart';
import 'package:frequency_control/frequency_control/config/routes/routes.dart';
import 'package:frequency_control/frequency_control/models/presenca.dart';
import 'package:frequency_control/frequency_control/screens/listagem_participantes_screen.dart';
import 'package:frequency_control/frequency_control/screens/participantes_das_sessoes_screen.dart';

class ListagemSessoesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lista de Sessões',
        ),
        backgroundColor: const Color.fromARGB(255, 7, 32, 77),
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color.fromARGB(255, 53, 109, 214),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: listaSessoes.length,
              itemBuilder: (context, index) {
                final sessao = listaSessoes[index];

                return Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          '${sessao.titulo}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          'Descrição: ${sessao.descricao} \nLocal: ${sessao.local} \nCapacidade: ${sessao.capacidadePublico} pessoas \nAssentos disponíveis: ... \nInício: ${sessao.horaInicio} \nTérmino: ${sessao.horaTermino}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed:  () async {
                              final participante = await Navigator.push(
                                context, 
                                MaterialPageRoute(
                                  builder: (_) => ListagemParticipantesScreen(modoSelecao: true),
                                  ),
                                );

                                if(participante == null) return;

                                final presenca = Presenca(
                                  participanteId: participante,
                                  sessaoId: sessao,
                                );

                                listaPresencas.add(presenca);
                                print("inscrição efeutada");
                            },
                            child: Text('Inscrever-me'),
                          ),

                        

                          ElevatedButton(
                            onPressed: () => {
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) =>
                                    ParticipantesDasSessoesScreen(sessao: sessao),
                              ),
                            ),
                          },
                          child: Text('Ver participantes'),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                    ],
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
// ElevatedButton(
//   onPressed: () async {
//     final participante = await Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (_) => ListagemParticipantesScreen(
//           modoSelecao: true,
//         ),
//       ),
//     );

//     if (participante == null) return;

//     final presenca = Presenca(
//       participante: participante,
//       sessao: sessao,
//       dataHora: DateTime.now(),
//     );

//     Dados.listaPresencas.add(presenca);

//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text('Inscrição realizada com sucesso!'),
//         backgroundColor: Colors.green,
//       ),
//     );
//   },
//   child: Text('Inscrever-me'),
// )