import 'package:flutter/material.dart';
import 'package:frequency_control/frequency_control/config/routes/routes.dart';


class VisitanteScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Modo visitante'),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 7, 32, 77),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Rotas.telaLogin);
            },
            child: Text('Fazer Login'),
          )
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 53, 109, 214),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Rotas.telaListagemSessoes);
              },
              child: Text('Listar Sessões'),
            )
          ],
        ),
      )

    );
  }

}