import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../constants.dart';

class AppList extends StatelessWidget {
  const AppList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          onTap: () {},
          horizontalTitleGap: 0.0,
          leading: SvgPicture.asset(
            "assets/icons/menu_dashbord.svg",
            color: Colors.black,
          ),
          title: Text("Atualizar"),
        ),
        ListTile(
          onTap: () {},
          horizontalTitleGap: 0.0,
          leading: SvgPicture.asset(
            "assets/icons/menu_dashbord.svg",
            color: Colors.black,
          ),
          title: Text("Video"),
        ),
        ListTile(
          onTap: () {},
          horizontalTitleGap: 0.0,
          leading: SvgPicture.asset(
            "assets/icons/menu_dashbord.svg",
            color: Colors.black,
          ),
          title: Text("Terminal"),
        ),
        ListTile(
          onTap: () {},
          horizontalTitleGap: 0.0,
          leading: SvgPicture.asset(
            "assets/icons/menu_dashbord.svg",
            color: Colors.black,
          ),
          title: Text("Gerenciador de Dispositivos"),
        ),
        ListTile(
          onTap: () {},
          horizontalTitleGap: 0.0,
          leading: SvgPicture.asset(
            "assets/icons/menu_dashbord.svg",
            color: Colors.black,
          ),
          title: Text("Gerenciador de Arquivos"),
        ),
        ListTile(
          onTap: () {},
          horizontalTitleGap: 0.0,
          leading: SvgPicture.asset(
            "assets/icons/menu_dashbord.svg",
            color: Colors.black,
          ),
          title: Text("Gravador de Tela"),
        ),
        ListTile(
          onTap: () {},
          horizontalTitleGap: 0.0,
          leading: SvgPicture.asset(
            "assets/icons/menu_dashbord.svg",
            color: Colors.black,
          ),
          title: Text("Imagem"),
        ),
        ListTile(
          onTap: () {},
          horizontalTitleGap: 0.0,
          leading: SvgPicture.asset(
            "assets/icons/menu_dashbord.svg",
            color: Colors.black,
          ),
          title: Text("Álbum"),
        ),
        ListTile(
          onTap: () {},
          horizontalTitleGap: 0.0,
          leading: SvgPicture.asset(
            "assets/icons/menu_dashbord.svg",
            color: Colors.black,
          ),
          title: Text("Visualizador de Documentos"),
        ),
        ListTile(
          onTap: () {},
          horizontalTitleGap: 0.0,
          leading: SvgPicture.asset(
            "assets/icons/menu_dashbord.svg",
            color: Colors.black,
          ),
          title: Text("Editor de Texto"),
        ),
        ListTile(
          onTap: () {},
          horizontalTitleGap: 0.0,
          leading: SvgPicture.asset(
            "assets/icons/menu_dashbord.svg",
            color: Colors.black,
          ),
          title: Text("Escaner"),
        ),
        ListTile(
          onTap: () {},
          horizontalTitleGap: 0.0,
          leading: SvgPicture.asset(
            "assets/icons/menu_dashbord.svg",
            color: Colors.black,
          ),
          title: Text("Computador"),
        ),
      ],
    );
  }
}
