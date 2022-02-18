import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: "You can lead a cow down stairs but not upstairs.", a: false),
    Question(
        q: "Approximately one quarter of human bones are in the feet.",
        a: true),
    Question(q: "A slug's blood is green", a: true),
    Question(q: "some cats are actually allergic to human", a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText!;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer!;
  }
}
