import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talk/Features/HomeScreen/home_screen.dart';
import 'package:talk/UiHelper/ColorPalette/color_palette.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width,
        height: size.height / 14,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Palette.primaryColor,
        ),
        child: Text(
          "Log In",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
