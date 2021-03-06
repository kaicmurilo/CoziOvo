import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  //escrita dentro do botão
  final String label;
  //booleano para saber se está selecionado ou não
  final bool selected;
  //função que será chamada pelo botão
  final Function callback;

  Button({
    @required this.label,
    @required this.callback,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 90,
        decoration: BoxDecoration(
          color: selected ? Theme.of(context).primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 1,
            color: Theme.of(context).primaryColor,
          ),
        ),
        //texto dentro do botão
        child: FlatButton(
          onPressed: callback,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}
