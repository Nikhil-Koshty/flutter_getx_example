import 'package:flutter_getx_example/app/feature/counter/route/counter_route.dart';
import 'package:flutter_getx_example/app/feature/reverse_counter/repository/reverse_counter_repository.dart';
import 'package:get/get.dart';

class ReverseCounterController extends GetxController {
  final ReverseCounterRepository repo;

  ReverseCounterController(this.repo);

  void navigateToCounterScreen() {
    Get.offAllNamed(CounterRoute.name);
  }
}
