import 'package:counter/decoration/decoration.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final IconData? icons;
  final void Function()? onTap;
  const ButtonWidget({
    this.icons,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        child:  Icon(icons, color: Colors.white),
        decoration: DecorationContainer.borderRadius12Blue,
        width: MediaQuery.of(context).size.width * 0.1,
        height: MediaQuery.of(context).size.width * 0.1,
      ),
    );
  }
}
