/*
Create a class Grade with a private field _score.
- The setter should only accept values 0–100, otherwise print 'Invalid score'.
- Add a getter and a computed getter isPass that returns true if score ≥ 50.
*/

class Grade {
  int _score = 0;
  int get score => _score;
  bool get isPass => _score >= 50;

  set score(int value) {
    if (value >= 0 && value <= 100) {
      this._score = value;
    } else {
      print('Invalid score');
      _score = 0;
    }
  }
}
