class Tennis {
  int secondPlayerScoreTimes = 0;
  int firstPlayerScoreTimes = 0;
  var scoreLookUp = {0: 'love', 1: 'fifteen', 2: 'thirty', 3: 'forty'};

  String score() {
    if (isSameScore()) {
      if (isDeuce()) {
        return 'deuce';
      }
      return '${scoreLookUp[firstPlayerScoreTimes]}_all';
    }

    if (firstPlayerScoreTimes >= 1 && secondPlayerScoreTimes >= 0 ||
        firstPlayerScoreTimes == 0 && secondPlayerScoreTimes >= 1) {
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
      return '${scoreLookUp[firstPlayerScoreTimes]}_${scoreLookUp[secondPlayerScoreTimes]}';
    }
    return null;
  }

  bool isDeuce() => firstPlayerScoreTimes >= 3;

  bool isSameScore() => firstPlayerScoreTimes == secondPlayerScoreTimes;

  void firstPlayerScore() {
    firstPlayerScoreTimes++;
  }

  void secondPlayerScore() {
    secondPlayerScoreTimes++;
  }
}
