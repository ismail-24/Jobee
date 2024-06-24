import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.number, required this.track});
  final String number, track;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 130,
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: const Color(0x33E6EAFA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            track,
            style: const TextStyle(
              color: Color(0xFF090F24),
              fontSize: 18,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10), // Decreased height
          Text(
            'Tanta, Mansoura, Mahalia, Belkas, 13 more',
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Montserrat',
            ),
          ),

          const SizedBox(height: 10), // Decreased height
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                number,
                style: const TextStyle(
                  color: Color(0xFF072AC8),
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                'positions',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Image.asset('assets/jobs_icons/card_icon/arrow.png')
            ],
          ),
        ],
      ),
    );
  }
}
