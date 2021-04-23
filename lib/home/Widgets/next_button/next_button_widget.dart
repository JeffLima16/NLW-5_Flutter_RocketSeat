import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nlw_next_level5/core/app_colors.dart';

class NextButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;

  final VoidCallback onTap;

  const NextButton({
    Key? key,
    required this.label,
    required this.backgroundColor,
    required this.fontColor,
    required this.borderColor,
    required this.onTap,
  }) : super(key: key);

  NextButton.green({
    required String label,
    required VoidCallback onTap,
  })   : this.backgroundColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.onTap = onTap,
        this.borderColor = AppColors.green,
        this.label = label;

  NextButton.white({
    required String label,
    required VoidCallback onTap,
  })   : this.backgroundColor = AppColors.white,
        this.fontColor = AppColors.grey,
        this.onTap = onTap,
        this.borderColor = AppColors.border,
        this.label = label;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              backgroundColor,
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            side: MaterialStateProperty.all(
              BorderSide(
                color: AppColors.border,
              ),
            )),
        onPressed: onTap,
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}