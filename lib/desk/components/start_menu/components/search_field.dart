import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../constants.dart';

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
