import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guided13/view_model/counter_controller.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 113, 255, 246),
        title: Text(title),
      ),
      body: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Anda dapat menekan tombol ini berkali-kali',
              ),
              Text(
                controller.counter.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/detail');
                  },
                  child: Text('Halaman Detail'))
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: controller.tambahCounter,
            tooltip: 'Increment',
            backgroundColor: const Color.fromARGB(255, 113, 255, 246),
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: controller.resetCounter,
            tooltip: 'Decrement',
            backgroundColor: const Color.fromARGB(255, 113, 255, 246),
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: controller.getSnackBar,
            tooltip: 'Get Snackbar',
            backgroundColor: const Color.fromARGB(255, 113, 255, 246),
            child: const Icon(Icons.message),
          ),
          FloatingActionButton(
            onPressed: controller.getbottomshet,
            tooltip: 'Get Bottom Sheet',
            backgroundColor: const Color.fromARGB(255, 113, 255, 246),
            child: const Icon(Icons.note_add_rounded),
          ),
        ],
      ),
    );
  }
}
