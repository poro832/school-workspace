import 'package:flutter/material.dart';

class CommonTextField extends StatefulWidget {
  final String? hintText;
  final Color? hintColor;
  final TextInputType textInputType;
  final int? maxLines;
  final Function(String)? onChanged;
  const CommonTextField({
    super.key, 
    this.hintText, 
    this.hintColor, 
    this.onChanged, 
    this.textInputType = TextInputType.text, required TextInputType TextInputType, 
    this.maxLines,
    });

  @override
  State<CommonTextField> createState() => CommonTextFieldState();
}

class CommonTextFieldState extends State<CommonTextField>{
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      keyboardType: widget.textInputType,
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: widget.hintColor
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide.none,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
      onChanged: widget.onChanged,
    );
  }
}