import 'package:nlw_next_level5/home/home_state.dart';
import 'package:nlw_next_level5/shared/Widgets/progress_indicator/models/quiz_model.dart';
import 'package:nlw_next_level5/shared/Widgets/progress_indicator/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;
  UserModel? user;
  List<QuizModel>? quizzes;
}
