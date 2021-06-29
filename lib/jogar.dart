import 'package:flutter/material.dart';

import 'resultado.dart';

class Jogar extends StatefulWidget {
  const Jogar({Key? key}) : super(key: key);

  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

  void _exibirResultado(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Resultado()
    ));
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
            Image.asset("imagens/logo.png"),
            GestureDetector(
              onTap:  _exibirResultado,
              child: Image.asset("imagens/botao_jogar.png"),
            )
          ],
        ),

      ),
    );
  }
}
