import 'package:alphonso/src/converter/domain/unit_theme.dart';
import 'package:alphonso/src/converter/domain/unit.dart';

class UnitCategory {
  const UnitCategory({
    this.label,
    this.theme,
    this.units,
    this.defaultFrom,
    this.defaultFromValue,
    this.defaultTo,
    this.defaultToValue,
  });

  final String? label;
  final UnitTheme? theme;
  final List<Unit>? units;
  final Unit? defaultFrom;
  final num? defaultFromValue;
  final Unit? defaultTo;
  final num? defaultToValue;

  List<String> generateSimplifiedList() {
    if (units == null) {
      return [];
    }

    final simplifiedList = units!.map((e) => e.name).toList();

    return simplifiedList;
  }
}

class Length extends UnitCategory {
  const Length({
    String? label,
    UnitTheme? theme,
    Unit? defaultFrom,
    num? defaultFromValue,
    Unit? defaultTo,
    num? defaultToValue,
  }) : super(
          label: label,
          theme: theme,
          defaultFrom: defaultFrom,
          units: _units,
          defaultFromValue: defaultFromValue,
          defaultTo: defaultTo,
          defaultToValue: defaultToValue,
        );

  static const List<Unit> _units = [
    Unit(
      name: 'nanometer',
      conversionFactors: {
        'nanometer': 1,
        'micrometer': 0.001,
        'millimeter': 0.000001,
        'meter': 0.000000001,
        'kilometer': 0.000000000001,
      },
    ),
    Unit(
      name: 'micrometer',
      conversionFactors: {
        'nanometer': 1000,
        'micrometer': 1,
        'millimeter': 0.001,
        'meter': 0.000001,
        'kilometer': 0.000000001,
      },
    ),
    Unit(
      name: 'millimeter',
      conversionFactors: {
        'nanometer': 100000,
        'micrometer': 1000,
        'millimeter': 1,
        'meter': 0.001,
        'kilometer': 0.000001,
      },
    ),
    Unit(
      name: 'meter',
      conversionFactors: {
        'nanometer': 100000000,
        'micrometer': 100000,
        'millimeter': 1000,
        'meter': 1,
        'kilometer': 1000,
      },
    ),
    Unit(
      name: 'kilometer',
      conversionFactors: {
        'nanometer': 100000000000,
        'micrometer': 100000000,
        'millimeter': 100000,
        'meter': 1000,
        'kilometer': 1,
      },
    ),
  ];
}
