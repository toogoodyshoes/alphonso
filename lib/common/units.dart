import 'package:alphonso/src/convertor/domain/unit.dart';
import 'package:alphonso/src/convertor/domain/unit_category.dart';

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
