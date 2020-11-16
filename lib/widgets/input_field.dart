import 'package:flutter/material.dart';

import 'package:launch_app/constants.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key key,
    this.onChanged,
    this.keyBoardType,
    this.validator,
  }) : super(key: key);

  final Function(String) onChanged;
  final TextInputType keyBoardType;
  final Function(String) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: keyBoardType,
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: Pallete.cardColor,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Pallete.textFieldBorderColor),
          borderRadius: BorderRadius.circular(15),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
