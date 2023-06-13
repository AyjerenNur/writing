import 'package:flutter/material.dart';
import 'package:write/color.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController loginctrl = TextEditingController();
  TextEditingController passctrl = TextEditingController();
  TextEditingController phonectrl = TextEditingController();
  String? selectedRole;
  InputDecoration fieldecor = InputDecoration(
    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    filled: true,
    fillColor: textfieldcolor,
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(9),
        borderSide: const BorderSide(color: Colors.transparent)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(9),
        borderSide: const BorderSide(color: Colors.transparent)),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: babypurple,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.7,
            color: white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Sign in as...',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Text(
                      'Creator',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: textcolor2),
                    ),
                  ),
                  TextField(
                    controller: loginctrl,
                    cursorColor: textcolor,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: textfieldcolor2),
                    decoration: fieldecor,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
