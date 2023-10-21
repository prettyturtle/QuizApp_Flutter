import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/QuestionsSummary/SummaryItem.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryDatas;

  const QuestionsSummary({super.key, required this.summaryDatas});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryDatas
              .map((data) => SummaryItem(summaryData: data))
              .toList(),
        ),
      ),
    );
  }
}
