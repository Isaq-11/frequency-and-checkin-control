import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Frequência',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Eventos Acadêmicos'),
        ),
        body: Center(
          child: Text('App iniciado com sucesso!'),
        ),
      ),
    );
  }
}