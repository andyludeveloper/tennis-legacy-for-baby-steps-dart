class Tennis {
  var player1Name = 'Andy';
  var player2Name = 'Josh';

  var firstPlayerScoreTimes = 0;

  var secondPlayerScoreTimes = 0;

  var scoreLookUpMap = {0: 'love', 1: 'fifteen', 2: 'thirty', 3:'forty'};

  String score() => isSameScore()
        ? isDeuce()
            ? 'deuce'
            : sameScore()
        : isLookupScore()
            ? lookupScore()
            : advState();

  String advState() {
    return isAdv() ? '${advPlayer()}_adv' : '${advPlayer()}_won';
  }

  String lookupScore() =>
      '${scoreLookUpMap[firstPlayerScoreTimes]}_${scoreLookUpMap[secondPlayerScoreTimes]}';

  bool isLookupScore() =>
      firstPlayerScoreTimes < 4 && secondPlayerScoreTimes < 4;

  String sameScore() => '${scoreLookUpMap[firstPlayerScoreTimes]}_all';

  String advPlayer() {
    return (firstPlayerScoreTimes > secondPlayerScoreTimes)
        ? player1Name
        : player2Name;
  }

  bool isAdv() => (firstPlayerScoreTimes - secondPlayerScoreTimes).abs() == 1;

  bool isDeuce() => firstPlayerScoreTimes >= 3;

  bool isSameScore() => firstPlayerScoreTimes == secondPlayerScoreTimes;

  void firstPlayerScore() {
    firstPlayerScoreTimes++;
  }

  void secondPlayerScore() {
    secondPlayerScoreTimes++;
  }
}
