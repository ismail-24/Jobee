import 'package:flutter/cupertino.dart';
import '../../../home/models/question _model.dart';
import 'check_answer_item_widget.dart';

class CheckAnswerBody extends StatelessWidget {
  const CheckAnswerBody({
    super.key,
    required this.questions,
  });
  final List<QuestionModel> questions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ListView(
        shrinkWrap: true,
        children: [
          ...questions.map(
            (e) => CheckAnswerItemModel(
              questionModel: e,
            ),
          ),
        ],
      ),
    );
  }
}
