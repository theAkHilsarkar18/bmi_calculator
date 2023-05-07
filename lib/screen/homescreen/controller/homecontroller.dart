
import 'package:get/get.dart';

class Homecontroller extends GetxController
{
  RxDouble sliderValue = 50.0.obs;
  void sliderValueOnChanged(double value)
  {
    sliderValue.value = value;
  }

  // for weight ++,--
  RxInt weightValue = 0.obs;
  void weightValueIncreament()
  {
    weightValue.value++;
  }
  void weightValueDecreament()
  {
    if(weightValue.value>=1)
      {
        weightValue.value--;
      }
  }

  // for age ++,--
  RxInt ageValue = 0.obs;
  void ageValueIncreament()
  {
    if(ageValue.value<=100)
      {
        ageValue.value++;
      }

  }
  void ageValueDecreament()
  {
    if(ageValue.value>=1)
      {
        ageValue.value--;
      }

  }

  // male female choice
  RxBool isMale = true.obs;
  void maleFemaleChange()
  {
    isMale.value = !isMale.value;
  }

  // bmi calculation formula
  RxDouble bmiResult = 0.0.obs;
  void bmiResultCalculation()
  {
    bmiResult.value = (weightValue.value/sliderValue.value/sliderValue.value)*10000;
    print('${bmiResult.toStringAsPrecision(2)}===========================================');
  }

}