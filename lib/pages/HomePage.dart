import 'package:firebase_database/firebase_database.dart' show FirebaseDatabase;
import 'package:firebasetest/fragments/dashboard.dart';
import 'package:firebasetest/fragments/payments.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../fragments/staff.dart';
import '../fragments/students.dart';
import '../values/_icons.dart';
import '../values/_strings.dart';
import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final db = FirebaseDatabase.instance.ref("users");

  final fragments = [
    Dashboard(),
    Students(),
    Staff(),
    Payments(),
  ];

  final titles = ["Dashboard", "Students", "Staff", "Payments"];

  int currentFragment = 0;

  int idCounter = 4;

  String title = "Dashboard";

  var text = "Before";
  void addData() {
    db.child("$idCounter").set({
      "name": "Joel $idCounter",
      "password": "1234",
      "email": "nkanji6@gmail.com"
    }).whenComplete(() {
      setState(() {
        text = "Data Added $idCounter times";
        idCounter++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          title,
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: fragments[currentFragment],
      floatingActionButton: FloatingActionButton(
        onPressed: addData,
        tooltip: 'Add Data',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentFragment,
        onTap: (index) {
          setState(() {
            currentFragment = index;
            title = titles[index];
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house), label: "Dashboard"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.child), label: "Students"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.users), label: "Staff"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.moneyBillTransfer), label: "Payments")
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
