import 'package:codeial/components/custom_elevated_button.dart';
import 'package:codeial/components/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return SizedBox(
          height: constraints.maxHeight * 0.8,
          width: constraints.maxWidth * 0.65,
          child: Card(
            elevation: 3,
            margin: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: theme.colorScheme.surface,
            clipBehavior: Clip.antiAlias,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/intro.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
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
                            onPressed: () {},
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
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
