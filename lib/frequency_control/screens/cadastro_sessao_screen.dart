import 'package:flutter/material.dart';
import 'package:frequency_control/frequency_control/config/routes/routes.dart';
import 'package:frequency_control/frequency_control/models/dados.dart';
import 'package:frequency_control/frequency_control/models/sessao.dart';

class CadastroSessaoScreen extends StatefulWidget {
  const CadastroSessaoScreen({super.key});

  @override
  State<CadastroSessaoScreen> createState() => _CadastroSessaoScreenState();
}

class _CadastroSessaoScreenState extends State<CadastroSessaoScreen> {

  final tituloController = TextEditingController();
  final descricaoController = TextEditingController();
  final localController = TextEditingController();
  final capacidadeController = TextEditingController();

  @override
  void dispose() {
    tituloController.dispose();
    descricaoController.dispose();
    localController.dispose();
    capacidadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar Sessão'),
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
                  controller: tituloController,
                  decoration: InputDecoration(
                    label: Text('Título'),
                    hintText: 'Informe o título da sessão',
                  ),
                ),
                SizedBox(height: 10),

                TextFormField(
                  controller: descricaoController,
                  decoration: InputDecoration(
                    label: Text('Descrição'),
                    hintText: 'Informe a descrição da sessão',
                  ),
                ),
                SizedBox(height: 10),

                TextFormField(
                  controller: localController,
                  decoration: InputDecoration(
                    label: Text('Local'),
                    hintText: 'Informe o local da sessão',
                  ),
                ),
                SizedBox(height: 10),

                TextFormField(
                  controller: capacidadeController,
                  decoration: InputDecoration(
                    label: Text('Capacidade máxima de público'),
                    hintText: 'Capacidade máxima de pessoas',
                  ),
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {

                          listaSessoes.add(
                            Sessao(
                              titulo: tituloController.text,
                              descricao: descricaoController.text,
                              local: localController.text,
                              capacidadePublico: int.tryParse(capacidadeController.text) ?? 0, 
                              horaInicio: DateTime.now(),
                              horaTermino: DateTime.now(),
                              ),
                          );
                        
                          tituloController.clear();
                          descricaoController.clear();
                          localController.clear();
                          capacidadeController.clear();
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
                            Rotas.telaListagemSessoes,
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

      // body: Container(
      //   height: 300,
      //   child: Card(
      //     child: Center(
      //       child: Column(
      //         mainAxisSize: MainAxisSize.min,
      //         children: [
      //           TextFormField(
      //             decoration: InputDecoration(
      //               label: Text('Título'),
      //               hintText: 'Informe o título da sessão',
      //             ),
      //           ),
      //           TextFormField(
      //             decoration: InputDecoration(
      //               label: Text('Descrição'),
      //               hintText: 'Informe uma descrição para a sessão',
      //             ),
      //           ),
      //           TextFormField(
      //             decoration: InputDecoration(
      //               label: Text('Local'),
      //               hintText: 'Informe o local da sessão',
      //             ),
      //           ),
      //           TextFormField(
      //             decoration: InputDecoration(
      //               label: Text('Capacidade máxima de público'),
      //               hintText:
      //                   'Informe a capacidade máxima de pessoas da sessão',
      //             ),
      //           ),
      //           Row(children: [

      //             ],
      //           ),
      //           SizedBox(height: 20),
      //           ElevatedButton(
      //             onPressed: () {
      //               print('Sessão cadastrada com sucesso!');
      //             },
      //             child: Text('Cadastrar Sessão'),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
