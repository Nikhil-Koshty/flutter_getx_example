import 'package:get/get.dart';

abstract class CounterRepository {
  const CounterRepository();

  Rx<int> get count;

  void increment();
}

class CounterIncrementOneRepository extends CounterRepository {
  CounterIncrementOneRepository();

  @override
  final Rx<int> count = 0.obs;
  final int _incrementValue = 1;

  @override
  void increment() => count.value += _incrementValue;
}
