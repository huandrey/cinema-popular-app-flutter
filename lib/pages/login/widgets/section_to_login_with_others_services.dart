import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionToLoginWithOthersServices extends StatelessWidget {
  const SectionToLoginWithOthersServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Colors.grey.shade400,
              thickness: 0.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
            child: Text(
              'Ou continue com',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Expanded(
            child: Divider(
              color: Colors.grey.shade400,
              thickness: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
