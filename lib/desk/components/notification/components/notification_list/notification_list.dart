// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluides/components/constants.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const notification_box = NotificationBox(
      title: "Notificação de Teste",
      message:
          "Este é apenas um texto longo usado para mostrar a versatilidade inexistente das notificações.",
    );
    const notification_box2 = NotificationBox(
      title: "Esse é um teste muito top",
      message:
          "Top dos top, melhor dos melhores, não tem igual e não tem para ninguém.",
    );
    const notification_box3 = NotificationBox(
      title: "Notificação",
      message: "Bom ter.",
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white.withOpacity(0.0),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: const Column(
            children: [
              notification_box,
              notification_box2,
              notification_box3,
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationBox extends StatelessWidget {
  final String title, message;

  const NotificationBox({
    Key? key,
    required this.title,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: Colors.white60,
        borderRadius: borderRadiusInput,
      ),
      child: ClipRRect(
        borderRadius: borderRadiusInput,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                /*decoration: BoxDecoration(
                    color: Colors.pink,
                    ),*/
                child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  backgroundColor: Colors.white.withOpacity(0),
                  body: SafeArea(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                "assets/icons/menu_setting.svg",
                                color: kPrimaryColor,
                                //fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: kPrimaryColor,
                              //fontSize: 16 * fontScale,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                "assets/icons/x_circle.svg",
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    message,
                    style: const TextStyle(color: kPrimaryColor),
                    overflow: TextOverflow.fade,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
