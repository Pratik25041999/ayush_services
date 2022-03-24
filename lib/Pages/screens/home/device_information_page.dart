import 'package:services/Pages/screens/home/home_controller.dart';
import 'package:services/common_widget/custom_buttons.dart';
import 'package:services/common_widget/custom_text_feild.dart';
import 'package:services/common_widget/size.dart';
import 'package:services/common_widget/text.dart';
import 'package:services/utils/method.dart';
import 'package:services/utils/validations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeviceInformationPage extends StatefulWidget {
  final String brandName;
  const DeviceInformationPage({
    Key? key,
    required this.brandName,
  }) : super(key: key);

  @override
  _DeviceInformationPageState createState() => _DeviceInformationPageState();
}

class _DeviceInformationPageState extends State<DeviceInformationPage> {
  final HomeController _c = Get.put(HomeController());
  final GlobalKey<FormState> _feildValidationKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: textCS('Device information'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: horizontal(16),
          child: Form(
            key: _feildValidationKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                height(16),
                textCS('Model Number*'),
                height(10),
                CustomTextField(
                  title: 'Enter model number',
                  textController: _c.modelNumber,
                  validators: (val) => CustomValidation.enterSomething(val!),
                ),
                height(16),
                textCS('Serial Number*'),
                height(10),
                CustomTextField(
                  title: 'Enter serial number',
                  textController: _c.serialName,
                  validators: (val) => CustomValidation.enterSomething(val!),
                ),
                height(16),
                textCS('Device Issue*'),
                height(10),
                CustomTextField(
                  title: 'Description',
                  textController: _c.desctiption,
                  validators: (val) => CustomValidation.enterSomething(val!),
                  lines: 4,
                  onChanged: (e) {},
                ),
                height(16),
                customFilledButton(
                  'Raised Request',
                  true,
                  onPressed: () => _submit(),
                ),
                height(10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    Get.focusScope!.unfocus();
    if (!isFormValid(_feildValidationKey)) return;
    print('object');
  }
}
