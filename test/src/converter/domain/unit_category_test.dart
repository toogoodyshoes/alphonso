import 'package:test/test.dart';

import 'package:alphonso/src/converter/domain/unit_category.dart';

void main() {
  const length = Length();
  group(
    'Testing Length : nanometer to',
    () {
      final unit =
          length.units!.singleWhere((unit) => unit.name == 'nanometer');

      test(
        'nanometer',
        () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['nanometer']!;
          expect(result == 1.0, true);
        },
      );

      test(
        'micrometer',
        () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['micrometer']!;
          expect(result == 0.001, true);
        },
      );

      test(
        'millimeter',
        () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['millimeter']!;
          expect(result == 0.000001, true);
        },
      );

      test(
        'meter',
        () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['meter']!;
          expect(result == 0.000000001, true);
        },
      );

      test(
        'kilometer',
        () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['kilometer']!;
          expect(result == 0.000000000001, true);
        },
      );
    },
  );

  group(
    'Testing Length : micrometer to',
    () {
      final unit =
          length.units!.singleWhere((unit) => unit.name == 'micrometer');

      test(
        'nanometer',
        () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['nanometer']!;
          expect(result == 1000.0, true);
        },
      );

      test(
        'micrometer',
        () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['micrometer']!;
          expect(result == 1.0, true);
        },
      );

      test(
        'millimeter',
        () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['millimeter']!;
          expect(result == 0.001, true);
        },
      );

      test(
        'meter',
        () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['meter']!;
          expect(result == 0.000001, true);
        },
      );

      test(
        'kilometer',
        () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['kilometer']!;
          expect(result == 0.000000001, true);
        },
      );
    },
  );

  group(
    'Testing Length : millimeter to',
    () {
      final unit =
          length.units!.singleWhere((unit) => unit.name == 'millimeter');

      test(
        'nanometer',
        () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['nanometer']!;
          expect(result == 100000.0, true);
        },
      );

      test(
        'micrometer',
        () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['micrometer']!;
          expect(result == 1000.0, true);
        },
      );

      test(
        'millimeter',
        () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['millimeter']!;
          expect(result == 1.0, true);
        },
      );

      test(
        'meter',
        () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['meter']!;
          expect(result == 0.001, true);
        },
      );

      test(
        'kilometer',
        () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['kilometer']!;
          expect(result == 0.000001, true);
        },
      );
    },
  );

  group(
    'Testing Length : meter to',
    () {
      final unit = length.units!.singleWhere((unit) => unit.name == 'meter');

      test(
        'nanometer',
        () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['nanometer']!;
          expect(result == 100000000.0, true);
        },
      );

      test(
        'micrometer',
        () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['micrometer']!;
          expect(result == 100000.0, true);
        },
      );

      test(
        'millimeter',
        () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['millimeter']!;
          expect(result == 1000.0, true);
        },
      );

      test(
        'meter',
        () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['meter']!;
          expect(result == 1.0, true);
        },
      );

      test(
        'kilometer',
        () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['kilometer']!;
          expect(result == 1000, true);
        },
      );
    },
  );

  group(
    'Testing Length : kilometer to',
        () {
      final unit = length.units!.singleWhere((unit) => unit.name == 'kilometer');

      test(
        'nanometer',
            () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['nanometer']!;
          expect(result == 100000000000.0, true);
        },
      );

      test(
        'micrometer',
            () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['micrometer']!;
          expect(result == 100000000.0, true);
        },
      );

      test(
        'millimeter',
            () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['millimeter']!;
          expect(result == 100000.0, true);
        },
      );

      test(
        'meter',
            () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['meter']!;
          expect(result == 1000.0, true);
        },
      );

      test(
        'kilometer',
            () {
          const fromValue = 1.0;

          final result = fromValue * unit.conversionFactors['kilometer']!;
          expect(result == 1.0, true);
        },
      );
    },
  );
}
