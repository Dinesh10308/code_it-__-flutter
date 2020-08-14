import 'Question.dart';

class QuizBrainC {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        '1.Only character or integer can be used in switch statement', true),
    Question('2.The return type of malloc function is void.', false),
    Question('3.#define is known as preprocessor compiler directive.', true),
    Question('4.Algorithm is the graphical representation of logic', false),
    Question('5.sizeof( ) is a function that returns the size of a variable.',
        false),
    Question(
        '6.The ++ operator increments the operand by 1, whereas, the -- operator decrements it by 1.',
        true),
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
