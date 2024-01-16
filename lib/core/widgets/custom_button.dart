import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    required this.buttonName,
    this.isLoading = false,
  });
  final void Function()? onTap;
  final String buttonName;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: ShapeDecoration(
          color: const Color(0xFF34A853),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: isLoading
            ? const CircularProgressIndicator()
            : Center(
                child: Text(
                  buttonName,
                  textAlign: TextAlign.center,
                  style: Styles.style22,
                ),
              ),
      ),
    );
  }
}
