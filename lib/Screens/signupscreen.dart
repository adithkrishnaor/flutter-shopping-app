import 'package:flutter/material.dart';
import 'package:shopping_app/Screens/homescreen.dart';
import 'package:shopping_app/Screens/loginscreen.dart';
import 'package:shopping_app/db/functions/db_functions.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController = TextEditingController();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  final _confirmPasswordController = TextEditingController();

final _dobController = TextEditingController();

 DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Create an account to get started',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              
TextField(
  controller: _dobController,
  decoration: InputDecoration(
    hintText: 'Enter your date of birth',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),
  onTap: () async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2025),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
        _dobController.text = '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}';
      });
    }
  },
),

const SizedBox(
                height: 20,
              ),

              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password again',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  checkSignUp(context);
                },
                label: const Text(
                  'Sign Up',
                  selectionColor: Colors.white,
                ),
                style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: const Color.fromARGB(255, 0, 128, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Existing User ? Login',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 166, 243),
                    fontSize: 15,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  void checkSignUp(BuildContext context) {
    final _name = _nameController;
    final _email = _emailController;
        final _dob = _dobController;

    final _pswd = _passwordController;
    final _cpswd = _confirmPasswordController;
    if (_name.text.isEmpty ||
        _email.text.isEmpty ||
        _dob.text.isEmpty ||
        _pswd.text.isEmpty ||
        _cpswd.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            behavior: SnackBarBehavior.floating,
            content: Text('Please fill all the fields'),
            margin: EdgeInsets.all(10),
            duration: Duration(seconds: 3)),
      );
    } else {
      if (_pswd.text == _cpswd.text) {
        addUser(_nameController.text,_emailController.text,_dobController.text,_passwordController.text,_confirmPasswordController.text);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              behavior: SnackBarBehavior.floating,
              content: Text('Password and Confirm password does not match'),
              margin: EdgeInsets.all(10),
              duration: Duration(seconds: 3)),
        );
      }
    }
  }
}
