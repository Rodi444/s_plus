import 'package:flutter/material.dart';

class GlobalTextField extends StatefulWidget {
  final double height;
  final double width;
  final TextInputType keyType;
  final double fontSize;
  final int maxLines;
  final bool isPassword;
  final String hint;
  final Function(String)? onChanged;

  const GlobalTextField({
    Key? key,
    required this.height,
    required this.width,
    required this.keyType,
    required this.fontSize,
    required this.maxLines,
    required this.isPassword,
    required this.hint,
    this.onChanged,
  }) : super(key: key);

  @override
  State<GlobalTextField> createState() => _GlobalTextFieldState();
}

class _GlobalTextFieldState extends State<GlobalTextField> {
  _GlobalTextFieldState();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextField(
        onChanged: widget.onChanged,
        keyboardType: widget.keyType,
        autocorrect: true,
        style: TextStyle(
          fontFamily: 'lato',
          fontSize: widget.fontSize,
          color: const Color.fromARGB(255, 0, 0, 0),
        ),
        maxLines: widget.maxLines,
        obscureText: widget.isPassword,
        decoration: InputDecoration(
          filled: true,
          hintText: widget.hint,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
