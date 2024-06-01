import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DayContent extends StatelessWidget {
  final String day;
  final String date;
  bool today;

  DayContent({
    super.key,
    required this.day,
    required this.date,
    this.today = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 60,
        width: 50,
        decoration: BoxDecoration(
          color: today ? Colors.red : Colors.grey.shade800,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Center(
            child: Column(
              children: [
                Text(day,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                Text(
                  date,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
