class Tennis {
  int secondPlayerScoreTimes = 0;
  int firstPlayerScoreTimes = 0;

  String score() {
    var love = 'love';
    var fifteen = 'fifteen';
    var thirty = 'thirty';
    var forty = 'forty';

    if (firstPlayerScoreTimes == 0 && secondPlayerScoreTimes == 0) {
      return '${love}_all';
    }
    if (firstPlayerScoreTimes == 1 && secondPlayerScoreTimes == 0) {
      return '${fifteen}_$love';
    }
    if (firstPlayerScoreTimes == 2 && secondPlayerScoreTimes == 0) {
      return '${thirty}_$love';
    }
    if (firstPlayerScoreTimes == 3 && secondPlayerScoreTimes == 0) {
      return '${forty}_$love';
    }
    if (firstPlayerScoreTimes == 0 && secondPlayerScoreTimes == 1) {
      return '${love}_${fifteen}';
    }
    if (firstPlayerScoreTimes == 0 && secondPlayerScoreTimes == 2) {
      return '${love}_$thirty';
    }
    if (firstPlayerScoreTimes == 0 && secondPlayerScoreTimes == 3) {
      return '${love}_${forty}';
    }
    if (firstPlayerScoreTimes == 1 && secondPlayerScoreTimes == 1) {
      return '${fifteen}_all';
    }
    if (firstPlayerScoreTimes == 2 && secondPlayerScoreTimes == 2) {
      return '${thirty}_all';
    }
    if (firstPlayerScoreTimes == 3 && secondPlayerScoreTimes == 3) {
      return 'deuce';
    }
    if (firstPlayerScoreTimes == 4 && secondPlayerScoreTimes == 4) {
      return 'deuce';
    }
    if (firstPlayerScoreTimes == 4 && secondPlayerScoreTimes == 3) {
      return 'Andy_adv';
    }
    if (firstPlayerScoreTimes == 3 && secondPlayerScoreTimes == 4) {
      return 'Josh_adv';
    }
    if (firstPlayerScoreTimes == 5 && secondPlayerScoreTimes == 3) {
      return 'Andy_win';
    }
    if (firstPlayerScoreTimes == 3 && secondPlayerScoreTimes == 5) {
      return 'Josh_win';
    }
    return null;
  }

  void firstPlayerScore() {
    firstPlayerScoreTimes++;
  }

  void secondPlayerScore() {
    secondPlayerScoreTimes++;
  }
}
