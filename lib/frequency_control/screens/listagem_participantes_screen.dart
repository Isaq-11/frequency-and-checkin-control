import 'package:flutter/material.dart';
import 'package:frequency_control/frequency_control/models/dados.dart';
import 'package:frequency_control/frequency_control/config/routes/routes.dart';
import 'package:frequency_control/frequency_control/screens/sessoes_dos_participantes_screen.dart';

class ListagemParticipantesScreen extends StatelessWidget {

  bool modoSelecao;

  ListagemParticipantesScreen({
    super.key,
    this.modoSelecao = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Participantes'),
        backgroundColor: const Color.fromARGB(255, 7, 32, 77),
        foregroundColor: Colors.white,
        actions: [
            ElevatedButton(
              onPressed: () => {
                Navigator.pushNamed(context, Rotas.telaCadastroParticipante),
              },
              child: Text('Cadastrar-me'),
            ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 53, 109, 214),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: listaParticipantes.length,
              itemBuilder: (context, index) {
                final particip = listaParticipantes[index];

                return Card(
                  color: Colors.white,
                  
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                        particip.nome,
                        style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                        'Curso: ${particip.curso} || Período: ${particip.periodo}°',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        onTap: () => {
                          if(modoSelecao) {
                            Navigator.pop(context, particip),
                          }
                        },
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () => {
                              Navigator.push(
                                context, 
                                MaterialPageRoute(
                                  builder: (_) => SessoesDosParticipantesScreen(participante: particip),
                                ),
                              ),
                            },
                            child: Text('Ver Presença em Sessões'),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,), 
                    ], 
                  ),
                 
                );
              },

            ),
          ),
        ],
      ),
    );
  }
}
