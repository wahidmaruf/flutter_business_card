import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    Key? key,
    required this.email,
    required this.label,
  }) : super(key: key);

  final IconData email;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        margin: const EdgeInsets.symmetric(
            vertical: 10.0, horizontal: 25.0),
        child: ListTile(
            leading: Icon(
              email,
              color: Colors.deepPurple,
            ),
            title: Text(
              label,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurple.shade900,
                  fontFamily: 'SourceSansPro'),
            )));
  }
}
