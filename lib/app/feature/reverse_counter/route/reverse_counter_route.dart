import 'package:flutter/material.dart';
import 'package:flutter_getx_example/app/feature/reverse_counter/binding/reverse_counter_binding.dart';
import 'package:flutter_getx_example/app/feature/reverse_counter/view/reverse_counter_screen.dart';
import 'package:get/get.dart';

class ReverseCounterRoute {
  const ReverseCounterRoute._();

  static const String name = '/reverse';
  static const Bindings binding = ReverseCounterBinding();
  static const Widget screen = ReverseCounterScreen();

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
