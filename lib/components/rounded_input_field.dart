import 'package:flutter/material.dart';
import 'package:m_placement_tracker/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final ValueChanged<String> validator;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.purple,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.purple,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
