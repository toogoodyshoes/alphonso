import 'package:test/test.dart';
import 'package:alphonso/src/converter/domain/unit.dart';

void main() {
  group(
    'Testing Unit',
    () {
      const unit = Unit(name: 'Length', conversionFactors: {});

      test(
        'toString should return name in lowercase',
        () {
          final name = unit.toString();
          RegExp regex = RegExp(r'^[a-z]', caseSensitive: true);

          expect(regex.hasMatch(name), true);
        },
      );
    },
  );
}
