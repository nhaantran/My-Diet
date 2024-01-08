// import 'package:flutter/material.dart';

// class IconToggle extends StatefulWidget {
//   bool isActive = true;
//   final Icon active;
//   final Icon deactive;
//   final Function(bool) onChanged;

//   IconToggle(
//       {required this.isActive,
//       required this.active,
//       required this.deactive,
//       required this.onChanged})
//       : assert(isActive != null),
//         assert(active != null),
//         assert(deactive != null);

//   @override
//   _IconToggleState createState() => _IconToggleState();
// }

// class _IconToggleState extends State<IconToggle> {
//   bool isActive = false;

//   _showIcon() {
//     print("showIcon");
//     return isActive ? widget.active : widget.deactive;
//   }

//   @override
//   void initState() {
//     super.initState();
//     isActive = widget.isActive;
//   }

//   /*_toggle() {
//     print("toggle");
//     setState(() {
//       widget.isActive = !widget.isActive;
//       if (widget.onChanged != null) widget.onChanged(widget.isActive);
//     });
//   }*/
//   @override
//   void didUpdateWidget(IconToggle oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     print("didUpdateWidget ${isActive}");
//     isActive = !isActive;
//     if (widget.onChanged != null) widget.onChanged(isActive);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _showIcon();
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_diet/view/food/foodcontroller.dart';

// class IconToggle extends StatelessWidget {
//   final RxBool isActive;
//   final Icon active;
//   final Icon deactive;
//   final Function(bool) onChanged;

//   IconToggle({
//     required this.isActive,
//     required this.active,
//     required this.deactive,
//     required this.onChanged,
//   })  : assert(isActive != null),
//         assert(active != null),
//         assert(deactive != null);

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<IconToggleController>(
//       init: IconToggleController(),
//       builder: (controller) {
//         return Obx(() {
//           return controller.isActive.value ? active : deactive;
//         });
//       },
//     );
//   }
// }

// class IconToggleController extends GetxController {
//   RxBool isActive = true.obs;

//   void toggleActive() {
//     isActive.toggle();
//   }
// }

class IconToggleController extends GetxController {
  RxBool isActive = false.obs;

  void toggleActive() {
    isActive.toggle();
    print("???");
  }
}

class IconToggle extends StatelessWidget {
  final IconToggleController controller;
  final Icon active;
  final Icon deactive;
  final Function(bool) onChanged;

  IconToggle({
    required this.controller,
    required this.active,
    required this.deactive,
    required this.onChanged,
  })  : assert(controller != null),
        assert(active != null),
        assert(deactive != null);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IconToggleController>(
      init: controller,
      builder: (controller) {
        return Obx(() => GestureDetector(
              onTap: () {
                controller.toggleActive();
                onChanged(controller.isActive.value);
              },
              child: controller.isActive.value ? active : deactive,
            ));
      },
    );
  }
}
