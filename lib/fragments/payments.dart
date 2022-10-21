import 'package:flutter/material.dart';

class Payments extends StatefulWidget {
  const Payments({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PaymentsState();
  }
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center, child: const Text("Payemnts"));
  }
}
