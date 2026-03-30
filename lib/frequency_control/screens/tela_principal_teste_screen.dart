import 'package:flutter/material.dart';

class TelaPrincipalTesteScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerenciar Presença em Eventos Acadêmicos'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, 'cadastro-participante');
          },
          child: Text('Cadastrar Participante'),
        )
      )
    );
  }
}
