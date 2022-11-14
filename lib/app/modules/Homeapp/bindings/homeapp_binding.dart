import 'package:get/get.dart';

import '../controllers/homeapp_controller.dart';

class HomeappBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeappController>(
      () => HomeappController(),
    );
  }
}
