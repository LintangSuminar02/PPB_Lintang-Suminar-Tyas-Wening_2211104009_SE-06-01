import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;

  void tambahCounter() => counter.value++;

  void resetCounter() => counter.value--;
  void getSnackBar() {
    Get.snackbar(
      'GetX Snackbar',
      'Ini adalah notifikasi singkat menggunakan GetX',
      backgroundColor: const Color.fromARGB(255, 113, 255, 246),
      colorText: Colors.black,
    );
  }

  void getbottomshet() {
    Get.bottomSheet(
      Container(
        height: 200,
        color: const Color.fromARGB(255, 113, 255, 246),
        child: const Center(
          child: Text(
            'Ini contoh dari getX BottomSheet.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
