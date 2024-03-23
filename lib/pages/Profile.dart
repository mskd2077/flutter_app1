import 'package:flutter/material.dart';

class WaveTextField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final IconData prefixIcon;

  const WaveTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  _WaveTextFieldState createState() => _WaveTextFieldState();
}

class _WaveTextFieldState extends State<WaveTextField> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: TextField(
        controller: widget.controller,
        onChanged: (value) {
          setState(() {}); // Rebuild the widget on text change
        },
        decoration: InputDecoration(
          labelText: widget.labelText,
          prefixIcon: Icon(widget.prefixIcon),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: _isFocused ? Colors.blue : Colors.grey),
          ),
          labelStyle: TextStyle(
            color: _isFocused ? Colors.blue : Colors.grey,
          ),
        ),
        onTap: () {
          setState(() {
            _isFocused = true;
          });
        },
        onSubmitted: (value) {
          setState(() {
            _isFocused = false;
          });
        },
      ),
    );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WaveTextField(
              controller: _usernameController,
              labelText: 'Username',
              prefixIcon: Icons.person,
            ),
            WaveTextField(
              controller: _emailController,
              labelText: 'Email',
              prefixIcon: Icons.email,
            ),
            WaveTextField(
              controller: _passwordController,
              labelText: 'Password',
              prefixIcon: Icons.lock,
            ),
            WaveTextField(
              controller: _confirmPasswordController,
              labelText: 'Confirm Password',
              prefixIcon: Icons.lock,
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Your registration logic here
                },
                child: Text('Register'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: RegisterPage(),
  ));
}
