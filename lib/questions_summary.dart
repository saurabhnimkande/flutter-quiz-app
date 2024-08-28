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
          children: summaryData.map(
            (data) {
              return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10, top: 5),
                      child: CircleAvatar(
                          maxRadius: 15,
                          backgroundColor:
                              data["user_answer"] == data["correct_answer"] ? const Color.fromARGB(255, 154, 198, 255) :const Color.fromARGB(255, 246, 113, 255),
                          child: Center(
                            child: Text(
                              ((data["question_index"] as int) + 1).toString(),
                            ),
                          )),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data["question"] as String,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            data["user_answer"] as String,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 214, 164, 255),
                                fontSize: 14),
                          ),
                          Text(
                            data["correct_answer"] as String,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 154, 198, 255),
                                fontSize: 14),
                          )
                        ],
                      ),
                    )
                  ]);
            },
          ).toList(),
        ),
      ),
    );
  }
}
