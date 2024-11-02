import 'dart:math';

class Calc {
  double step;
  double rangeFrom = -3;
  double rangeTo = 3;

  Calc(this.step);

  void setRangeFrom(double from) {
    rangeFrom = from;
  }

  void setRangeTo(double to) {
    rangeTo = to;
  }

  void calculate() {
    double sum = 0;
    int count = 0;

    for (double x = rangeFrom; x <= rangeTo; x += step) {
      if (x == 0) {
        print("Ділення на нуль");
      }
      else {
        double y = (pow(x, 2) - x) / pow(x, 3);
        print("x = ${x.toStringAsFixed(2)}, y = ${y.toStringAsFixed(2)}");
        sum += y;
        count++;
      }
    }
    double avg = sum / count;
    print("Avg: ${avg.toStringAsFixed(2)}");
  }
}
