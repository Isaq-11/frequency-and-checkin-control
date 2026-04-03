import 'package:flutter/material.dart';


class CadastroParticipanteScreen extends StatefulWidget{
  @override
  _CadastroParticipanteScreenState createState() =>_CadastroParticipanteScreenState();
}

class _CadastroParticipanteScreenState extends State<CadastroParticipanteScreen>{
  String? cursoSelecionado;
  int? periodoSelecionado;


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cadastrar Participante',
        ),
        backgroundColor: const Color.fromARGB(255, 7, 32, 77),
        foregroundColor: Colors.white,
      ),
      body: Card(
        child: Center(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Nome: '),
                  hintText: 'Digite seu nome'
                ),
              ),
              DropdownButtonFormField<String>( 
                value: cursoSelecionado,
                decoration: InputDecoration(
                  label: Text('Curso'), 
                  hintText: 'Escolha seu curso',
                ),
                items: [
                  'Eletromecânica',
                  'Engenharia de Software',
                  'Engenharia Elétrica',
                  'Licenciatura em Química',
                ].map((curso) => DropdownMenuItem( 
                  value: curso,
                  child: Text(curso),
                    )
                  ).toList(),
                onChanged: (value){
                  setState(() {
                    cursoSelecionado = value;
                  });
                },
              ),
              DropdownButtonFormField<int>(
                value: periodoSelecionado,
                decoration: InputDecoration(
                  label: Text('Período: '),
                  hintText: 'Escolha o período'
                ),
                items: [
                  1, 2, 3, 4, 5,
                ].map((periodo) => DropdownMenuItem(
                  value: periodo,
                  child: Text('${periodo}°'),
                  )
                ).toList(),
                onChanged: (value) {
                  setState(() {
                    periodoSelecionado = value;
                  });
                },
              )
            ],
          ),
        )
      )
    );
  }

}

// class CadastroParticipanteScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Cadastrar Participante',
//         ),
//         backgroundColor: const Color.fromARGB(255, 7, 32, 77),
//         foregroundColor: Colors.white,
//       ),
//       body: Card(
//         child: Center(
//           child: Column(
//             children: [
//               TextFormField(
//                 decoration: InputDecoration(
//                   label: Text('Nome: '),
//                   hintText: 'Digite seu nome'
//                 ),
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                   label: Text('Curso: '),
//                   hintText: 'Digite seu curso',
//                 ),
//               ),
//               Text
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }
