import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../constants.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white.withOpacity(0.0),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              NotificationBox(
                title: "Notificação de Teste",
                message:
                    "Este é apenas um texto longo usado para mostrar a versatilidade inexistente das notificações.",
              ),
              NotificationBox(
                title: "Esse é um teste muito top",
                message:
                    "Top dos top, melhor dos melhores, não tem igual e não tem para ninguém.",
              ),
              NotificationBox(
                title: "Notificação",
                message: "Bom ter.",
              ),
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
      decoration: BoxDecoration(
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
                decoration: BoxDecoration(
                    //color: Colors.pink,
                    ),
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
                            style: TextStyle(
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
              child: Container(
                decoration: BoxDecoration(
                    //color: Colors.green,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
