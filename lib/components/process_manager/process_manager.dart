// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import './components/application_process/application_process.dart';

class ProcessManager extends ChangeNotifier {
  List<ApplicationProcess> process_list = [];
  List<Widget> process_dock = [];
  List<ApplicationProcess> closed_list = [];
  //List<Widget> desk_apps = [];
  //final List<Widget> desktopList = [];
  int next_process = 0;

  int get totalProcess => process_list.length;

  void start(ApplicationProcess app) {
    bool closed = true;
    int p_id = 0;
    for (int i = 0; i < process_list.length; i++) {
      if (app.name == process_list[i].name) {
        closed = false;
        p_id = process_list[i].id;
      }
    }

    if (closed) {
      app.id = next_process;
      next_process = next_process + 1;
      process_list.add(app);
      // desk_apps.add(app);
      print("Process Manager :: Process started successfully (" +
          app.id.toString() +
          ")");
      //processList.last.visibleWindow = false;
      //processList.last.animationHideWindow();
      process_dock.add(app.dock);
      notifyListeners();
      process_list.last.animationShowWindow();
      notifyListeners();
      // showHide(app.name);
    } else {
      stop(p_id);
      print("Process Manager :: Process stopped successfully (" +
          p_id.toString() +
          ")");
    }
  }

  void stop(int id) {
    int index = -1; // default: invalid index

    // searching for process on the list
    for (int i = 0; i < process_list.length; i++) {
      if (process_list[i].id == id) {
        index = i; // process located on the list
        break;
      }
    }

    // closing process if already exist
    if (index >= 0) {
      process_dock.remove(process_list[index].dock);
      process_list.removeAt(index);
    }

    notifyListeners();
  }

  List<Widget> runningOnDock() {
    /*List<Widget> running = [];
    for (int i = 0; i < process_list.length; i++) {
      running.add(process_list[i].dock);
    }*/
    return process_dock;
  }

  List<Widget> desktop(List<Widget> desk) {
    List<Widget> new_desk = [];
    for (var app in desk) {
      new_desk.add(app);
    }
    for (int i = 0; i < process_list.length; i++) {
      if (process_list[i].window_manager.getVisibility()) {
        new_desk.add(process_list[i]);
      }
    }

    return new_desk;
  }

  void showHide(String process_name) {
    int? new_top_id;
    bool toggle_show = true;
    for (int i = 0; i < process_list.length; i++) {
      if (process_name == process_list[i].name) {
        if (process_list[i].window_manager.getVisibility()) {
          // process_list[i].animationHideWindow();
          if (i == process_list.length - 1) {
            process_list[i].animationHideWindow();
            notifyListeners();
            if (i != 0) {
              toggle_show = false;
              new_top_id = i - 1;
            }
          } else {
            new_top_id = i;
          }
        } else {
          // process_list[i].animationShowWindow();
          new_top_id = i;
        }
        notifyListeners();
      }
    }
    if (new_top_id != null) {
      ApplicationProcess new_top = process_list.removeAt(new_top_id);
      process_list.add(new_top);
      if (toggle_show) {
        process_list.last.animationShowWindow();
      }
      notifyListeners();
    }
    new_top_id = null; // making sure it's empty
  }
}
