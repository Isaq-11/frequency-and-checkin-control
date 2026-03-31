import 'package:flutter/material.dart';
import 'package:frequency_control/frequency_control/config/routes/routes.dart';

class TelaPrincipalTesteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gerenciar Presença em Eventos Acadêmicos',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 7, 32, 77),
      ),
      backgroundColor: const Color.fromARGB(255, 53, 109, 214),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Rotas.telaCadastroParticipante);
              },
              child: Text('Cadastrar Participante'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Rotas.telaCadastroSessao);
              },
              child: Text('Cadastrar Sessão'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Rotas.telaListagemParticipantes);
              },
              child: Text('Listar Participantes'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Rotas.telaListagemSessoes);
              },
              child: Text('Listar Sessões'),
            ),
          ],
        ),
      ),
    );
  }
}
