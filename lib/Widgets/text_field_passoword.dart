import 'package:flutter/material.dart';

class GlobalTextFieldPassword extends StatefulWidget {
  final double height;
  final double width;
  final TextInputType keyType;
  final double fontSize;
  final int maxLines; 
  final String hint;
  final Function(String)? onChanged;

  const GlobalTextFieldPassword({
    Key? key,
    required this.height,
    required this.width,
    required this.keyType,
    required this.fontSize,
    required this.maxLines,
    required this.hint,
    this.onChanged,
  }) : super(key: key);

  @override
  State<GlobalTextFieldPassword> createState() => _GlobalTextFieldPasswordState();
}

class _GlobalTextFieldPasswordState extends State<GlobalTextFieldPassword> {
  _GlobalTextFieldPasswordState();
  bool obscure = false;

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
        obscureText: obscure,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: 
          (){
            setState(() {
                obscure = !obscure;
            });
          }, icon: Icon(
            obscure
            ? Icons.visibility_off_outlined
            : Icons.visibility_outlined,
            color: Colors.grey)
            ),
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
