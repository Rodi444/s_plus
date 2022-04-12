import 'package:flutter/material.dart';

class TextFieldBox extends StatelessWidget {
  final double vertical;
  final String hint;

  TextFieldBox({
  required this.hint,
  required this.vertical,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget>[
         Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: TextField(
            textAlignVertical: TextAlignVertical.top,       
            minLines: 1,
            maxLines: 10,
            keyboardType: TextInputType.multiline,
            textAlign: TextAlign.start,
            
            decoration: InputDecoration(
              
              alignLabelWithHint: true,
              contentPadding:  EdgeInsets.symmetric(vertical: vertical, horizontal: 10),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),//BORDA
              ),
              hintText: hint,
            ),
          ),
        ),
      ],
    );
  }
}