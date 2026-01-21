import 'package:codeial/services/home/home.dart';
import 'package:codeial/services/login/login_body.dart';
import 'package:codeial/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void _onLoginPressed() {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      body: Center(child: LoginBody(onLoginPressed: _onLoginPressed)),
    );
  }
}
