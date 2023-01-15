
import 'package:counter/constants/style/style.dart';
import 'package:counter/decoration/decoration.dart';
import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({
    Key? key,
    required this.san,
    required double sizeWidth,
    required double sizeHeight,
  }) : _sizeWidth = sizeWidth, _sizeHeight = sizeHeight, super(key: key);

  final int san;
  final double _sizeWidth;
  final double _sizeHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "САН:",
            style: TextStyles.text20Black,
          ),
          Text(
            " ${san}",
            style: TextStyles.text10White,
          ),
        ],
      ),
      decoration: DecorationContainer.borderRadius12Grey,
      width: _sizeWidth,
      height: _sizeHeight,
    );
  }
}
