import 'package:flutter/material.dart';
import 'package:nlw_next_level5/home/Widgets/quest_indicador/quest_indicado_widget.dart';
import 'package:nlw_next_level5/home/Widgets/quiz/quiz_widget.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          top: true,
          child: QuestIndicatorWidget(),
        ),
      ),
      body: QuizWidget(
        title: "O que o flutter faz em sua totalidade",
      ),
    );
  }
}
