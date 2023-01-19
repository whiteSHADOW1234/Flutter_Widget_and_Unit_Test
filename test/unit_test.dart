import 'package:flutter_test/flutter_test.dart';
import 'package:utest/counter.dart';

import 'package:utest/main.dart';

void main() {
  test('Counter value should be incremented', () {
    final counter = Counter();
    expect(counter.value, 0);
    counter.increment();
    expect(counter.value, 1);
  });
}

