class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    return 0; // placeholder
  }
}


class StringCalculatorSameNumber {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    return int.parse(numbers);
  }
}


class StringCalculatorCommaSeparated {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final parts = numbers.split(',');
    if (parts.length == 1) return int.parse(parts[0]);

    return parts.map(int.parse).reduce((a, b) => a + b);
  }
}
