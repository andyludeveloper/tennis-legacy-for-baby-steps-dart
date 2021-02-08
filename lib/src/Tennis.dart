class Tennis {
  int secondPlayerScoreTimes = 0;
  int firstPlayerScoreTimes = 0;

  String score() {
    if (firstPlayerScoreTimes == 0 && secondPlayerScoreTimes == 0) {
      return 'love_all';
    }
    if (firstPlayerScoreTimes == 1 && secondPlayerScoreTimes == 0) {
      return 'fifteen_love';
    }
    if (firstPlayerScoreTimes == 2 && secondPlayerScoreTimes == 0) {
      return 'thirty_love';
    }
    if (firstPlayerScoreTimes == 3 && secondPlayerScoreTimes == 0) {
      return 'forty_love';
    }
    if (firstPlayerScoreTimes == 0 && secondPlayerScoreTimes == 1) {
      return 'love_fifteen';
    }
    if (firstPlayerScoreTimes == 0 && secondPlayerScoreTimes == 2) {
      return 'love_thirty';
    }
    if (firstPlayerScoreTimes == 0 && secondPlayerScoreTimes == 3) {
      return 'love_forty';
    }
    if (firstPlayerScoreTimes == 1 && secondPlayerScoreTimes == 1) {
      return 'fifteen_all';
    }
    if (firstPlayerScoreTimes == 2 && secondPlayerScoreTimes == 2) {
      return 'thirty_all';
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
