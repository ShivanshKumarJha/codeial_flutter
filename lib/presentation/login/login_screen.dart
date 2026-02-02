import 'package:codeial/presentation/home/home_screen.dart';
import 'package:codeial/presentation/login/widgets/login_container.dart';
import 'package:codeial/presentation/components/custom_app_bar.dart';
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
