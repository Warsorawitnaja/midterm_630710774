import 'dart:math';

class Game {
  //static const defaultMaxRandom = 100;
  //int? _answer;
  int _guessCount = 0;
  //static final List<int> guessCountList = [];

  Game() {
    //_answer = r.nextInt(maxRandom) + 1;
  }
  double CelsiustoFahrenheit(double ans){
    double sum = 0;
    sum = ((9/5) * ans + 32) as double;
    return sum;
  }
 double FC(double ans){
    double sum = 0;
    sum = ((5/9) * (ans - 32)) as double;
    return sum;
  }
  double KC(double ans){
    double sum = 0;
    sum = ans - 273.15;
    return sum;
  }
  double CK(double ans){
    double sum = 0;
    sum = ans + 273.15;
    return sum;
  }
  double FK(double ans){
    double sum = 0;
    sum = (ans - 32) / (1.8) + (273.15);
    return sum;
  }
  double KF(double ans){
    double sum = 0;
    sum = (1.8) * (ans - 273.15) + 32;
    return sum;
  }
}