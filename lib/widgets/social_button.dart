import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_ui/pallete.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final String iconPath;
  final double horizontalSize;
  const SocialButton({
    super.key,
    required this.text,
    required this.iconPath,
    this.horizontalSize = 100,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      label: Text(
        text,
        style: const TextStyle(
          color: Pallete.whiteColor,
          fontSize: 18,
        ),
      ),
      icon: SvgPicture.asset(
        iconPath,
        width: 25,
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalSize,
          vertical: 30,
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Pallete.borderColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
