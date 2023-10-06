import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'package:alphonso/src/converter/domain/unit_state.dart';

class LocalStorageRepository {
  late final Isar _isar;

  Future<UnitState?> readFromStorage(String unitCategory) async {
    final state = await _isar
        .collection<UnitState>()
        .filter()
        .unitCategoryEqualTo(unitCategory)
        .findFirst();

    return state;
  }

  Future<void> writeToStorage(UnitState state) async {
    await _isar.writeTxn(
      () async {
        await _isar.collection<UnitState>().put(state);
      },
    );

    final readState = await _isar
        .collection<UnitState>()
        .filter()
        .unitCategoryEqualTo('Length')
        .findFirst();

    print('readState = ${readState?.topUnit}');
  }

  Future<void> openDBConnection() async {
    final directory = await getApplicationDocumentsDirectory();
    _isar = await Isar.open([UnitStateSchema], directory: directory.path);
  }
}
