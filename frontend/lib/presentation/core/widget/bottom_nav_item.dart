import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final int currentTab;
  final Function onTap;
  final int tab;

  NavItem({
    required this.icon,
    required this.text,
    required this.currentTab,
    required this.onTap,
    required this.tab,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 40,
      onPressed: () => onTap(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: currentTab == tab
                ? Theme.of(context).primaryColor
                : Colors.grey,
          ),
          Text(
            text,
            style: TextStyle(
              color: currentTab == tab
                  ? Theme.of(context).primaryColor
                  : Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
