import 'package:flutter/material.dart';

class Settings_Screen extends StatelessWidget {
  const Settings_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Settings'),
          backgroundColor: const Color.fromARGB(121, 238, 229, 233)),
      body: Container(
        color: Color.fromARGB(121, 238, 229, 233),
        child: SafeArea(
            child: Column(children: [
          Text('Personal Information'),
          const SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Enter your name',
              labelText: 'Name',
              //prefixIcon: const Icon(Icons.person),
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  // Clear the text field
                },
              ),
            ),
          )
        ])),
      ),
    );
  }
}
