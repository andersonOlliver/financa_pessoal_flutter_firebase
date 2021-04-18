import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final FocusNode? focusNode;
  final String? labelText;
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldValidator<String>? validator;
  final TextInputAction? textInputAction;

  PasswordField({
    this.focusNode,
    this.onChanged,
    this.labelText,
    this.hintText,
    this.onFieldSubmitted,
    this.validator,
    this.textInputAction,
  });

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        keyboardType: TextInputType.text,
        focusNode: this.widget.focusNode,
        onChanged: widget.onChanged,
        obscureText: !_visible,
        textInputAction: this.widget.textInputAction,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: this.widget.labelText,
            hintText: this.widget.hintText,
            suffixIcon: IconButton(
              icon: Icon(_visible
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined),
              onPressed: () {
                setState(() {
                  _visible = !_visible;
                });
              },
            )),
        validator: this.widget.validator,
        onFieldSubmitted: this.widget.onFieldSubmitted,
      ),
    );
  }
}
