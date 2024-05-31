import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuizAnserCard extends StatelessWidget {
  const QuizAnserCard(
      {super.key, required this.isSelected, required this.textanser});

  final bool isSelected;
  final String? textanser;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: Row(
          children: [
            Radio(
                value: true,
                groupValue: isSelected,
                activeColor: Colors.white,
                onChanged: (_) {}),
            SizedBox(
              height: 12,
            ),
            Expanded(
              child: Text("$textanser",
                  style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                      //color: Color(0xFF072AC8),
                      color: isSelected
                          ? Color(
                              0xFF072AC8,
                            )
                          : Color(0xFF090F24))),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isSelected
              ? Color(
                  0xffE6EAFA,
                )
              : Color(0xFFE6EAFA).withOpacity(0.2),
        ),
      ),
    );
  }
}
