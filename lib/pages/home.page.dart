import 'package:eggs/blocs/app.bloc.dart';
import 'package:eggs/widgets/action-buttons-widget.dart';
import 'package:eggs/widgets/eggs.widget.dart';
import 'package:eggs/widgets/progress.widget.dart';
import 'package:eggs/widgets/type-buttons.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);
    return Scaffold(
        body: Container(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          //mostrando titulo
          Text(
            "CoziDovos",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          //mostrando animações
          Eggs(),
          //Mostrando botões
          Padding(
            padding: const EdgeInsets.all(20),
            child: TypeButtons(),
          ),
          Progress(),.
          Padding(
            padding: const EdgeInsets.all(20),
            child: ActionButtons(),
          ),
        ],
      ),
      // child: Column(
      //   children: <Widget>[
      //     SizedBox(
      //       height: 60,
      //     ),
      //     //Mostrando Texto do bloc selecionado
      //     Text(bloc.selected),
      //     Text(bloc.state),
      //     Text(bloc.time.toString()),
      //     SizedBox(
      //       height: 10,
      //     ),
      //     //chamadon botões na tela
      //     TypeButtons(),
      //     SizedBox(
      //       height: 10,
      //     ),
      //     //mostrando botão de ação
      //     ActionButtons(),
      //     SizedBox(
      //       height: 10,
      //     ),
      //     //mostrando progress bar
      //     Progress(),
      //     SizedBox(
      //       height: 10,
      //     ),
      //     Eggs(),
      //   ],
      // ),
    ));
  }
}
