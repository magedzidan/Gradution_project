import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemTextContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(24),topRight: Radius.circular(24))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Text(
          'Last Chance For Joining O6u Football Team Trials',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.black.withOpacity(0.8),
              letterSpacing: .5,
              fontSize: 22,
              fontWeight: FontWeight.w800,

            ),
          ),
          maxLines: 2,
          textAlign: TextAlign.start,

        ),
      ),
    );
  }
}
