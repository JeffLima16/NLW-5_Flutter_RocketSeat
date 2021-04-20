import 'package:flutter/material.dart';
import 'package:nlw_next_level5/core/app_text_styles.dart';
import 'package:nlw_next_level5/shared/Widgets/progress_indicator/progress_indicator_widget.dart';

class QuestIndicatorWidget extends StatefulWidget {
  @override
  _QuestIndicatorWidgetState createState() => _QuestIndicatorWidgetState();
}

class _QuestIndicatorWidgetState extends State<QuestIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Questão 04",
                style: AppTextStyles.body,
              ),
              Text(
                "de 10",
                style: AppTextStyles.body,
              ),
            ],
          ),
          SizedBox(height: 16),
          ProgressIndicatorWidget(value: 0.4),
        ],
      ),
    );
  }
}
