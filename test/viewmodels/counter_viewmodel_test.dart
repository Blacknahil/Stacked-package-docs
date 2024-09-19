import 'package:flutter_test/flutter_test.dart';
import 'package:first_app/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('CounterViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
