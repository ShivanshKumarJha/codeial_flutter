import 'package:flutter/material.dart';

class ActionButtonWithIcon extends StatelessWidget {
  const ActionButtonWithIcon({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.label,
  });

  final VoidCallback onPressed;
  final Icon icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(8),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 12.0,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [icon, const SizedBox(width: 6), Text(label)],
            ),
          ),
        ),
      ),
    );
  }
}
