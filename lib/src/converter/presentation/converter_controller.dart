import 'package:flutter/foundation.dart';

import 'package:alphonso/src/converter/data/repository/local_storage_repository.dart';
import 'package:alphonso/src/converter/domain/unit_category.dart';
import 'package:alphonso/src/converter/domain/unit_state.dart';

class ConverterController with ChangeNotifier {
  ConverterController({
    required this.category,
    required this.lsRepository,
  }) {
    _initializeValues();
  }

  @override
  void dispose() async {
    await updateLocalStorage();

    super.dispose();
  }

  final UnitCategory category;
  final StorageRepository lsRepository;
  double _topValue = 1;
  double get topValue => _topValue;

  double _bottomValue = 1000;
  double get bottomValue => _bottomValue;

  String _topUnit = '';
  String get topUnit => _topUnit;

  String _bottomUnit = '';
  String get bottomUnit => _bottomUnit;

  UnitState? _unitState;

  Future<void> _initializeValues() async {
    final state = await lsRepository.readFromStorage(category.label!);

    if (state != null) {
      _topUnit = state.topUnit!;
      _topValue = state.topValue!;

      _bottomUnit = state.bottomUnit!;
      _bottomValue = state.bottomValue!;

      _unitState = state;
    } else {
      _topUnit = category.defaultFrom!.name;
      _topValue = category.defaultFromValue!.toDouble();

      _bottomUnit = category.defaultTo!.name;
      _bottomValue = category.defaultToValue!.toDouble();
    }

    notifyListeners();
  }

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
    final unit =
        category.units!.singleWhere((unit) => unit.name == _bottomUnit);

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

  Future<void> updateLocalStorage() async {
    if (_unitState != null) {
      final unitState = _unitState!
        ..unitCategory = category.label
        ..topUnit = _topUnit
        ..topValue = _topValue
        ..bottomUnit = _bottomUnit
        ..bottomValue = _bottomValue;

      await lsRepository.writeToStorage(unitState);
    }
  }
}
