import 'package:flutter/material.dart';
import 'package:frequency_control/frequency_control/config/routes/routes.dart';

import 'package:frequency_control/frequency_control/screens/tela_principal_teste_screen.dart';
import 'package:frequency_control/frequency_control/screens/cadastro_participante_screen.dart';
import 'package:frequency_control/frequency_control/screens/cadastro_sessao_screen.dart';
import 'package:frequency_control/frequency_control/screens/listagem_participantes_screen.dart';
import 'package:frequency_control/frequency_control/screens/listagem_sessoes_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Frequência',
      routes: {
        Rotas.telaPrincipalTeste: (context) => TelaPrincipalTesteScreen(),
        Rotas.telaCadastroParticipante: (context) =>
            CadastroParticipanteScreen(),
        Rotas.telaCadastroSessao: (context) => CadastroSessaoScreen(),
        Rotas.telaListagemParticipantes: (context) =>
            ListagemParticipantesScreen(),
        Rotas.telaListagemSessoes: (context) => ListagemSessoesScreen(),
      },
    );
  }
}
