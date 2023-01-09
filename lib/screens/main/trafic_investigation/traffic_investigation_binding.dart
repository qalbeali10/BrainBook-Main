import 'package:brainbook/screens/main/trafic_investigation/trafic_investigation_controller.dart';
import 'package:get/get.dart';

class TrafficInvestigationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TraficInvestigationController());
  }
}
