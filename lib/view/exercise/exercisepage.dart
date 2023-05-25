import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_diet/common/routes/names.dart';

import '../../common/values/colors.dart';
import 'exercisecontroller.dart';

class ExercisePage extends GetView<ExerciseController> {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: AppColors.brand05,
          onPressed: () {
            //Navigator.of(context).pop();
            Get.back();
            //Get.offNamed(AppRoutes.Exercise);
          },
        ),
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Add Exercise",
          style: TextStyle(
              color: AppColors.fontDark,
              fontFamily: "Gothic",
              fontWeight: FontWeight.w700),
        ),
        backgroundColor: AppColors.white,
      ),
      body: Column(
        children: [
          Container(
            height: 60.h,
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {},
                ),
                hintText: "Search all exercises...",
                alignLabelWithHint: true,
                border: const OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 1, color: AppColors.brand05),
                    borderRadius: BorderRadius.circular(20.0) //<-- SEE HERE
                    ),
              ),
            ),
          ),
          Container(
            color: AppColors.brand10,
            child: SingleChildScrollView(),
          )
        ],
      ),
    );
  }
}