import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../constants.dart';
import 'app_list_config.dart';
import 'search_field.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
