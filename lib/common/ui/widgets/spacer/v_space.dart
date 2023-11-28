import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frontend/common/enums/size_unit.dart';

class VSpace extends StatelessWidget {
  final double size;
  final SizeUnit unit;

  const VSpace(this.size, {super.key}) : unit = SizeUnit.percent;

  const VSpace.pixels(this.size, {super.key}) : unit = SizeUnit.pixel;

  @override
  Widget build(BuildContext context) =>
      SizedBox(height: unit == SizeUnit.pixel ? size : size.h);
}
