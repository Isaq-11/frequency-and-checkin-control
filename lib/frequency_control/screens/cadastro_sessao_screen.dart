import 'package:flutter/material.dart';
import 'package:frequency_control/frequency_control/config/routes/routes.dart';
// import 'package:frequency_control/frequency_control/config/routes/routes.dart';

class CadastroSessaoScreen extends StatefulWidget {
  const CadastroSessaoScreen({super.key});

  @override
  State<CadastroSessaoScreen> createState() => _CadastroSessaoScreenState();
}

class _CadastroSessaoScreenState extends State<CadastroSessaoScreen> {
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
                  decoration: InputDecoration(
                    label: Text('Título'),
                    hintText: 'Informe o título da sessão',
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text('Descrição'),
                    hintText: 'Informe a descrição da sessão',
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text('Local'),
                    hintText: 'Informe o local da sessão',
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
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
                          Navigator.pushNamed(
                            context,
                            Rotas.telaListagemSessoes,
                          );
                        },
                        child: Text('Cadastrar'),
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
