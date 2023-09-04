import 'package:alphonso/src/convertor/domain/unit_category.dart';

class Unit {
  const Unit({
    required this.category,
    required this.name,
    required this.symbol,
    required this.conversionFactors,
  });
  final UnitCategory category;
  final String name;
  final String symbol;
  final Map<String, num> conversionFactors;

  @override
  String toString() => name.toLowerCase();
}
