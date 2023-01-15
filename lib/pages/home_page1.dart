import 'package:counter/constants/color/colors.dart';
import 'package:counter/constants/style/style.dart';
import 'package:counter/decoration/decoration.dart';
import 'package:counter/pages/home_page2.dart';
import 'package:counter/start_screen/start_screen.dart';
import 'package:counter/widgets/button_widget.dart';
import 'package:counter/widgets/result_widget.dart';
import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  int san = 0;

  void count() {
    setState(() {
      san++;
    });
  }

  void remove() {
    setState(() {});
    if (san == 0) {
      san++;
    }
    san = san - 1;
  }

  @override
  Widget build(BuildContext context) {
    final _sizeHeight = MediaQuery.of(context).size.height * 0.06;
    final _sizeWidth = MediaQuery.of(context).size.width * 0.9;
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        backgroundColor: AppColors.appColor,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Тапшырма 01",
          style: TextStyles.text20Black,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage2(can: san)));
              },
              child: ResultWidget(
                  san: san, sizeWidth: _sizeWidth, sizeHeight: _sizeHeight),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWidget(
                  onTap: remove,
                  icons: Icons.remove,
                ),
                const SizedBox(width: 10.0),
                ButtonWidget(
                  onTap: count,
                  icons: Icons.add,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
