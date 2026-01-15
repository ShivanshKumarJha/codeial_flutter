import 'package:codeial/services/login/login_body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Codeial',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.login,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      body: Center(child: const LoginBody()),
    );
  }
}
