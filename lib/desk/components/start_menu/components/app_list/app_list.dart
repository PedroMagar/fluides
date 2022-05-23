import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../constants.dart';

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
// */
/*
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Transaction",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Task",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Documents",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Store",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Notification",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Profile",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Settings",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.black87,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black54),
      ),
    );
  }
}
// */