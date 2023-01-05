import 'package:flutter/material.dart';
import 'package:flutter_getx_example/app/feature/counter/route/counter_route.dart';
import 'package:flutter_getx_example/app/feature/reverse_counter/route/reverse_counter_route.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Getx Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: CounterRoute.name,
      getPages: [
        CounterRoute.page,
        ReverseCounterRoute.page,
      ],
    );
  }
}
