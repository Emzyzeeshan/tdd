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
  test('returns sum of multiple comma-separated numbers', () {
    final calculator = StringCalculatorMultipleCommaSeparated();
    expect(calculator.add('1,2,3,4,5'), equals(15));
  });
  test('handles new lines between numbers', () {
    final calculator = StringCalculatorNewLine();
    expect(calculator.add('1\n2,3'), equals(6));
  });
  test('supports custom delimiters', () {
    final calculator = StringCalculatorCustomDelimiters();
    expect(calculator.add('//;\n1;2'), equals(3));
  });
  test('throws exception for negative numbers', () {
    final calculator = StringCalculatorNegativeNumberNotAllowed();
    expect(
          () => calculator.add('1,-2,3,-4'),
      throwsA(predicate((e) =>
      e is Exception &&
          e.toString().contains('negative numbers not allowed -2,-4'))),
    );
  });

}
