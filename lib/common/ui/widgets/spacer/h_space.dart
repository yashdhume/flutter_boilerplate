import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frontend/common/enums/size_unit.dart';

class HSpace extends StatelessWidget {
  final double size;
  final SizeUnit unit;

  const HSpace(this.size, {super.key}) : unit = SizeUnit.percent;

  const HSpace.pixels(this.size, {super.key}) : unit = SizeUnit.pixel;

  @override
  Widget build(BuildContext context) =>
      SizedBox(width: unit == SizeUnit.pixel ? size : size.w);
}
