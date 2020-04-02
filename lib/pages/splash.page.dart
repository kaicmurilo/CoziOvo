import 'package:eggs/pages/home.page.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  //TEMPORIZADOR DA PAGINA
  Future delay(context) async {
    await new Future.delayed(
        new Duration(
          milliseconds: 3000,
        ), () {
      //CHAMANDO NOVA PAGINA ÁPOS O TEMPO.
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    //chamando a função temporizadora
    delay(context);
    return Scaffold(
        body: Column(
      children: <Widget>[
        SizedBox(
          //espaçamento do topo
          height: 60,
        ),
        Container(
          //ANIMAÇÃO DE INICIO DO PROGRAMA
          width: double.infinity,
          height: 300,
          child: FlareActor(
            "assets/animations/eggs.flr",
            alignment: Alignment.center,
            fit: BoxFit.contain,
            isPaused: false,
            animation: 'start',
          ),
        ),
        //escrita abaixo da animação
        Text(
          "CoziDovos",
          style: TextStyle(
            fontSize: 65,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ));
  }
}
