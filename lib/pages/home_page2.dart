import 'package:counter/constants/color/colors.dart';
import 'package:counter/constants/style/style.dart';
import 'package:counter/decoration/decoration.dart';
import 'package:counter/widgets/result_widget.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  final int can;
  const HomePage2({super.key, required this.can});

  @override
  Widget build(BuildContext context) {
    final _sizeHeight = MediaQuery.of(context).size.height * 0.06;
    final _sizeWidth = MediaQuery.of(context).size.width * 0.9;
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.appColor,
          elevation: 0.0,
          title: Text(
            "Тапшырма 02",
            style: TextStyles.text20Black,
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ResultWidget(
                  san: can, sizeWidth: _sizeWidth, sizeHeight: _sizeHeight),
              // child: Container(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text("САН:", style: TextStyles.text20Black),
              //       Text(" ${can}", style: TextStyles.text10White),
              //     ],
              //   ),
              //   decoration: DecorationContainer.borderRadius12Grey,
              //   width: MediaQuery.of(context).size.width * 0.8,
              //   height: MediaQuery.of(context).size.height * 0.06,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
