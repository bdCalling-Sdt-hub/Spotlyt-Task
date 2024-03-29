import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotlyt_task/utils/app_colors.dart';
import 'package:spotlyt_task/utils/app_dimentions.dart';

import '../../../../utils/app_strings.dart';
import '../../../widgets/custom_text.dart';

class RequesterTaskDetailsScreen extends StatelessWidget {
  const RequesterTaskDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///----------------------------app bar section---------------------------->
      appBar: AppBar(
        title: CustomText(
          text: AppString.taskDetails,
          fontsize: 18.h,
          fontWeight: FontWeight.w500,
        ),
      ),

      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///-----------------------------task name----------------------->
            CustomText(
              text: AppString.taskName,
              fontWeight: FontWeight.w500,
              bottom: 16.h,
              top: 24.h,
            ),

            ///---------------------------facebook post like text------------------------->
            CustomText(
              text: "Facebook Post Like ( 5000 )",
              fontWeight: FontWeight.w500,
              bottom: 24.h,
            ),

            ///--------------------------task link------------------------->
            CustomText(
              text: AppString.taskLink,
              fontWeight: FontWeight.w500,
              bottom: 16.h,
            ),

            ///--------------------------link text---------------------------->

            SelectableText(
              "https://www.Facebook.com/Image Post",
              style: TextStyle(
                  fontSize: 16.h,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff0FD726)),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 24.h,
            ),

            ///---------------------------------task post text-------------------------->
            CustomText(
              text: AppString.taskPost,
              fontWeight: FontWeight.w500,
              bottom: 16.h,
            ),

            ///----------------------------------date text----------------------->
            CustomText(
              text: "Friday 01 Feb, 2024",
              fontWeight: FontWeight.w500,
              bottom: 24.h,
            ),
          ],
        ),
      ),
    );
  }
}
