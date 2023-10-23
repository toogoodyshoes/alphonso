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

class Area extends UnitCategory {
  const Area({
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
      name: 'square kilometer',
      conversionFactors: {
        'square kilometer': 1,
        'square meter': 1000000,
        'square mile': 0.386102,
        'square yard': 1196000,
        'square foot': 10760000,
        'square inch': 1550000000,
        'hectare': 100,
        'acre': 247.105,
      },
    ),
    Unit(
      name: 'square meter',
      conversionFactors: {
        'square kilometer': 0.000001,
        'square meter': 1,
        'square mile': 0.0000003861,
        'square yard': 1.19599,
        'square foot': 10.7693,
        'square inch': 1550,
        'hectare': 0.0001,
        'acre': 0.000247105,
      },
    ),
    Unit(
      name: 'square mile',
      conversionFactors: {
        'square kilometer': 2.59,
        'square meter': 2590000,
        'square mile': 1,
        'square yard': 3098000,
        'square foot': 27880000,
        'square inch': 4014000000,
        'hectare': 259,
        'acre': 640,
      },
    ),
    Unit(
      name: 'square yard',
      conversionFactors: {
        'square kilometer': 0.00000083613,
        'square meter': 0.83613,
        'square mile': 0.000000032283,
        'square yard': 1,
        'square foot': 9,
        'square inch': 1296,
        'hectare': 0.000083613,
        'acre': 0.0002066,
      },
    ),
    Unit(
      name: 'square foot',
      conversionFactors: {
        'square kilometer': 0.000000092903,
        'square meter': 0.092903,
        'square mile': 0.00000003587,
        'square yard': 0.111111,
        'square foot': 1,
        'square inch': 144,
        'hectare': 0.0000092903,
        'acre': 0.000022957,
      },
    ),
    Unit(
      name: 'square inch',
      conversionFactors: {
        'square kilometer': 0.00000000064516,
        'square meter': 0.00064516,
        'square mile': 0.0000000002491,
        'square yard': 0.000771605,
        'square foot': 0.00694444,
        'square inch': 1,
        'hectare': 0.00000064516,
        'acre': 0.00000015942,
      },
    ),
    Unit(
      name: 'hectare',
      conversionFactors: {
        'square kilometer': 0.01,
        'square meter': 10000,
        'square mile': 0.00386102,
        'square yard': 11959.9,
        'square foot': 107639,
        'square inch': 15500000,
        'hectare': 1,
        'acre': 2.47105,
      },
    ),
    Unit(
      name: 'acre',
      conversionFactors: {
        'square kilometer': 0.00404686,
        'square meter': 4046.86,
        'square mile': 0.0015625,
        'square yard': 4840,
        'square foot': 43560,
        'square inch': 6273000,
        'hectare': 0.404686,
        'acre': 1,
      },
    ),
  ];
}

class Temperature extends UnitCategory {
  const Temperature({
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
      name: 'Celsius',
      conversionFactors: {
        'Celsius': 1,
        'Fahrenheit': 33.8,
        'Kelvin': 274.15,
        'Rankine': 493.47,
      },
    ),
    Unit(
      name: 'Fahrenheit',
      conversionFactors: {
        'Celsius': -17.22,
        'Fahrenheit': 1,
        'Kelvin': 255.9278,
        'Rankine': 460.67,
      },
    ),
    Unit(
      name: 'Kelvin',
      conversionFactors: {
        'Celsius': -272.15,
        'Fahrenheit': -457.87,
        'Kelvin': 1,
        'Rankine': 1.8,
      },
    ),
    Unit(
      name: 'Rankine',
      conversionFactors: {
        'Celsius': -272.5944,
        'Fahrenheit': -458.67,
        'Kelvin': 0.5555556,
        'Rankine': 1,
      },
    ),
  ];
}

class Weight extends UnitCategory {
  const Weight({
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
      name: 'Gram',
      conversionFactors: {
        'Gram': 1,
        'Kilogram': 0.001,
        'Metric Ton': 0.000001,
        'Milligram': 1000,
        'Ounce': 0.03527396,
        'Pound': 0.002204623,
      },
    ),
    Unit(
      name: 'Kilogram',
      conversionFactors: {
        'Gram': 1000,
        'Kilogram': 1,
        'Metric Ton': 0.001,
        'Milligram': 1000000,
        'Ounce': 35.27396,
        'Pound': 2.204623,
      },
    ),
    Unit(
      name: 'Metric Ton',
      conversionFactors: {
        'Gram': 1000000,
        'Kilogram': 1000,
        'Metric Ton': 1,
        'Milligram': 1000000000,
        'Ounce': 35273.96,
        'Pound': 2204.623,
      },
    ),
    Unit(
      name: 'Milligram',
      conversionFactors: {
        'Gram': 0.001,
        'Kilogram': 0.000001,
        'Metric Ton': 0.000000001,
        'Milligram': 1,
        'Ounce': 0.00003527396,
        'Pound': 0.000002204623,
      },
    ),
    Unit(
      name: 'Ounce',
      conversionFactors: {
        'Gram': 28.34952,
        'Kilogram': 0.02834952,
        'Metric Ton': 0.00002834952,
        'Milligram': 28349.52,
        'Ounce': 1,
        'Pound': 0.0625,
      },
    ),
    Unit(
      name: 'Pound',
      conversionFactors: {
        'Gram': 453.5924,
        'Kilogram': 0.4535924,
        'Metric Ton': 0.0004535924,
        'Milligram': 453592.4,
        'Ounce': 16,
        'Pound': 1,
      },
    ),
  ];
}
