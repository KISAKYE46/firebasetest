import 'package:flutter/material.dart';

class Staff extends StatefulWidget {
  const Staff({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StaffState();
  }
}

class _StaffState extends State<Staff> {
  @override
  Widget build(BuildContext context) {
    return Container(alignment: Alignment.center, child: const Text("Staff"));
  }
}
