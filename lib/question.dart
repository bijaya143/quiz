class Question {
  final String? questionId;
  final String name;
  final List<String> value;
  final int answerIndex;

  Question(
      {required this.name,
      this.questionId,
      required this.value,
      required this.answerIndex});

  static List<Question> questions() {
    //questions
    Question qOne = Question(
        name: 'What is the capital city of Nepal?',
        value: ['Kathmandu', 'Pokhara', 'Lalitpur', 'Jhapa'],
        answerIndex: 0);
    Question qTwo = Question(
        name: 'What is the height of Mount Everest?',
        value: ['8848', '1234', '4567', '1987'],
        answerIndex: 0);
    Question qThree = Question(
        name: 'What is the old name of Japan?',
        value: ['Kippon', 'Nippon', 'Tokyo', 'Arigato'],
        answerIndex: 1);
    Question qFour = Question(
        name: 'What is the third planet of a solar system?',
        value: ['Mercury', 'Venus', 'Earth', 'Pluto'],
        answerIndex: 2);
    Question qFive = Question(
        name: 'Who is CR of batch 32B?',
        value: ['David', 'Bidya', 'Bijaya', 'Ayush'],
        answerIndex: 1);
    return [qOne, qTwo, qThree, qFour, qFive];
  }
}
