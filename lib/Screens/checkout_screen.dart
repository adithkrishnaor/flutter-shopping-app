import 'package:flutter/material.dart';
import 'package:shopping_app/Screens/success_screen.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final _formKey = GlobalKey<FormState>();
  String _cardNumber = '';
  String _expirationDate = '';
  String _cvv = '';
  String _paymentMethod = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text('Payment Options',
                 style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                ListTile(
                  title: Text('Credit/Debit Card'),
                  leading: Radio(
                    value: 'card',
                    groupValue: _paymentMethod,
                    onChanged: (value) {
                      setState(() {
                        _paymentMethod = value as String;
                      });
                    },
                  ),
                ),
                _paymentMethod == 'card'
                    ? Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Card Number'),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter card number';
                              }
                              return null;
                            },
                            onSaved: (value) => _cardNumber = value!,
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Expiration Date'),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter expiration date';
                              }
                              return null;
                            },
                            onSaved: (value) => _expirationDate = value!,
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'CVV'),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter CVV';
                              }
                              return null;
                            },
                            onSaved: (value) => _cvv = value!,
                          ),
                        ],
                      )
                    : Container(),
                ListTile(
                  title: Text('PayPal'),
                  leading: Radio(
                    value: 'paypal',
                    groupValue: _paymentMethod,
                    onChanged: (value) {
                      setState(() {
                        _paymentMethod = value as String;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Apple Pay'),
                  leading: Radio(
                    value: 'applepay',
                    groupValue: _paymentMethod,
                    onChanged: (value) {
                      setState(() {
                        _paymentMethod = value as String;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Google Pay'),
                  leading: Radio(
                    value: 'googlepay',
                    groupValue: _paymentMethod,
                    onChanged: (value) {
                      setState(() {
                        _paymentMethod = value as String;
                      });
                    },
                  ),
                ),              
            
                // Submit Button
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Process payment and address here
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Payment processed successfully')),
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>Success_Screen()
                      )
                    );
                    }
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}