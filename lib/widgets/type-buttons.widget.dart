import 'package:eggs/blocs/app.bloc.dart';
import 'package:eggs/widgets/button.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TypeButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //verifica se a aplicação está com o estado stopped se estiver stoped mostra os seguintes botões na tela.
    final bloc = Provider.of<AppBloc>(context);
    return bloc.state == "stopped" ? buttons(bloc) : SizedBox();
  }

  //declarando botões
  Widget buttons(bloc) {
    return Row(
      //espaçamento todo da tela com o alinhamento igual entre os botões
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        //chamando botão ja criado no widget
        Button(
          label: "Soft",
          selected: bloc.selected == "soft",
          callback: () {
            bloc.select("soft");
          },
        ),
        Button(
          label: "Medium",
          selected: (bloc.selected == "medium"),
          callback: () {
            bloc.select("medium");
          },
        ),
        Button(
          label: "Hard",
          selected: bloc.selected == "hard",
          callback: () {
            bloc.select("hard");
          },
        ),
      ],
    );
  }
}
