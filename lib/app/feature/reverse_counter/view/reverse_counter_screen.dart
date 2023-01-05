import 'package:flutter/material.dart';
import 'package:flutter_getx_example/app/feature/reverse_counter/controller/reverse_counter_controller.dart';
import 'package:get/get.dart';

class ReverseCounterScreen extends StatelessWidget {
  const ReverseCounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ReverseCounterController controller = Get.find();
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Reverse Counter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: controller.navigateToCounterScreen,
                child: const Text('Go to counter screen'),
              ),
              const SizedBox(height: 16),
              const Text(
                'You have pushed the button this many times:',
              ),
              Obx(
                () => Text(
                  '${controller.repo.count.value}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: controller.repo.decrement,
          tooltip: 'Increment',
          child: const Icon(Icons.remove),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
