import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DSNYListController extends GetxController{
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController search = TextEditingController();

  final String cardText = Get.arguments;

  List<String>  dsnyList = [

    "10-1 Reporting In Service",
    "10-2 Reporting out of service",
    "10-3 Request radio test",
    "10-4 Reception poor - change location",
    "10-5 Reception poor - change location",
    "10-6 Contact by phone",
    "10-7 Return to office immediately",
  ];

  List<Map<String,String>> dsnyCodeMap =[
    {"code":"10-1",
    "title":"Reporting In Service"
    },
    {"code":"10-2",
      "title":"Reporting out of service"
    },
    {"code":"10-3",
      "title":"Request radio test"
    },
    {"code":"10-4",
      "title":"Reception poor - change location"
    },
    {"code":"10-5",
      "title":"Reception poor - change location"
    },
    {"code":"10-6",
      "title":"Contact by phone"
    },
    {"code":"10-7",
      "title":"Return to office immediately"
    },
  ];
}
