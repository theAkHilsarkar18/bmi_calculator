
import 'package:get/get.dart';

class Homecontroller extends GetxController
{
  RxDouble sliderValue = 50.0.obs;
  void sliderValueOnChanged(double value)
  {
    sliderValue.value = value;
  }

}