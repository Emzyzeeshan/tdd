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

class StringCalculatorMultipleCommaSeparated {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final parts = numbers.split(',');
    if (parts.length == 1) return int.parse(parts[0]);

    return parts.map(int.parse).reduce((a, b) => a + b);
  }
}

class StringCalculatorNewLine {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final normalized = numbers.replaceAll('\n', ',');
    final parts = normalized.split(',');
    return parts.map(int.parse).reduce((a, b) => a + b);
  }
}

class StringCalculatorCustomDelimiters {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiter = ',';
    String nums = numbers;

    if (numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      delimiter = parts[0].substring(2);
      nums = parts[1];
    }

    final normalized = nums.replaceAll('\n', delimiter);
    final values = normalized.split(delimiter);
    return values.map(int.parse).reduce((a, b) => a + b);
  }
}

class StringCalculatorNegativeNumberNotAllowed {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiter = ',';
    String nums = numbers;

    if (numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      delimiter = parts[0].substring(2);
      nums = parts[1];
    }

    final normalized = nums.replaceAll('\n', delimiter);
    final values = normalized.split(delimiter).map(int.parse).toList();

    final negatives = values.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed ${negatives.join(',')}');
    }

    return values.reduce((a, b) => a + b);
  }
}
