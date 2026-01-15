import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.labelText,
    required this.obscureText,
    required this.hintText,
  });

  final String labelText;
  final bool obscureText;
  final String hintText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscure;

  @override
  void initState() {
    super.initState();
    _obscure = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText ? _obscure : false,
      style: TextStyle(fontSize: 14),
      decoration: InputDecoration(
        label: Text(widget.labelText),
        hintText: widget.hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
        suffixIcon: widget.obscureText
            ? IconButton(
                tooltip: _obscure ? 'Show password' : 'Hide password',
                icon: Icon(_obscure ? Icons.visibility_off : Icons.visibility),
                onPressed: () => setState(() => _obscure = !_obscure),
              )
            : null,
      ),
    );
  }
}
