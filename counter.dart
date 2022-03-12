
import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;

  //Sore throat counter
  void incrementSoreThroat() {
    count + 15;
  }

  //Shortness of breath
  void incrementBreathShortness() {
    count + 15;
  }

  //Headache
  void incrementHeadache() {
    count + 10;
  }

  //Fatigue
  void incrementFatigue() {
    count + 10;
  }

  //Fever
  void incrementFever() {
    count + 15;
  }

  //Dry cough
  void incrementDryCough() {
    count + 15;
  }

  //Diarrhea
  void incrementDiarrhea() {
    count + 10;
  }

  //Hemoptysis
  void incrementHemoptysis() {
    count + 10;
  }
  
}