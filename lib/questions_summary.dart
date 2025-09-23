import 'package:flutter/material.dart'; 


class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(children: summaryData.map((data) {
      return Row(children: [
          Text(((data['question'] as int) + 1).toString()),
          Column(children: [
            Text(data['question'] as String),
            SizedBox(height: 5),
            Text(data['user_answer'] as String), //shown users answer
            Text(data['correct_answer'] as String), //below show the correct answer
          ],),
      ],);
    },
    ).toList(),
    );
  }
}