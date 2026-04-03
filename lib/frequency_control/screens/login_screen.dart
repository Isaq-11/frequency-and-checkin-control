import 'package:flutter/material.dart';
import 'package:frequency_control/frequency_control/config/routes/routes.dart';


class LoginScreen extends StatelessWidget {

  @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 7, 32, 77),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Faça Login para Acessar o App!'),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Nome de Usuário'),
                  hintText: 'Digite seu nome de usuário',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Senha'),
                  hintText: 'Informe sua senha',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Login efetuado com sucesso!');
                  Navigator.pushNamed(context, Rotas.telaPrincipalTeste);
                },
                child: Text('Entrar'),
              ),
            ],
          ),
        )
        
      );
    }
}