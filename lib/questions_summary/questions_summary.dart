import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionsSummary(this.summaryData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return SummaryItem(data);
          }).toList(),
        ),
      ),
    );
  }
}


