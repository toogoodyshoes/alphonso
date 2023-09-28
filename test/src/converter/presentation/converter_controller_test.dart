import 'package:test/test.dart';
import 'package:flutter/material.dart';

import 'package:alphonso/src/converter/domain/unit.dart';
import 'package:alphonso/src/converter/domain/unit_theme.dart';
import 'package:alphonso/src/converter/domain/unit_category.dart';
import 'package:alphonso/src/converter/presentation/converter_controller.dart';

void main() {
  group(
    'Testing Converter Controller : ',
    () {
      const category = Length(
        label: 'Length',
        theme: UnitTheme(
          icon: Icons.straighten,
          lightShade: Color(0xFF03A9F4),
          darkShade: Color(0xFF029AE1),
        ),
        defaultFrom: Unit(
          name: 'kilometer',
          conversionFactors: {
            'nanometer': 0.000000000001,
            'micrometer': 0.000000001,
            'millimeter': 0.000001,
            'meter': 1000,
            'kilometer': 1,
          },
        ),
        defaultFromValue: 1,
        defaultTo: Unit(
          name: 'meter',
          conversionFactors: {
            'nanometer': 0.000000001,
            'micrometer': 0.000001,
            'millimeter': 0.001,
            'meter': 1,
            'kilometer': 1000,
          },
        ),
        defaultToValue: 1000,
      );
      final controller = ConverterController(category: category);

      test(
        'changeTopValue',
        () {
          const value = 1000.0;
          controller.changeTopValue(value);

          expect(controller.topValue == value, true);
        },
      );

      test(
        'changeBottomValue',
            () {
          const value = 2000.0;
          controller.changeBottomValue(value);

          expect(controller.bottomValue == value, true);
        },
      );

      test(
        'changeTopUnit',
            () {
          const unit = 'meter';
          controller.changeTopUnit(unit);

          expect(controller.topUnit == unit, true);
        },
      );

      test(
        'changeBottomUnit',
            () {
          const unit = 'millimeter';
          controller.changeBottomUnit(unit);

          expect(controller.bottomUnit == unit, true);
        },
      );

      test(
        'computeTopValue',
            () {
          controller.changeBottomUnit('kilometer');
          controller.changeBottomValue(256);
          controller.changeTopUnit('meter');

          controller.computeTopValue();

          expect(controller.topValue == 256000, true);
        },
      );

      test(
        'computeBottomValue',
            () {
          controller.changeTopUnit('millimeter');
          controller.changeTopValue(512);
          controller.changeBottomUnit('nanometer');

          controller.computeBottomValue();

          expect(controller.bottomValue == 51200000.0, true);
        },
      );

      test(
        'computeBottomValue duplicate',
            () {
          controller.changeTopUnit('millimeter');
          controller.changeTopValue(512);
          controller.changeBottomUnit('nanometer');

          controller.computeBottomValue();

          expect(controller.bottomValue == 51200000.0, true);
        },
      );
    },
  );
}
