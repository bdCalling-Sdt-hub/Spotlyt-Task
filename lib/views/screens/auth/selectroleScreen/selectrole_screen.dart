import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spotlyt_task/utils/app_colors.dart';
import 'package:spotlyt_task/utils/app_strings.dart';
import 'package:spotlyt_task/views/widgets/custom_button.dart';
import 'package:spotlyt_task/views/widgets/custom_text.dart';
import '../../../../routes/app_routes.dart';

class SelectroleScreen extends StatelessWidget {
  const SelectroleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //=============================> Text Section <=============================
              CustomText(
                text: AppString.areYouLooking,
                fontName: 'Lato/R 16',
                bottom: 4.h,
                maxline: 3,
              ),
              CustomText(
                text: AppString.orToEarn,
                fontName: 'Lato/R 16',
                bottom: 4.h,
                maxline: 3,
              ),
              //=============================> Button Section <=============================
              SizedBox(height: 24.h),

              CustomButton(
                  title: AppString.requester,
                  onpress: () {
                    Get.offAllNamed(AppRoutes.requesterBottomNavBar);
                  }),

              SizedBox(height: 16.h),
              CustomButton(
                  title: AppString.tasker,
                  titlecolor: AppColors.primaryColor,
                  color: Colors.white,
                  onpress: () {
                    Get.offAllNamed(AppRoutes.taskerBottomNavBar);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
