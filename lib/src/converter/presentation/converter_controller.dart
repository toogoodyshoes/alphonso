import 'package:alphonso/src/converter/domain/unit_category.dart';
import 'package:flutter/foundation.dart';

class ConverterController with ChangeNotifier {
  ConverterController({required this.category}) {
    _topUnit = category.defaultFrom!.name;
    _topValue = category.defaultFromValue!.toDouble();

    _bottomUnit = category.defaultTo!.name;
    _bottomValue = category.defaultToValue!.toDouble();
  }

  final UnitCategory category;
  double _topValue = 1;
  double get topValue => _topValue;

  double _bottomValue = 1000;
  double get bottomValue => _bottomValue;

  String _topUnit = '';
  String get topUnit => _topUnit;

  String _bottomUnit = '';
  String get bottomUnit => _bottomUnit;

  void changeTopValue(double newValue) {
    _topValue = newValue;
    notifyListeners();
  }

  void changeBottomValue(double newValue) {
    _bottomValue = newValue;
    notifyListeners();
  }

  void changeTopUnit(String newUnit) {
    _topUnit = newUnit;
    notifyListeners();
  }

  void changeBottomUnit(String newUnit) {
    _bottomUnit = newUnit;
    notifyListeners();
  }

  void computeTopValue() {
    final unit = category.units!.singleWhere((unit) => unit.name == _bottomUnit);

    final conversionFactor = unit.conversionFactors[_topUnit];
    final newBottomValue = _bottomValue * conversionFactor!;

    changeTopValue(newBottomValue);
  }

  void computeBottomValue() {
    final unit = category.units!.singleWhere((unit) => unit.name == _topUnit);

    final conversionFactor = unit.conversionFactors[_bottomUnit];
    final newBottomValue = _topValue * conversionFactor!;

    changeBottomValue(newBottomValue);
  }
}
