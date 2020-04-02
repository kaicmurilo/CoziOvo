import 'package:eggs/blocs/app.bloc.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Eggs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);

    switch (bloc.state) {
      case "stopped":
        return stopped();
      case "cooking":
        return cookinbg();
      case "done":
        return done();
      default:
        return stopped();
    }
  }

//chamando animações devido estados
  Widget stopped() {
    return Container(
      width: 250,
      height: 250,
      child: FlareActor(
        "assets/animations/eggs.flr",
        alignment: Alignment.center,
        fit: BoxFit.contain,
        isPaused: false,
        animation: 'start',
      ),
    );
  }

  Widget cookinbg() {
    return Container(
      width: 250,
      height: 250,
      child: FlareActor(
        "assets/animations/boiling.flr",
        alignment: Alignment.center,
        fit: BoxFit.contain,
        isPaused: false,
        animation: 'start',
      ),
    );
  }

  Widget done() {
    return Container(
      width: 250,
      height: 250,
      child: FlareActor(
        "assets/animations/egg-cooking.flr",
        alignment: Alignment.center,
        fit: BoxFit.contain,
        isPaused: false,
        animation: 'start',
      ),
    );
  }
}
