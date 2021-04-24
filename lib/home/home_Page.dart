import 'package:flutter/material.dart';
import 'package:nlw_next_level5/challenge/challenge_page.dart';
import 'package:nlw_next_level5/core/core.dart';
import 'package:nlw_next_level5/home/Widgets/appBar/app_bar_widget.dart';
import 'package:nlw_next_level5/home/Widgets/level_button/level_button_widget.dart';
import 'package:nlw_next_level5/home/Widgets/quizcard/quiz_card_widget.dart';
import 'package:nlw_next_level5/home/home_controller.dart';
import 'package:nlw_next_level5/home/home_state.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  @override
  void initState() {
    super.initState();
    controller.getUser();
    controller.getQuizzes();
    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == HomeState.sucess) {
      return Scaffold(
        appBar: AppBarWidget(user: controller.user!),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 32,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    LevelButtonWidget(label: 'Easy'),
                    SizedBox(width: 10),
                    LevelButtonWidget(label: 'Middle'),
                    SizedBox(width: 10),
                    LevelButtonWidget(label: 'Hard'),
                    SizedBox(width: 10),
                    LevelButtonWidget(label: 'Expert'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  crossAxisCount: 2,
                  children: controller.quizzes!
                      .map(
                        (e) => QuizCard(
                          title: e.title,
                          completed:
                              '${e.questionAnswered}/${e.questions.length}',
                          percent: e.questionAnswered / e.questions.length,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChallengePage(
                                          questions: e.questions,
                                          title: e.title,
                                        )));
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen),
          ),
        ),
      );
    }
  }
}
