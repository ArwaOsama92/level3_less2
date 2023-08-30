import 'package:flutter/material.dart';
import 'package:level3_less2/pages/register.dart';
import 'package:level3_less2/shared/colors.dart';
import 'package:level3_less2/shared/constants.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 64),
              TextField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  decoration: DecorationTextField.copyWith(
                      hintText: "Enter Your Email :")),
              const SizedBox(height: 30),
              TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: DecorationTextField.copyWith(
                      hintText: "Enter Your Password :")),
              const SizedBox(height: 40),
              ElevatedButton(
                child: Text("Sign In", style: TextStyle(fontSize: 19)),
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(BTNgreen),
                  padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Do not have an account?",
                      style: TextStyle(fontSize: 16)),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Register()));
                      },
                      child: Text("Sign Up",
                          style: TextStyle(fontSize: 16, color: Colors.black)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
