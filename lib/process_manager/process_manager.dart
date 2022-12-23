import 'package:flutter/material.dart';
import 'package:fluides/process_manager/components/application_process/application_process.dart';

class ProcessManager extends ChangeNotifier {
  List<ApplicationProcess> processList = [];
  List<ApplicationProcess> closedList = [];
  List<Widget> desk_apps = [];
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
      // desk_apps.add(app);
      print("Process Manager :: Processo Iniciado com sucesso");
      processList.last.visibleWindow = true;
      notifyListeners();
      // showHide(app.name);
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
      print("Process Manager :: Processo Encerrado");
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
        new_desk.add(processList[i]);
      }
    }

    return new_desk;
  }

  /*void desktop2() {
    int startMenuSize = 3;
    int notificationSize = 3;

    desk_apps.add(
      DisplayNotification(
        notificationSize: notificationSize,
        visibleNotification: true,
      ),
    );

    desk_apps.add(
      DisplayStartMenu(
        startMenuSize: startMenuSize,
        visible: true,
      ),
    );

    notifyListeners();
  }*/

  void showHide(String process_name) {
    for (int i = 0; i < processList.length; i++) {
      if (process_name == processList[i].name) {
        // print(processList[i].visible);
        // processList[i].visible = !processList[i].visible;
        // notifyListeners();
        // print(processList[i].visible);

        if (processList[i].visible) {
          processList[i].animationHideWindow();
          print("Process Manager :: Animação de ocultação");
        } else {
          processList[i].visible = true;
          processList[i].animationShowWindow();
          print("Process Manager :: Animação de exibição");
        }
        notifyListeners();

        /*setState() {
          processList[i].window._visible = true;
        }*/

        // processList[i].window.setVisibility(processList[i].visible);

        //processList[i].visible = !processList[i].visible;

        // if (processList[i].visible) {
        //   print("Processo está visível");
        // } else {
        //   print("Processo está escondido");
        // }

      }
    }
  }
}
