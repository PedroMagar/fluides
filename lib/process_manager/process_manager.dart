import 'package:flutter/material.dart';
import 'package:fluides/process_manager/components/application_process/application_process.dart';

class ProcessManager extends ChangeNotifier {
  List<ApplicationProcess> processList = [];
  List<ApplicationProcess> closedList = [];
  final List<Widget> desktopList = [];
  int nextProcess = 0;

  int get totalProcess => processList.length;

  void start(ApplicationProcess app) {
    bool closed = true;
    int p_id = 0;
    for (int i = 0; i < processList.length; i++) {
      if (app.name == processList[i].name) {
        closed = false;
        p_id = processList[i].id;
      }
    }

    if (closed) {
      app.id = nextProcess;
      nextProcess = nextProcess + 1;
      processList.add(app);
      print("Processo Iniciado com sucesso");
      notifyListeners();
    } else {
      stop(p_id);
    }
  }

  void stop(int id) {
    int index = -1; // default invalid index

    // searching for process on the list
    for (int i = 0; i < processList.length; i++) {
      if (processList[i].id == id) {
        index = i; // process located on the list
        break;
      }
    }

    // checking if process was found
    if (index >= 0) {
      print("Processo Encerrado");
      processList.removeAt(index);
    }

    notifyListeners();
  }

  List<Widget> runningOnDock() {
    List<Widget> running = [];
    for (int i = 0; i < processList.length; i++) {
      running.add(processList[i].dock);
    }
    return running;
  }

  List<Widget> desktop(List<Widget> desk) {
    List<Widget> new_desk = [];
    for (var app in desk) {
      new_desk.add(app);
    }
    for (int i = 0; i < processList.length; i++) {
      if (processList[i].visible == true) {
        new_desk.add(processList[i].window);
      }
    }

    return new_desk;
  }

  void showHide(String process_name) {
    for (int i = 0; i < processList.length; i++) {
      if (process_name == processList[i].name) {
        processList[i].visible = !processList[i].visible;
        processList[i].window.setVisibility(processList[i].visible);
        if (processList[i].visible)
          print("Processo está visível");
        else
          print("Processo está escondido");
      }
    }
  }
}
