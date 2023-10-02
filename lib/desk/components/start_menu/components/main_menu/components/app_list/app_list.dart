import 'package:fluides/applications/file_manager/file_manager.dart';
import 'package:fluides/applications/model_application/model_application.dart';
import 'package:fluides/components/process_manager/process_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class AppList extends StatelessWidget {
  const AppList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProcessManager>(builder: (context, apps, child) {
      return Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ModelApplication(),
          const FileManager(),
          ListTile(
            // Atualizar
            onTap: () {},
            horizontalTitleGap: 0.0,
            leading: SvgPicture.asset(
              "assets/icons/menu_dashbord.svg",
              color: Colors.black,
            ),
            title: const Text("Atualizar"),
          ),
          ListTile(
            // Video
            onTap: () {},
            horizontalTitleGap: 0.0,
            leading: SvgPicture.asset(
              "assets/icons/menu_dashbord.svg",
              color: Colors.black,
            ),
            title: const Text("Video"),
          ),
          ListTile(
            // Terminal
            onTap: () {},
            horizontalTitleGap: 0.0,
            leading: SvgPicture.asset(
              "assets/icons/menu_dashbord.svg",
              color: Colors.black,
            ),
            title: const Text("Terminal"),
          ),
          ListTile(
            // Gerenciador de Dispositivos
            onTap: () {},
            horizontalTitleGap: 0.0,
            leading: SvgPicture.asset(
              "assets/icons/menu_dashbord.svg",
              color: Colors.black,
            ),
            title: const Text("Gerenciador de Dispositivos"),
          ),
          ListTile(
            // Gerenciador de Arquivos
            onTap: () {},
            horizontalTitleGap: 0.0,
            leading: SvgPicture.asset(
              "assets/icons/menu_dashbord.svg",
              color: Colors.black,
            ),
            title: const Text("Gerenciador de Arquivos"),
          ),
          ListTile(
            // Gravador de Tela
            onTap: () {},
            horizontalTitleGap: 0.0,
            leading: SvgPicture.asset(
              "assets/icons/menu_dashbord.svg",
              color: Colors.black,
            ),
            title: const Text("Gravador de Tela"),
          ),
          ListTile(
            // Imagem
            onTap: () {},
            horizontalTitleGap: 0.0,
            leading: SvgPicture.asset(
              "assets/icons/menu_dashbord.svg",
              color: Colors.black,
            ),
            title: const Text("Imagem"),
          ),
          ListTile(
            // Álbum
            onTap: () {},
            horizontalTitleGap: 0.0,
            leading: SvgPicture.asset(
              "assets/icons/menu_dashbord.svg",
              color: Colors.black,
            ),
            title: const Text("Álbum"),
          ),
          ListTile(
            // Visualizador de Documentos
            onTap: () {},
            horizontalTitleGap: 0.0,
            leading: SvgPicture.asset(
              "assets/icons/menu_dashbord.svg",
              color: Colors.black,
            ),
            title: const Text("Visualizador de Documentos"),
          ),
          ListTile(
            // Editor de Texto
            onTap: () {},
            horizontalTitleGap: 0.0,
            leading: SvgPicture.asset(
              "assets/icons/menu_dashbord.svg",
              color: Colors.black,
            ),
            title: const Text("Editor de Texto"),
          ),
          ListTile(
            // Escaner
            onTap: () {},
            horizontalTitleGap: 0.0,
            leading: SvgPicture.asset(
              "assets/icons/menu_dashbord.svg",
              color: Colors.black,
            ),
            title: const Text("Escaner"),
          ),
          ListTile(
            // Computador
            onTap: () {},
            horizontalTitleGap: 0.0,
            leading: SvgPicture.asset(
              "assets/icons/menu_dashbord.svg",
              color: Colors.black,
            ),
            title: const Text("Computador"),
          ),
        ],
      );
    });
  }
}
