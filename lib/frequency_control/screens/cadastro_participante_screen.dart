import 'package:flutter/material.dart';
import 'package:frequency_control/frequency_control/config/routes/routes.dart';
import 'package:frequency_control/frequency_control/models/dados.dart';
import 'package:frequency_control/frequency_control/models/participante.dart';

class CadastroParticipanteScreen extends StatefulWidget {
  const CadastroParticipanteScreen({super.key});

  @override
  State<CadastroParticipanteScreen> createState() =>
      _CadastroParticipanteScreenState();
}

class _CadastroParticipanteScreenState
    extends State<CadastroParticipanteScreen> {
  final nomeController = TextEditingController();
  final raController = TextEditingController();

  String? cursoSelecionado;
  int? periodoSelecionado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar Participante'),
        backgroundColor: const Color.fromARGB(255, 7, 32, 77),
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color.fromARGB(255, 53, 109, 214),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: nomeController,
                  decoration: InputDecoration(labelText: 'Nome'),
                ),
                SizedBox(height: 10),

                TextFormField(
                  controller: raController,
                  decoration: InputDecoration(labelText: 'RA'),
                ),
                SizedBox(height: 10),

                DropdownButtonFormField<String>(
                  value: cursoSelecionado,
                  decoration: InputDecoration(label: Text('Curso')),
                  items:
                      [
                        'Eletromecânica',
                        'Engenharia de Software',
                        'Engenharia Elétrica',
                        'Licenciatura em Química',
                      ].map((curso) {
                        return DropdownMenuItem(
                          value: curso,
                          child: Text(curso),
                        );
                      }).toList(),
                  onChanged: (value) {
                    setState(() {
                      cursoSelecionado = value;
                    });
                  },
                ),
                SizedBox(height: 10),

                DropdownButtonFormField<int>(
                  value: periodoSelecionado,
                  decoration: InputDecoration(label: Text('Período')),
                  items: [1, 2, 3, 4, 5].map((periodo) {
                    return DropdownMenuItem(
                      value: periodo,
                      child: Text('${periodo}°'),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      periodoSelecionado = value;
                    });
                  },
                ),
                SizedBox(height: 15),

                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          listaParticipantes.add(
                            Participante(
                              nome: nomeController.text,
                              ra: raController.text,
                              curso: cursoSelecionado!,
                              periodo: periodoSelecionado!,
                            ),
                          );

                          nomeController.clear();
                          raController.clear();

                          setState(() {
                            cursoSelecionado = null;
                            periodoSelecionado = null;
                          });
                        },
                        child: Text('Cadastrar'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            Rotas.telaListagemParticipantes,
                          );
                        },
                        child: Text('Listar'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class CadastroParticipanteScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Cadastrar Participante',
//         ),
//         backgroundColor: const Color.fromARGB(255, 7, 32, 77),
//         foregroundColor: Colors.white,
//       ),
//       body: Card(
//         child: Center(
//           child: Column(
//             children: [
//               TextFormField(
//                 decoration: InputDecoration(
//                   label: Text('Nome: '),
//                   hintText: 'Digite seu nome'
//                 ),
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                   label: Text('Curso: '),
//                   hintText: 'Digite seu curso',
//                 ),
//               ),
//               Text
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }
