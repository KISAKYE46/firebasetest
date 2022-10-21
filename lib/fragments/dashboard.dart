import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/widgets.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DashboardState();
  }
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 4, left: 12, top: 10),
          child: Text(
            "Whats Going on at School?",
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 150,
          ),
          child: Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  dashboardCard(
                      context, "New Staff", FontAwesomeIcons.userGroup),
                  dashboardCard(
                      context, "New Staff", FontAwesomeIcons.registered),
                  dashboardMoreCard(context, "", FontAwesomeIcons.plus),
                ],
              )),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 4, left: 12, top: 10),
          child: Text(
            "Students and Welfare",
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 150,
          ),
          child: Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  dashboardCard(
                      context, "New Students", FontAwesomeIcons.children),
                  dashboardCard(
                      context, "Sick Bay", FontAwesomeIcons.heartPulse),
                  dashboardMoreCard(context, "", FontAwesomeIcons.plus),
                ],
              )),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 4, left: 12, top: 10),
          child: Text(
            "Money Transactions",
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 150,
          ),
          child: Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  dashboardCard(context, "Fees", FontAwesomeIcons.chartLine),
                  dashboardCard(
                      context, "Expenditure", FontAwesomeIcons.moneyBills),
                  dashboardMoreCard(context, "", FontAwesomeIcons.plus),
                ],
              )),
        ),
      ],
    );
  }
}



// gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8),
             
