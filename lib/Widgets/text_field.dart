import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    required this.hint, this.onChanged,
  }) : super(key: key);

  @override
  State<GlobalTextField> createState() => _GlobalTextFieldState();
}

class _GlobalTextFieldState extends State<GlobalTextField> {
  _GlobalTextFieldState();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: TextField(
        onChanged: widget.onChanged,
        keyboardType: widget.keyType,
        autocorrect: true,
        style: TextStyle(
          fontFamily: 'lato',
          fontSize: widget.fontSize,
        ),
        maxLines: widget.maxLines,
        obscureText: widget.isPassword,
        decoration: InputDecoration(
            hintText: widget.hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red))),
      ),
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.black, blurRadius: 4, offset: Offset(0, 4))
      ]),
    );
  }
}
