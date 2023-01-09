import 'package:get/get.dart';

import 'subscription_survey_controller.dart';

class SubscriptionSurveyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubscriptionSurveyController());
  }
}
