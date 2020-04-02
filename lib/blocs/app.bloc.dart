import 'dart:async';
import 'package:flutter/material.dart';

//GESTÃO DE ESTADO REGRAS DE NEGOCIO
class AppBloc extends ChangeNotifier {
  Timer timer;
  String state = "stopped";
  String selected = "soft"; 
  double time = 5 * 60.0;
  double seconds = 0;
  double percent = 0;

  //método de atualizar o tempo
  updateTime() {
    seconds++;
    percent = (seconds * 100) / time;
    notifyListeners();
    if (seconds == time) done();
  }

  select(String type) {
    switch (type) {
      case "soft":
        {
          selected = "soft";
          time = 5.0 * 60.0;
          notifyListeners();
          return;
        }

      case "medium":
        {
          selected = "medium";
          time = 7.0 * 60.0;
          notifyListeners();
          return;
        }

      case "hard":
        {
          selected = "hard";
          time = 10.0 * 60.0;
          notifyListeners();
          return;
        }

      default:
        {
          time = 5.0 * 60.0;
          notifyListeners();
          return;
        }
    }
  }

//função de startar o timeer
  start() {
    state = "cooking";
    timer = Timer.periodic(
      Duration(seconds: 1),
      (Timer t) => updateTime(),
    );
    notifyListeners();
  }

//função para cancelar o trabalho
  stop() {
    timer.cancel();
    state = "stopped";
    seconds = 0;
    percent = 0;
    notifyListeners();
  }

  //método concluido
  done() {
    timer.cancel();
    state = "done";
    seconds = 0;
    percent = 0;
    notifyListeners();
  }

  reset() {
    stop();
  }
}
