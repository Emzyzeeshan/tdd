import 'package:test/test.dart';
import 'package:tdd/string_calculator.dart';

void main() {
  test('returns 0 for an empty string', () {
    final calculator = StringCalculator();
    expect(calculator.add(''), equals(0));
  });
  test('returns the number itself when a single number is given', () {
    final calculator = StringCalculatorSameNumber();
    expect(calculator.add('1'), equals(1));
  });
  test('returns sum of two comma-separated numbers', () {
    final calculator = StringCalculatorCommaSeparated();
    expect(calculator.add('1,5'), equals(6));
  });

}
