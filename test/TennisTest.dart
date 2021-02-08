import 'package:tennis_legacy_for_baby_steps_dart/src/Tennis.dart';
import 'package:test/test.dart';

Tennis tennis;

void main() {
  setUp(() {
    tennis = Tennis();
  });

  test('love_all', () {
    shouldBe('love_all');
  });

  test('fifteen_love', () {
    givenFirstPlayerScore(1);
    shouldBe('fifteen_love');
  });

  test('thirty_love', () {
    givenFirstPlayerScore(2);
    shouldBe('thirty_love');
  });
  test('forty_love', () {
    givenFirstPlayerScore(3);
    shouldBe('forty_love');
  });

  test('love_fifteen', () {
    givenSecondPlayerScore(1);
    shouldBe('love_fifteen');
  });
  test('love_thirty', () {
    givenSecondPlayerScore(2);
    shouldBe('love_thirty');
  });

  test('love_forty', () {
    givenSecondPlayerScore(3);
    shouldBe('love_forty');
  });

  test('fifteen_all', () {
    givenFirstPlayerScore(1);
    givenSecondPlayerScore(1);
    shouldBe('fifteen_all');
  });
  test('thirty_all', () {
    givenFirstPlayerScore(2);
    givenSecondPlayerScore(2);
    shouldBe('thirty_all');
  });
  test('deuce', () {
    givenFirstPlayerScore(3);
    givenSecondPlayerScore(3);
    shouldBe('deuce');
  });
  test('player1Adv', () {
    givenFirstPlayerScore(4);
    givenSecondPlayerScore(3);
    shouldBe('Andy_adv');
  });
  test('player2Adv', () {
    givenFirstPlayerScore(3);
    givenSecondPlayerScore(4);
    shouldBe('Josh_adv');
  });
  test('player1Won', () {
    givenFirstPlayerScore(5);
    givenSecondPlayerScore(3);
    shouldBe('Andy_win');
  });
  test('player2Won', () {
    givenFirstPlayerScore(3);
    givenSecondPlayerScore(5);
    shouldBe('Josh_win');
  });
}

void givenSecondPlayerScore(int times) {
  for (var i = 0; i < times; i++) {
    tennis.secondPlayerScore();
  }
}

void givenFirstPlayerScore(int times) {
  for (var i = 0; i < times; i++) {
    tennis.firstPlayerScore();
  }
}

void shouldBe(String expected) {
  final result = tennis.score();
  expect(result, equals(expected));
}
