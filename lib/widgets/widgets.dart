import 'package:flutter/material.dart';

import '../values/_colors.dart';
import '../values/_icons.dart';
import '../values/_strings.dart';

Widget userTile(
    BuildContext context, IconData icon, String title, String more) {
  return ListTile(
    tileColor: tileColor,
    iconColor: iconColor,
    isThreeLine: true,
    leading: Icon(userIcon),
    title: Text(placeholderTitle),
    subtitle: Text(more),
  );
}

Widget dashboardCard(BuildContext context, String label, IconData icon) {
  var mediaQuery = MediaQuery.of(context);
  var width = mediaQuery.size.width;
  return Padding(
    padding: EdgeInsets.all(width * 0.0048),
    child: Card(
      elevation: 2,
      child: Container(
        width: width * 0.288,
        alignment: Alignment.center,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "60",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: themeColor),
                textAlign: TextAlign.right,
              ),
              Icon(
                icon,
                size: 33,
                color: iconColor,
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  label,
                  style: const TextStyle(fontSize: 10),
                ),
              ),
            ]),
      ),
    ),
  );
}

Widget dashboardMoreCard(BuildContext context, String label, IconData icon) {
  var mediaQuery = MediaQuery.of(context);
  var width = mediaQuery.size.width;
  return Padding(
    padding: EdgeInsets.all(width * 0.0048),
    child: Card(
      elevation: 2,
      child: Container(
        width: width * 0.288,
        alignment: Alignment.center,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: themeColor),
                textAlign: TextAlign.right,
              ),
              Icon(
                icon,
                size: 33,
                color: iconColor,
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  label,
                  style: const TextStyle(fontSize: 10),
                ),
              ),
            ]),
      ),
    ),
  );
}
