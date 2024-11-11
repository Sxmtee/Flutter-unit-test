import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test/counter_logic.dart';

void main() {
  late Counter counter;

  setUp(() {
    counter = Counter();
  });

  group(
    "Counter Logic -",
    () {
      test(
        "Instantiate Counter then value should be 0",
        () {
          final val = counter.count;
          expect(val, 0);
        },
      );

      test(
        "Counter class when incremented then value should be 1",
        () {
          counter.incrementCount();
          final val = counter.count;
          expect(val, 1);
        },
      );

      test(
        "Counter class when decremented then value should be -1",
        () {
          counter.decrementCount();
          final val = counter.count;
          expect(val, -1);
        },
      );
    },
  );
}
