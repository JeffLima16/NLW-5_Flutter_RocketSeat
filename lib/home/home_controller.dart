import 'package:flutter/cupertino.dart';
import 'package:nlw_next_level5/home/home_repository.dart';
import 'package:nlw_next_level5/home/home_state.dart';
import 'package:nlw_next_level5/shared/Widgets/progress_indicator/models/quiz_model.dart';
import 'package:nlw_next_level5/shared/Widgets/progress_indicator/models/user_model.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getUser() async {
    state = HomeState.loanding;
    user = await repository.getUser();
    state = HomeState.sucess;
  }

  void getQuizzes() async {
    state = HomeState.loanding;
    quizzes = await repository.getQuizzes();
    state = HomeState.sucess;
  }
}
