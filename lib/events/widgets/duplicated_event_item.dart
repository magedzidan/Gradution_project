import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youth_care_application/constant/constance.dart';
import 'package:youth_care_application/events/widgets/Item_Text_container.dart';

class DuplicatedEventItem extends StatelessWidget {
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
                    'https://scontent.fcai19-5.fna.fbcdn.net/v/t39.30808-6/336701392_736869394598470_2873761669971968492_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=730e14&_nc_ohc=-Ii7kUEDOycAX8R6tyY&_nc_ht=scontent.fcai19-5.fna&oh=00_AfDc0xnQZl3Dv762u2DJVaGUHVp6-BwnUDQAoj5VaOkQDw&oe=64318C27',
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
                    'Fri,Apr 13 * 2:00 PM GMT',
                    style: TextStyle(color: secondrycolor),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Winning Of Faculty Of Computer Sceince In Last Day Of The Volley Tournament',
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
