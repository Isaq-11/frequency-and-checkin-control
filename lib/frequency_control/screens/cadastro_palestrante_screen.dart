import 'package:flutter/material.dart';
import 'package:frequency_control/frequency_control/config/routes/routes.dart';
import 'package:frequency_control/frequency_control/dao/palestrante_dao.dart';
import 'package:frequency_control/frequency_control/models/dados.dart';
import 'package:frequency_control/frequency_control/models/palestrante.dart';

class CadastroPalestranteScreen extends StatefulWidget {
  const CadastroPalestranteScreen({super.key});

  @override
  State<CadastroPalestranteScreen> createState() =>
      _CadastroPalestranteScreenState();
}

class _CadastroPalestranteScreenState
    extends State<CadastroPalestranteScreen> {
  final nomeController = TextEditingController();
  final formacaoController = TextEditingController();

  final dao = PalestranteDao();

  @override 
  void dispose() {
    nomeController.dispose();
    formacaoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar Palestrante'),
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
                  controller: formacaoController,
                  decoration: InputDecoration(labelText: 'Formação'),
                ),

                SizedBox(height: 15),

                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () async {
                          await dao.insert(
                            Palestrante(
                              nome: nomeController.text,
                              formacao: formacaoController.text,
                            ),
                          );

                          nomeController.clear();
                          formacaoController.clear();

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
                            Rotas.telaListagemPalestrantes,
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

// class CadastroPalestranteScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Cadastrar Palestrante',
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
