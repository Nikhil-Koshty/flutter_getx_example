import 'package:get/get.dart';

abstract class ReverseCounterRepository {
  const ReverseCounterRepository();

  Rx<int> get count;

  void decrement();
}

class ReverseCounterDecrementOneRepository extends ReverseCounterRepository {
  ReverseCounterDecrementOneRepository();

  @override
  final Rx<int> count = 0.obs;
  final int _decrementValue = 1;

  @override
  void decrement() => count.value -= _decrementValue;
}
