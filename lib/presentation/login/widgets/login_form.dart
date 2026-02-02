import 'package:codeial/presentation/components/custom_elevated_button.dart';
import 'package:codeial/presentation/components/custom_text_field.dart';
import 'package:codeial/presentation/login/widgets/login_container.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key, required this.theme, required this.widget});

  final ThemeData theme;
  final LoginBody widget;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Sign In',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineMedium?.copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              CustomTextField(
                labelText: 'Email',
                obscureText: false,
                hintText: 'Enter your email',
              ),
              const SizedBox(height: 16),
              CustomTextField(
                labelText: 'Password',
                obscureText: true,
                hintText: 'Enter your password',
              ),
              const SizedBox(height: 24),
              CustomElevatedButton(
                onPressed: widget.onLoginPressed,
                buttonText: 'Sign In',
                expand: true,
                icon: Icons.login,
              ),
              const SizedBox(height: 12),
              Center(child: const Text('Or Sign In/Sign Up with')),
              const SizedBox(height: 12),
              CustomElevatedButton(
                onPressed: () {},
                buttonText: 'Google',
                expand: true,
                icon: Icons.account_circle,
                buttonColor: theme.colorScheme.tertiary,
                textColor: theme.colorScheme.onTertiary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
