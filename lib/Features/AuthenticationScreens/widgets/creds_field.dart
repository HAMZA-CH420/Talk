import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talk/UiHelper/ColorPalette/color_palette.dart';

class CredentialsTextField extends StatefulWidget {
  const CredentialsTextField({
    super.key,
    required this.labelText,
    required this.controller,
    required this.isPassword,
    required this.validator,
  });
  final String labelText;
  final TextEditingController controller;
  final bool isPassword;
  final FormFieldValidator validator;
  @override
  State<CredentialsTextField> createState() => _CredentialsTextFieldState();
}

class _CredentialsTextFieldState extends State<CredentialsTextField> {
  bool showPass = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade500),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        validator: widget.validator,
        controller: widget.controller,
        obscureText: widget.isPassword ? showPass : false,
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      showPass = !showPass;
                    });
                  },
                  icon: Icon(
                    showPass
                        ? CupertinoIcons.eye_fill
                        : CupertinoIcons.eye_slash_fill,
                    color: Colors.grey,
                  ),
                )
              : null,
          labelText: widget.labelText,
          labelStyle: TextStyle(color: Palette.primaryColor),
        ),
      ),
    );
  }
}
