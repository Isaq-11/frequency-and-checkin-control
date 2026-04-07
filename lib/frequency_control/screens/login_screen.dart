import 'package:flutter/material.dart';
import 'package:frequency_control/frequency_control/config/routes/routes.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 7, 32, 77),
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
                    label: Text('Usuário'),
                    hintText: 'Informe seu nome de usuário',
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text('Senha'),
                    hintText: 'Informe sua senha',
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
                            Rotas.telaPrincipalTeste,
                          );
                        },
                        child: Text('Entrar'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      // body: Center(
      //   child: Column(
      //     children: [
      //       Text('Faça Login para Acessar o App!'),
      //       TextFormField(
      //         decoration: InputDecoration(
      //           label: Text('Nome de Usuário'),
      //           hintText: 'Digite seu nome de usuário',
      //         ),
      //       ),
      //       TextFormField(
      //         decoration: InputDecoration(
      //           label: Text('Senha'),
      //           hintText: 'Informe sua senha',
      //         ),
      //       ),
      //       ElevatedButton(
      //         onPressed: () {
      //           print('Login efetuado com sucesso!');
      //           Navigator.pushNamed(context, Rotas.telaPrincipalTeste);
      //         },
      //         child: Text('Entrar'),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
