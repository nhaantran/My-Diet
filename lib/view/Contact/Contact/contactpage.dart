import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:my_diet/common/values/colors.dart';
import 'package:my_diet/common/widgets/app.dart';
import 'package:my_diet/view/Contact/Widget/contact_list.dart';
import 'package:my_diet/view/Contact/Contact/contactcontroller.dart';

class ContactPage extends GetView<ContactController> {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppBar _buildAppBar() {
      return transparentAppBar(
          title: Text(
        "Contact",
        style: TextStyle(
            color: AppColors.primaryBackground,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600),
      ));
    }

    return Scaffold(
      appBar: _buildAppBar(),
      body: const ContactList(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Visibility(
              child: FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 176, 106, 231),
                onPressed: () async {
                  await controller.initChatBot();
                },
                foregroundColor: AppColors.white,
                child: const Icon(Icons.chat),
              ),
            )
          ],
        ),
      ),
    );
  }
}
