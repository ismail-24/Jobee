import 'package:flutter/material.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/pages/jobs_pages/job_information.dart';
import 'package:jobee/profile/presentation/screens/quizzes/fetures/views/widgets/devider.dart';

class JobCard extends StatefulWidget {
  JobCard(
      {super.key,
      required this.image,
      required this.company,
      required this.track});
  final String image, company, track;

  @override
  State<JobCard> createState() => _JobCardState();
}

class _JobCardState extends State<JobCard> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, JobInformationPage.id);
      },
      child: Container(
        width: double.infinity, // Increased width
        height: 145, // Increased height
        padding: const EdgeInsets.symmetric(
            horizontal: 12, vertical: 16), // Increased padding
        decoration: ShapeDecoration(
          color: const Color(0x33E6EAFA),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(widget.image,
                width: 48, height: 48), // Increased image size
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.track,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14, // Increased font size
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    widget.company,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12, // Increased font size
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/jobs_icons/job_card/location.png",
                          width: 24, height: 24), // Increased image size
                      const SizedBox(width: 8),
                      const Text(
                        'Tanta, Egypt, (Remote), Full Time',
                        style: TextStyle(
                          color: Color(0xFF626262),
                          fontSize: 12, // Increased font size
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Color(0xffBDBDBD),
                    endIndent: 0,
                    indent: 0,
                  ),
                  Container(
                    child: const Text(
                      '4 weeks ago • Over 200 applicants. 9 connections',
                      style: TextStyle(
                        color: Color(0xFF626262),
                        fontSize: 10, // Increased font size
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
              width: 30,
              child: IconButton(
                onPressed: () {
                  isPressed = !isPressed;
                  setState(() {});
                },
                icon: const Icon(Icons.bookmark_add_outlined),
                color: isPressed ? kColor : Color(0xff848484),
              ),
            ),

            // Image.asset("assets/jobs_icons/job_card/saved.png",
            //     width: 24, height: 24), // Increased image size
          ],
        ),
      ),
    );
  }
}
