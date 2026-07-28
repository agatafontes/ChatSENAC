import 'package:flutter/material.dart';
import 'package:primeiro_app/utilitarios/tipografia.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Login(),
              ),
            )));
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 80),
            SizedBox(width: 8),
            Text("ChatSENAC",
            style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
            ),

          ],
        ),
        SizedBox(height: 32),

        //Titulos
        Text(

          "Entre na sua conta",
          style: Tipografia.h1,
          textAlign: TextAlign.center,
        ),
        Text("Coloque o seu email e senha para logar",
        textAlign: TextAlign.center,),
        SizedBox(height: 50,),


        // Campos
        Text("Email", style: Tipografia.subtitulo,),
        TextField(
          decoration: InputDecoration(
          border: OutlineInputBorder(),
          ),
         ),
        SizedBox(height: 20,),
        Text("Senha",style: Tipografia.subtitulo,),
        TextField(
          decoration: InputDecoration(
          border: OutlineInputBorder(),
          ),

        ),
        SizedBox(height: 20,),
        InkWell(child: Text(
            "Esqueceu a senha?",
            textAlign: TextAlign.right,
            style: Tipografia.link,
        )),
        SizedBox(height: 10,),

        //Botões
        ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent, // Cor de fundo
              foregroundColor: Colors.white, // Cor do texto e do ícone
            ),
            child: Text("Entrar")),
        SizedBox(height: 10,),
        Text("Ou", textAlign: TextAlign.center),
        SizedBox(height: 10,),
        ElevatedButton.icon(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white, // Cor de fundo
              foregroundColor: Colors.black, // Cor do texto e do ícone
            ),
            icon: Icon(Icons.g_mobiledata, size: 30,),
            label: Text("Continuar com Google")),
        SizedBox(height: 10,),
        ElevatedButton.icon(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white, // Cor de fundo
              foregroundColor: Colors.black, // Cor do texto e do ícone
            ),
            icon: Icon(Icons.facebook),
            label: Text("Continuar com Facebook")),
        SizedBox(height: 50,),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text("Não tem uma conta?"),
              InkWell(child: Text("Cadastre-se",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )),
            ]
        )
      ],
    );
  }
}
