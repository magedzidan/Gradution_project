import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youth_care_application/constant/constance.dart';
import 'package:youth_care_application/events/widgets/Item_Text_container.dart';

class EventItem extends StatelessWidget {
  /* final String title;
  final String image_url;
  final String date;
  final String? describtion;

  const EventItem({super.key, required this.title, required this.image_url, required this.date,  this.describtion});*/
  void SelectedTrip() {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white24, borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(30),
                //clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Container(

                  margin: EdgeInsets.symmetric(horizontal: 00),
                  padding: EdgeInsets.only(left: 00),
                  height: MediaQuery.of(context).size.height / 9.3,
                  width: 115,

                  child: Image.asset(
                    'assest/SPORTS.webp',
                    fit: BoxFit.fill,
                  ),
                )),
            SizedBox(
              width: 30,
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Thu,Feb 13 at 06:30 PM',
                    style: TextStyle(
                        color: secondrycolor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Grand Final of O6u Football Team',
                    maxLines: 2,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.notoSans(
                      textStyle: TextStyle(
                          fontSize: 13,
                          letterSpacing: 0.3,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[700]),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
