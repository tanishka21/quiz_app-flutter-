import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map((data) {
          return Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(217, 231, 104, 184), ),

                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),

                child: Text(
                  ((data['question_index'] as int) + 1).toString(),
                  textScaler: const TextScaler.linear(02),

                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      data['question'] as String,
                      textAlign: TextAlign.left, style: const TextStyle(color: Colors.white60, fontWeight: FontWeight.bold,fontSize: 20, ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      data['user_answer'] as String,
                      textAlign:  TextAlign.start,style: const TextStyle(
                      color: Color.fromARGB(255, 63, 5, 111),fontWeight: FontWeight.bold, fontSize: 15,
                    ),
                    ),
                    Text(
                      data['correct_answer'] as String,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 69, 178, 228)),
                    ),
                  ],
                ),
              )
            ],
          );
        }).toList()),
      ),
    );
  }
}
