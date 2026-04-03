import 'package:flutter/material.dart';

class CadastroSessaoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cadastrar Sessão',
        ),
        backgroundColor: const Color.fromARGB(255, 7, 32, 77),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                label: Text('Título'),
                hintText: 'Informe o título da sessão',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text('Descrição'),
                hintText: 'Informe uma descrição para a sessão',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text('Local'),
                hintText: 'Informe o local da sessão',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text('Capacidade máxima de público'),
                hintText: 'Informe a capacidade máxima de pessoas da sessão',
              ),
            ),
            Row(
              children: [
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
