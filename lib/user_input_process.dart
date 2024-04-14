import 'dart:io';

import 'package:quiz/question.dart';

class UserInputProcess {
  static process(List<Question> questions) {
    int score = 0;

    for (var i = 0; i < questions.length; i++) {
      var question = questions[i].name;
      var options = questions[i].value;
      var correctAnswerIndex = questions[i].answerIndex;

      // Display the question
      print('Question ${i + 1}: $question');

      // Display options
      for (var j = 0; j < options.length; j++) {
        print('${j + 1}. ${options[j]}');
      }

      // Get user input
      stdout.write('Enter your answer (1-${options.length}): ');
      var userInput = stdin.readLineSync();

      // Validate user input
      if (userInput != null) {
        var userAnswerIndex = int.tryParse(userInput) ?? 0;
        userAnswerIndex--; // Adjust for zero-based indexing

        // Check if the answer is correct
        if (userAnswerIndex == correctAnswerIndex) {
          print('Correct!');
          score++;
        } else {
          print(
              'Incorrect. The correct answer is: ${options[correctAnswerIndex]}');
        }
      }
    }
    print('\nYour final score: $score out of ${questions.length}');
  }
}
