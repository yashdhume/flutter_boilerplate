import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frontend/common/theme/app_colors.dart';
import 'package:frontend/common/utils/app_size.dart';

class BigButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color color;
  final Color textColor;
  final IconData? icon;
  final Widget? child;

  const BigButton({
    required this.text,
    required this.onPressed,
    super.key,
  })  : color = AppColors.primary,
        textColor = Colors.white,
        child = null,
        icon = null;

  const BigButton.child({
    required this.child,
    required this.onPressed,
    super.key,
    this.color = AppColors.primary,
    this.textColor = Colors.white,
  })  : text = '',
        icon = null;

  const BigButton.secondary({
    required this.text,
    required this.onPressed,
    super.key,
  })  : color = AppColors.secondary,
        textColor = AppColors.primary,
        child = null,
        icon = null;

  const BigButton.error({
    required this.text,
    required this.onPressed,
    super.key,
  })  : color = AppColors.error,
        textColor = Colors.white,
        child = null,
        icon = null;

  const BigButton.icon({
    required this.text,
    required this.onPressed,
    required this.icon,
    super.key,
  })  : color = AppColors.primary,
        textColor = Colors.white,
        child = null;

  Text _textWidget() {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w700,
        fontSize: 17,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.width(context),
      margin: EdgeInsets.symmetric(horizontal: 0.05.w),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0.03.w),
          child: child ??
              ((icon == null)
                  ? _textWidget()
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          icon,
                          color: textColor,
                        ),
                        const SizedBox(width: 10),
                        _textWidget(),
                      ],
                    )),
        ),
      ),
    );
  }
}
