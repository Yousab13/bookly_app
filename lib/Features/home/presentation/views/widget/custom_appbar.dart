import 'package:bookly/core/util/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        right: 12,
        left: 12,
        bottom: 10
      ),
      child: Row(
        children: [
          Image.asset(
            Assets.logo,
            height: 24,
            width: 60,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                size: 24,
              )),
        ],
      ),
    );
  }
}
