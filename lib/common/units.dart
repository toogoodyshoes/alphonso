import 'package:alphonso/src/converter/domain/unit.dart';
import 'package:alphonso/src/converter/domain/unit_category.dart';

const meter = Unit(
  category: Length(),
  name: 'Meter',
  symbol: 'm',
  conversionFactors: <String, num>{
    'kilometer': 0.001,
    'meter': 1,
    'centimeter': 100,
  },
);
