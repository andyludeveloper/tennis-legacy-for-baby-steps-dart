class Tennis {
  int secondPlayerScoreTimes = 0;
  int firstPlayerScoreTimes = 0;
  String firstPlayerName = 'Andy';
  String secondPlayerName = 'Josh';

  var scoreLookUp = {0: 'love', 1: 'fifteen', 2: 'thirty', 3: 'forty'};

  String score() {
    return isSameScore()
        ? isDeuce()
            ? 'deuce'
            : sameScore()
        : isGamePoint()
            ? advState()
            : lookupScore();
  }

  String advState() => isAdv() ? '${advPlayer()}_adv' : '${advPlayer()}_win';

  String sameScore() => '${scoreLookUp[firstPlayerScoreTimes]}_all';

  String lookupScore() =>
      '${scoreLookUp[firstPlayerScoreTimes]}_${scoreLookUp[secondPlayerScoreTimes]}';

  bool isAdv() => (firstPlayerScoreTimes - secondPlayerScoreTimes).abs() == 1;

  bool isGamePoint() =>
      firstPlayerScoreTimes >= 3 && secondPlayerScoreTimes >= 3;

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
