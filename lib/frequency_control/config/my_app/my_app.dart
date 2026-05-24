import 'package:flutter/material.dart';
import 'package:frequency_control/frequency_control/config/routes/routes.dart';
import 'package:frequency_control/frequency_control/screens/cadastro_palestrante_screen.dart';

import 'package:frequency_control/frequency_control/screens/inicio_screen.dart';
import 'package:frequency_control/frequency_control/screens/login_screen.dart';
import 'package:frequency_control/frequency_control/screens/principal_teste_screen.dart';
import 'package:frequency_control/frequency_control/screens/cadastro_participante_screen.dart';
import 'package:frequency_control/frequency_control/screens/cadastro_sessao_screen.dart';
import 'package:frequency_control/frequency_control/screens/listagem_participantes_screen.dart';
import 'package:frequency_control/frequency_control/screens/listagem_sessoes_screen.dart';
import 'package:frequency_control/frequency_control/screens/visitante_screen.dart';
import 'package:frequency_control/frequency_control/screens/participantes_das_sessoes_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Frequência',
      debugShowCheckedModeBanner: false,
      initialRoute: Rotas.telaInicial,
      routes: {
        Rotas.telaInicial: (context) => InicioScreen(),
        Rotas.telaLogin: (context) => LoginScreen(),
        Rotas.telaPrincipalTeste: (context) => TelaPrincipalTesteScreen(),
        Rotas.telaCadastroParticipante: (context) =>
            CadastroParticipanteScreen(),
        Rotas.telaCadastroPalestrante: (context) =>
        CadastroPalestranteScreen(),
        Rotas.telaCadastroSessao: (context) => CadastroSessaoScreen(),
        Rotas.telaListagemParticipantes: (context) =>
            ListagemParticipantesScreen(),
        Rotas.telaListagemSessoes: (context) => ListagemSessoesScreen(),
        Rotas.telaVisitante: (context) => VisitanteScreen(),
        // Rotas.telaParticipantesDasSessoes: (context) => ParticipantesDasSessoesScreen(),
      },
    );
  }
}
