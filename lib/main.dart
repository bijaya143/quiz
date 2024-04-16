import 'package:quiz/mcq.dart';
import 'package:quiz/user_input_process.dart';
import 'package:quiz/question.dart';
import 'package:quiz/yes_no.dart';

void main() {
  // List of questions
  List<Question> questions = Question.questions();

  // Processing User Inputs

  // Multiple Choice Questions
  MCQ mcq = MCQ();
  int mcqScore = mcq.process(questions.where((e) => e.type == 'mcq').toList());

  // Yes No Questions
  YesNo yesNo = YesNo();
  int yesNoScore = yesNo
      .process(questions.where((element) => element.type == 'yesNo').toList());

  print(
      '\nYour final score: ${mcqScore + yesNoScore} out of ${questions.length}');
}
