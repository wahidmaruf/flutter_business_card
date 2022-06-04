import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                Card(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: const Icon(Icons.phone, color: Colors.deepPurple),
                    title: Text(
                      '+1 999 999 9999',
                      style: TextStyle(color: Colors.deepPurple.shade900),
                    ),
                  ),
                ),
                Card(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                        leading: const Icon(
                          Icons.email,
                          color: Colors.deepPurple,
                        ),
                        title: Text(
                          'karlurbarn@example.com',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.deepPurple.shade900,
                              fontFamily: 'SourceSansPro'),
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
