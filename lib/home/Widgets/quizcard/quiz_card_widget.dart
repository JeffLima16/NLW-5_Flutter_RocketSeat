import 'package:flutter/material.dart';
import 'package:nlw_next_level5/core/core.dart';
import 'package:nlw_next_level5/shared/Widgets/progress_indicator/progress_indicator_widget.dart';

class QuizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(color: AppColors.border),
          ),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: 60,
              child: Image.asset(AppImages.blocks),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "Gerenciamento de Estado",
              style: AppTextStyles.heading15,
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "3/10",
                    style: AppTextStyles.body11,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: ProgressIndicatorWidget(
                    value: 0.3,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
