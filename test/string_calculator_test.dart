import 'package:test/test.dart';
import 'package:tdd/string_calculator.dart';

void main() {
  test('returns 0 for an empty string', () {
    final calculator = StringCalculator();
    expect(calculator.add(''), equals(0));
  });
}
