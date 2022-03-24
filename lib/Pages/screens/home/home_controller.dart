import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  final brandName = ''.obs;
  TextEditingController modelNumber = TextEditingController();
  TextEditingController serialName = TextEditingController();
  TextEditingController desctiption = TextEditingController();
}
