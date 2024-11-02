import 'calc.dart';

void main() {
  var calc = Calc(0.5);

  calc.setRangeFrom(-2);
  calc.setRangeTo(2);
  calc.calculate();
}
