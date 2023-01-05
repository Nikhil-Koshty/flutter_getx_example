import 'package:flutter_getx_example/app/feature/counter/controller/counter_controller.dart';
import 'package:flutter_getx_example/app/feature/counter/repository/counter_repository.dart';
import 'package:get/get.dart';

class CounterBinding implements Bindings {
  const CounterBinding();

  @override
  void dependencies() {
    Get.lazyPut(() => CounterController(CounterIncrementOneRepository()));
  }
}
