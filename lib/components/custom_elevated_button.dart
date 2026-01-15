import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    this.buttonColor,
    this.textColor,
    this.expand = false,
    this.isLoading = false,
    this.icon,
    this.elevation,
    this.borderRadius = 4,
    this.padding,
  });

  final VoidCallback onPressed;
  final String buttonText;
  final Color? buttonColor;
  final Color? textColor;
  final bool expand;
  final bool isLoading;
  final IconData? icon;
  final double? elevation;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bg = buttonColor ?? theme.colorScheme.primary;
    final fg = textColor ?? theme.colorScheme.onPrimary;

    final buttonChild = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (isLoading) ...[
          SizedBox(
            width: 18,
            height: 18,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(fg),
            ),
          ),
          const SizedBox(width: 8),
        ] else if (icon != null) ...[
          Icon(icon, size: 18, color: fg),
          const SizedBox(width: 8),
        ],
        Text(
          buttonText,
          style: theme.textTheme.labelLarge?.copyWith(
            color: fg,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );

    final button = ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bg,
        foregroundColor: fg,
        elevation: elevation ?? 2,
        padding:
            padding ?? const EdgeInsets.all(18),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: buttonChild,
    );

    if (expand) {
      return SizedBox(width: double.infinity, child: button);
    }
    return button;
  }
}
