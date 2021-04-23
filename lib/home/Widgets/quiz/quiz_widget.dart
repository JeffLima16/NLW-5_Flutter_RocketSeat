import 'package:flutter/material.dart';
import 'package:nlw_next_level5/core/app_text_styles.dart';
import 'package:nlw_next_level5/home/Widgets/awnser/awnser_widget.dart';
import 'package:nlw_next_level5/shared/Widgets/progress_indicator/models/question_model.dart';

class QuizWidget extends StatelessWidget {
  final QuestionModel questions;

  const QuizWidget({Key? key, required this.questions}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            questions.title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          ...questions.awnsers
              .map(
                (e) => AwnserWidget(isRight: e.isRight, title: e.title),
              )
              .toList(),
        ],
      ),
    );
  }
}
