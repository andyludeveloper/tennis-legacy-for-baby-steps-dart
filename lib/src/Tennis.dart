class Tennis {
  int secondPlayerScoreTimes = 0;
  int firstPlayerScoreTimes = 0;
  String firstPlayerName = 'Andy';
  String secondPlayerName = 'Josh';

  var scoreLookUp = {0: 'love', 1: 'fifteen', 2: 'thirty', 3: 'forty'};

  String score() {
    if (isSameScore()) {
      if (isDeuce()) {
        return 'deuce';
      }
      return '${scoreLookUp[firstPlayerScoreTimes]}_all';
    }

    if (firstPlayerScoreTimes >= 3 && secondPlayerScoreTimes >= 3) {
      if ((firstPlayerScoreTimes - secondPlayerScoreTimes).abs() == 1) {
        return '${advPlayer()}_adv';
      }
      return '${advPlayer()}_win';
    }

    return '${scoreLookUp[firstPlayerScoreTimes]}_${scoreLookUp[secondPlayerScoreTimes]}';
  }

  String advPlayer() {
    return (firstPlayerScoreTimes > secondPlayerScoreTimes)
        ? firstPlayerName
        : secondPlayerName;
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
