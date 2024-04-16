import 'dart:io';

import 'package:quiz/question.dart';

abstract class UserInputProcess {
  int process(List<Question> questions);
}
