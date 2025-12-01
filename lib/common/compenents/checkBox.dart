import 'package:dantol_market_app/common/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Checkbox extends StatelessWidget {
  final bool isChecked;
  final String label;
  final Function() toggleCallBack;
  const Checkbox({
    super.key,
    this.isChecked = false,
    required this.label,
    required this.toggleCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCallBack,
      child: Row(
        children: [
          Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            border: Border.all(color: isChecked 
              ? const Color(0xffED7738) 
              : const Color(0xff42464E)
            ),
              color: isChecked
              ? const Color(0xffFD6F1F)
              : const Color(0xff3C3C3E).withOpacity(0)),
            width: 24,
            height: 24,
            child: isChecked
            ? Padding(
              padding: const EdgeInsets.all(5.0),
              child: SvgPicture.asset('assets/svg/icons/check.svg'), 
            )
            : Container()
          ),
          const SizedBox(width: 7),
          AppFont(
            label,
            size: 16,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}