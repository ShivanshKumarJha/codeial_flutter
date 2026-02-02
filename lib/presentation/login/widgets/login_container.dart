import 'package:codeial/presentation/login/widgets/cover_image.dart';
import 'package:codeial/presentation/login/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key, required this.onLoginPressed});

  final VoidCallback onLoginPressed;

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
                const CoverImage(),
                LoginForm(theme: theme, widget: widget),
              ],
            ),
          ),
        );
      },
    );
  }
}
