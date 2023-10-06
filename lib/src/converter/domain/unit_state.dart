import 'package:isar/isar.dart';

part 'unit_state.g.dart';

@collection
class UnitState {
  Id id = Isar.autoIncrement;
  String? unitCategory;
  String? topUnit;
  double? topValue;
  String? bottomUnit;
  double? bottomValue;
}
