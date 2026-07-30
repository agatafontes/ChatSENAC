import 'package:flutter/material.dart';
import 'package:primeiro_app/utilitarios/tipografia.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Setinha
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              child: Icon(Icons.arrow_back),),
          ),


          //Titulos
          Text(
            "Cadastrar-se",
            style: Tipografia.h1,
            textAlign: TextAlign.center,
          ),
          Text(
            "Crie uma conta para continuar!",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 50),

          // Campos
          Text("Nome", style: Tipografia.subtitulo),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(height: 10),

          Text("Email", style: Tipografia.subtitulo),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(height: 20),

          Text("Senha", style: Tipografia.subtitulo),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              suffixIcon: Icon(Icons.visibility_off),
            ),
          ),
          SizedBox(height: 20),

          Text("Confirmar Senha", style: Tipografia.subtitulo),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              suffixIcon: Icon(Icons.visibility_off),
            ),
          ),
          SizedBox(height: 20),

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
            child: Text("Cadastrar"),
          ),
        ],
      ),
    );
  }
}
