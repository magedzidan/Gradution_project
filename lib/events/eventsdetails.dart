import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:youth_care_application/events/events_model.dart';

class eventDetailsView extends StatelessWidget {
  EventsModel ?model;
  detailsView({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:     Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(onPressed: (){
              Get.back();
            }, icon: Icon(Icons.arrow_back,color: Colors.black,))
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 270,
              child: Image.network(
                model!.image as String,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(18),
                  child: Column(
                    children: [
                      CustomText(
                        text: model!.name as String,
                        fontsize: 26,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            width: MediaQuery.of(context).size.width * .4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.grey,
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomText(
                                  text: 'Size',
                                ),
                                CustomText(
                                  text: model!.size as String,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            width: MediaQuery.of(context).size.width * .44,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.grey,
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomText(
                                  text: 'Color',
                                ),
                                Container(
                                  width: 30,
                                  height: 20,
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(20),
                                    //color: model!.color as Color,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomText(
                        text: 'Details',
                        fontsize: 18,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomText(
                        text: model!.describtion.toString(),
                        fontsize: 18,
                        height: 1.5,
                        maxlines: 10,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CustomText(
                        text: "PRICE ",
                        fontsize: 22,
                        color: Colors.grey,
                      ),
                      CustomText(
                        text: ' \$' + model!.price.toString(),
                        color: primaryColor,
                        fontsize: 18,
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 180,
                    height: 100,
                    child: CustomButton(
                      OnPress: () {},
                      text: 'Add',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}