// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'location_more_information_controller.dart';

class LocationMoreInfoScreen extends GetView<LocationMoreInfoController> {
   LocationMoreInfoScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Locations",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10,),
            HeadingTextWidget(text: "More information"),
            SizedBox(height: 10,),
            Container(
              width: 350,
              margin: EdgeInsets.only(left: 7, right: 7),
              height: 200,
              // color: Colors.blue,
              child: Card(
                color: Colors.white,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:  [
                            Text(controller.infoTitleLsit[0]),
                            SizedBox(height: 15,),
                            Text(controller.infoSubtitleLsit[0],style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:  [
                            Text(controller.infoTitleLsit[1]),
                            SizedBox(height: 15,),
                            Text(controller.infoSubtitleLsit[1],style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:  [
                            Text(controller.infoTitleLsit[2]),
                            SizedBox(height: 15,),
                            Text(controller.infoSubtitleLsit[2],style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:  [
                            Text(controller.infoTitleLsit[3]),
                            SizedBox(height: 15,),
                            Text(controller.infoSubtitleLsit[3],style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:  [
                            Text(controller.infoTitleLsit[4]),
                            SizedBox(height: 15,),
                            Text(controller.infoSubtitleLsit[4],style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
                // GridView.builder(
                //         shrinkWrap: true,
                //        // padding: EdgeInsets.only(left: 10),
                //         itemCount: locationMoreInfoController.infoTitleLsit.length,
                //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //          // childAspectRatio: 2,
                //           crossAxisCount: 3,
                //           //mainAxisSpacing: 1.0,
                //          // crossAxisSpacing: 1.0,
                //         ),
                //         itemBuilder: (context, indux) {
                //           return ListTile(
                //             title: Text(locationMoreInfoController.infoTitleLsit[indux]),
                //             subtitle: Text(locationMoreInfoController.infoSubtitleLsit[indux]),
                //           );
                //         }),
              ),
            ),
            SizedBox(height: 14,),
            Divider(color: Colors.black,),
            SizedBox(height: 14,),
            HeadingTextWidget(text: "Photos"),
            SizedBox(height: 18,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              LocationPhotos(),
              LocationPhotos(),
              LocationPhotos(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class LocationPhotos extends StatelessWidget {
  const LocationPhotos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 110,
    height: 100,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage("assets/startpage/59.png"), scale: 2.5),
      color: Colors.black12,
      borderRadius: BorderRadius.circular(15),
    ),
            );
  }
}
