import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'custom_card_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Scaffold(
          backgroundColor: Colors.deepPurple,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/karl.jpg'),
                ),
                const Text('Karl Urban',
                    style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 40.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20,
                  width: 300,
                  child: Divider(
                    color: Colors.deepPurple.shade100,
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      color: Colors.teal.shade100,
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold),
                ),
                const CustomCardWidget(email: Icons.phone, label: '+1 999 999 9999'),
                const CustomCardWidget(email: Icons.email, label: 'karlurbarn@example.com')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
