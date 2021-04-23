import 'package:flutter/material.dart';
import 'package:nlw_next_level5/home/Widgets/next_button/next_button_widget.dart';
import 'package:nlw_next_level5/home/Widgets/quest_indicador/quest_indicado_widget.dart';
import 'package:nlw_next_level5/home/Widgets/quiz/quiz_widget.dart';
import 'package:nlw_next_level5/shared/Widgets/progress_indicator/models/question_model.dart';

class ChallengePage extends StatefulWidget {
  final List<QuestionModel> questions;
  const ChallengePage({Key? key, required this.questions}) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86),
        child: SafeArea(
          top: true,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                }),
            QuestIndicatorWidget(),
          ]),
        ),
      ),
      body: QuizWidget(
        questions: widget.questions[0],
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  child: NextButton.white(
                label: "Fácil",
                onTap: () {},
              )),
              SizedBox(
                width: 7,
              ),
              Expanded(
                child: NextButton.green(
                  label: "Confirmar",
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
