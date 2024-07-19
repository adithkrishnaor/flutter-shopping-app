//import 'dart:io';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/Screenshot from 2024-07-19 14-08-44.png',
                  height: 120),

              const SizedBox(
                height: 50,
              ),
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                    hintText: 'Enter your Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Enter your Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      //code to forgot password
                    },
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 166, 243),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
             const SizedBox(
                height: 20,
              ), 
              ElevatedButton.icon(
                  onPressed: () {
                    checkLogin(context);
                  },
                  label: const Text(
                    'Login',
                    selectionColor: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: Color.fromARGB(255, 0, 128, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ))),
              const SizedBox(
                height: 20,
              ),
              
             
              GestureDetector(
                onTap: () {
                  //code to signup page
                },
                child: const Text(
                  'New User ? Sign Up',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 166, 243),
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  void checkLogin(BuildContext context) {
    final _username = _usernameController;
    final _password = _passwordController;
    if (_username.text.isNotEmpty && _password.text.isNotEmpty) {
      if (_username.text == 'admin' && _password.text == 'admin') {
        //goto home
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            behavior: SnackBarBehavior.floating,
            //backgroundColor: Colors.red,
            content: Text('Invalid Username or Password'),
            margin: EdgeInsets.all(10),
            duration: Duration(seconds: 3)));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          behavior: SnackBarBehavior.floating,
          //backgroundColor: Colors.red,
          content: Text('Username or Password cannot be empty'),
          margin: EdgeInsets.all(10),
          duration: Duration(seconds: 3)));
    }
  }
}
