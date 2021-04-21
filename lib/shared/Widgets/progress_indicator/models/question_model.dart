import 'package:nlw_next_level5/shared/Widgets/progress_indicator/models/awnser_model.dart';

class QuestionModel {
  final String title;
  final List<AwnserModel> awnsers;

  QuestionModel({
    required this.title,
    required this.awnsers,
  }) : assert(
          awnsers.length == 4,
        );
}
