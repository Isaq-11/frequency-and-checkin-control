import 'package:flutter/material.dart';
import 'package:frequency_control/frequency_control/screens/cadastro_participante_screen.dart';
import 'package:frequency_control/frequency_control/screens/tela_principal_teste_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Frequência',
      routes:{
        '/': (context) => TelaPrincipalTesteScreen(),
        'cadastro-participante': (context) => CadastroParticipanteScreen(),
      }
    );
  }



  // TELA PRINCIPAL DE TESTE !!!!!
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Controle de Frequência',
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: Text('Eventos Acadêmicos'),
  //       ),
  //       body: Center(
  //         child: Text('App iniciado com sucesso!'),
  //       ),
  //     ),
  //   );
  // }
}
