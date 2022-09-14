import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.pie_chart_sharp,
              text: 'General',
            ),
            _SingleCard(
              color: Colors.purpleAccent,
              icon: Icons.calendar_today,
              text: 'Calendar',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.bubble_chart,
              text: 'Bubbles',
            ),
            _SingleCard(
              color: Colors.orange,
              icon: Icons.supervised_user_circle,
              text: 'Users',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blueAccent,
              icon: Icons.pie_chart_sharp,
              text: 'General',
            ),
            _SingleCard(
              color: Colors.green,
              icon: Icons.calendar_today,
              text: 'Calendar',
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 30,
          child: Icon(icon, size: 35, color: Colors.white),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(color: color, fontSize: 18),
        ),
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
