import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class StartMenu extends StatelessWidget {
  const StartMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defaultPadding),
      //padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: borderRadiusDefault,
      ),
      child: ClipRRect(
        borderRadius: borderRadiusDefault,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.black12,
              ),
            ),
            Expanded(
              flex: 10,
              child: Column(
                children: [
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          padding: const EdgeInsets.only(
                            top: defaultPadding * 0.75,
                            bottom: defaultPadding * 0.75,
                            right: 1,
                            left: defaultPadding * 0.75,
                          ),
                          child: SearchField(),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: AppListConfig(),
                      ),
                    ],
                  ),
                  Column(
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
                      ListTile(
                        onTap: () {},
                        horizontalTitleGap: 0.0,
                        leading: SvgPicture.asset(
                          "assets/icons/menu_dashbord.svg",
                          color: Colors.black,
                        ),
                        title: Text("Todos os Aplicativos"),
                      ),
                    ],
                  ),
                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    //mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ListTile(
                        onTap: () {},
                        horizontalTitleGap: 0.0,
                        leading: SvgPicture.asset(
                          "assets/icons/menu_dashbord.svg",
                          color: Colors.black,
                        ),
                        title: Text("Todos os Aplicativos"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppListConfig extends StatelessWidget {
  const AppListConfig({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(
          top: defaultPadding * 0.75,
          bottom: defaultPadding * 0.75,
          right: 1,
          left: 1,
        ),
        child: SvgPicture.asset(
          "assets/icons/menu_dashbord.svg",
          color: Colors.black38,
        ),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: "Pesquisar",
        fillColor: Colors.black12,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: borderRadiusInput,
        ),
        prefixIcon: Container(
          padding: EdgeInsets.all(defaultPadding * 0.75),
          child: SvgPicture.asset(
            "assets/icons/Search.svg",
            color: Colors.black38,
          ),
        ),
      ),
    );
  }
}
