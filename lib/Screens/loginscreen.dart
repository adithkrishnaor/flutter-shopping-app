import 'package:flutter/material.dart';
import 'package:shopping_app/Screens/homescreen.dart';
import 'package:shopping_app/Screens/signupscreen.dart';
import 'package:shopping_app/db/functions/db_functions.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _pswdController = TextEditingController();
  bool _isPasswordVisible = false;

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
              Image.asset(
                  'assets/images/Screenshot from 2024-07-19 14-08-44.png',
                  height: 120),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
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
                    ),
                    prefixIcon: const Icon(Icons.person)),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _pswdController,
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                    hintText: 'Enter your Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
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
                      backgroundColor: Color.fromARGB(255, 54, 196, 7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ))),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                    ),
                  );
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

  void checkLogin(BuildContext context) async {
    final _username = _usernameController.text;
    final _password = _pswdController.text;
    if (_username.isNotEmpty && _password.isNotEmpty) {
      bool userExists = await checkUser(_username, _password);

      if (userExists) {
        //goto home
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
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