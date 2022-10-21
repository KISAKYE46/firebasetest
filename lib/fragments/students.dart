import 'package:flutter/material.dart';

import '../values/_icons.dart';
import '../values/_strings.dart';
import '../widgets/widgets.dart';

class Students extends StatefulWidget {
  const Students({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StudentsState();
  }
}

class _StudentsState extends State<Students> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      userTile(context, userIcon, placeholderTitle, placeholderSubTitle),
      userTile(context, userIcon, placeholderTitle, placeholderSubTitle),
      userTile(context, userIcon, placeholderTitle, placeholderSubTitle),
      userTile(context, userIcon, placeholderTitle, placeholderSubTitle),
      userTile(context, userIcon, placeholderTitle, placeholderSubTitle),
    ]);
  }
}
