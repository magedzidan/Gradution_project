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
    return Transform.translate(
      offset: const Offset(0, -110),
      child: Container(
        padding: EdgeInsets.only(bottom: 2),
        color: Colors.grey[100],
        child: Row(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  height: MediaQuery.of(context).size.height / 8,
                  width: 160,
                  child: Image.network(
                    'https://scontent.fcai19-5.fna.fbcdn.net/v/t39.30808-6/336872916_1515929032229733_4482093524858898430_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=730e14&_nc_ohc=2I9cLwugSv8AX8uTACU&_nc_ht=scontent.fcai19-5.fna&oh=00_AfAiq5ZDZgUFAdv9Zr3HC9_iXb4t0y9wAVb6KB6O6ZGiGQ&oe=6430B81B',
                    fit: BoxFit.fitHeight,
                  ),
                )),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sat,Apr 15 * 2:00 PM GMT',
                    style: TextStyle(color: secondrycolor),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Grand Final of O6u Football Team',
                    maxLines: 2,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    style: (TextStyle(
                        fontSize: 20, letterSpacing: 0.3)),
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