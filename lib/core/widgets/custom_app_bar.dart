import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/core/utils/styles.dart';

AppBar buildAppBar({
  String? title,
  final void Function()? onTap,
}) {
  return AppBar(
    title: Text(
      title ?? '',
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Center(
      child: GestureDetector(
        onTap: onTap,
        child: SvgPicture.asset(
          'assets/images/arrow.svg',
        ),
      ),
    ),
  );
}
