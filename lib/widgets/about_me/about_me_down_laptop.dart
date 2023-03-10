import 'package:flutter/material.dart';
import 'package:portfolio/styles/dimensions.dart';
import 'package:portfolio/util/screen_break_points.dart';
import 'package:portfolio/widgets/about_me/about_me_description.dart';
import 'package:portfolio/widgets/about_me/horizontal_introduction_box.dart';
import 'package:portfolio/widgets/about_me/vertical_introduction_box.dart';
import 'package:sizer/sizer.dart';

class ContentDownLaptop extends StatelessWidget {
  const ContentDownLaptop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final biggerThanPhone =
          constraints.maxWidth > ScreenBreakPoints.phone.width;
      final introductionBox = biggerThanPhone
          ? const HorizontalIntroductionBox()
          : const VerticalIntroductionBox();
      return Padding(
        padding: biggerThanPhone ? padding32 : padding16,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            introductionBox,
            Divider(height: biggerThanPhone ? 64 : 32, thickness: 8),
            Padding(
              padding: biggerThanPhone ? paddingH16 : paddingH8,
              child: AboutMeDescription(
                textSize: biggerThanPhone ? 8.sp : 12.sp,
              ),
            )
          ],
        ),
      );
    });
  }
}
