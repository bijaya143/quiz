import 'dart:io';

import 'package:quiz/question.dart';
import 'package:quiz/user_input_process.dart';

class YesNo implements UserInputProcess {
  @override
  process(List<Question> questions) {
    int score = 0;

    for (var i = 0; i < questions.length; i++) {
      var question = questions[i].name;
      String? correctAnswer = questions[i].answer;

      // Display the question
      print('Question ${i + 1}: $question');

      // Get user input
      stdout.write('Enter your answer (yes/no): ');
      var userInput = stdin.readLineSync();

      // Validate user input
      if (userInput != null) {
        var userAnswer = userInput.toLowerCase();

        // Check if the answer is correct
        if ((userAnswer == correctAnswer)) {
          print('Correct!');
          score++;
        } else {
          print('Incorrect. The correct answer is: ${correctAnswer}');
        }
      }
    }
    return score;
  }
}
