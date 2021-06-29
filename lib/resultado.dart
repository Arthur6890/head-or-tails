import 'package:flutter/material.dart';
import 'dart:math';
class Resultado extends StatefulWidget {
  const Resultado({Key? key}) : super(key: key);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {

  String resultado() {
    var imagem;
    int resultado = new Random().nextInt(2);
    if(resultado == 1){
       imagem = 'imagens/moeda_cara.png';
    }else if (resultado == 0){
       imagem = 'imagens/moeda_coroa.png';
    }
    return '$imagem';

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(resultado()),
            GestureDetector(
              onTap:  (){
                Navigator.pop(context);
              },
              child: Image.asset("imagens/botao_voltar.png"),
            )
          ],
        ),

      ),
    );;
  }
}
