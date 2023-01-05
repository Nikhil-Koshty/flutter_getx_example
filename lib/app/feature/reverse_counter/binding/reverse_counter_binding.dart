import 'package:flutter_getx_example/app/feature/reverse_counter/controller/reverse_counter_controller.dart';
import 'package:flutter_getx_example/app/feature/reverse_counter/repository/reverse_counter_repository.dart';
import 'package:get/get.dart';

class ReverseCounterBinding implements Bindings {
  const ReverseCounterBinding();

  @override
  void dependencies() {
    Get.lazyPut(() => ReverseCounterController(ReverseCounterDecrementOneRepository()));
  }
}
