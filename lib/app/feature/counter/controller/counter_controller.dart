import 'package:flutter_getx_example/app/feature/counter/repository/counter_repository.dart';
import 'package:flutter_getx_example/app/feature/reverse_counter/route/reverse_counter_route.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final CounterRepository repo;

  CounterController(this.repo);

  void navigateToReverseCounterScreen() {
    Get.offAllNamed(ReverseCounterRoute.name);
  }
}
