import 'package:flutter/material.dart';
import 'package:primeiro_app/utilitarios/tipografia.dart';

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
            Text(
              "ChatSENAC",
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
        Text(
          "Coloque o seu email e senha para logar",
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 50),

        // Campos
        Text("Email", style: Tipografia.subtitulo),
        TextField(decoration: InputDecoration(
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),))),
        SizedBox(height: 20),
        Text("Senha", style: Tipografia.subtitulo),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            suffixIcon: Icon(Icons.visibility_off),
          ),
        ),
        SizedBox(height: 20),
        InkWell(
          child: Text(
            "Esqueceu a senha?",
            textAlign: TextAlign.right,
            style: Tipografia.link,
          ),
        ),
        SizedBox(height: 10),

        //Botões
        ElevatedButton(
          onPressed: () {},

          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            // Cor de fundo
            foregroundColor: Colors.white,
            // Cor do texto e do ícone
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(vertical: 16),
            elevation: 0,
          ),
          child: Text("Entrar"),
        ),
        SizedBox(height: 10),
        Text("Ou", textAlign: TextAlign.center),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            // Cor de fundo
            foregroundColor: Colors.black,
            // Cor do texto e do ícone
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(vertical: 16),
            side: const BorderSide(color: Colors.grey),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 12,
            children: [
              Image.asset("assets/imagens/google-icon.png", width: 18),
              Text("Continuar com Google"),
            ],
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            // Cor de fundo
            foregroundColor: Colors.black,
            // Cor do texto e do ícone
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(vertical: 16),
            side: const BorderSide(color: Colors.black87),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 12,
            children: [
              Image.asset("assets/imagens/facebook-icon.png", width: 18),
              Text("Continuar com Facebook"),
            ],
          ),
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Não tem uma conta?"),
            InkWell(
              child: Text(
                "Cadastre-se",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
