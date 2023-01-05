import 'package:flutter/material.dart';
import 'package:flutter_getx_example/app/feature/counter/binding/counter_binding.dart';
import 'package:flutter_getx_example/app/feature/counter/view/counter_screen.dart';
import 'package:get/get.dart';

class CounterRoute {
  const CounterRoute._();

  static const String name = '/';
  static const Bindings binding = CounterBinding();
  static const Widget screen = CounterScreen();

  static final GetPage page = GetPage(
    name: name,
    binding: binding,
    page: () => screen,
  );

  static GetPageRoute get pageRoute => GetPageRoute(
        settings: const RouteSettings(name: name),
        binding: binding,
        page: () => screen,
      );
}
