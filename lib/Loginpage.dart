import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _userNameController = TextEditingController();
  String _displayText = "The Display Text";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amberAccent,
      body: SafeArea(
        child: Center(
            child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(50),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: _userNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'username',
                    ),
                  ),
                  SizedBox(height: 20), // Add padding of 20 pixels here
                  TextField(
                    obscureText: true,
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'password',
                    ),
                  ),
                  SizedBox(height: 20), // Add padding of 20 pixels here
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _displayText = _userNameController.text;
                      });
                    },
                    child: Text('Click'),
                  ),
                  SizedBox(height: 20), // Add padding of 20 pixels here
                  Text(_displayText),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Loginpage(),
  ));
}
