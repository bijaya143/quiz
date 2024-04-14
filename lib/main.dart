import 'package:quiz/user_input_process.dart';
import 'package:quiz/question.dart';

void main() {
  // List of questions
  List<Question> questions = Question.questions();

  // Processing User Inputs
  UserInputProcess.process(questions);
}
