import 'Question.dart';

class QuizBrainPy {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('1. A list in Python can\'t be modified while a tuple can.', true),
    Question('2. A list can have different types of values.', true),
    Question(
        '3. In Python, to access an element of the list, you need to specify its index number. The first element has 0 index number.',
        true),
    Question(
        '4.In Python, you can define a variable without specifying its data type?',
        true),
    Question(
        '5.The print function is used to receive data from keyboard in a  program.',
        false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
