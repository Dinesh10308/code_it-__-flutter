import 'Question.dart';

class QuizBrainJava {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        '1.In an instance method or a constructor, "this" is a reference to the current object',
        true),
    Question('2.Garbage Collection is manual process.', false),
    Question(
        '3.The JRE deletes objects when it determines that they are no longer being used. This process is called Garbage Collection.',
        true),
    Question('4.Constructor overloading is not possible in Java', false),
    Question('5.Assignment operator is evaluated Left to Right.', false),
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
