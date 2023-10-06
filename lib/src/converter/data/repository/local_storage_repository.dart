import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'package:alphonso/src/converter/domain/unit_state.dart';

abstract class StorageRepository {
  Future<UnitState?> readFromStorage(String unitCategory);

  Future<void> writeToStorage(UnitState state);
}

class LocalStorageRepository extends StorageRepository {
  late final Isar _isar;

  @override
  Future<UnitState?> readFromStorage(String unitCategory) async {
    final state = await _isar
        .collection<UnitState>()
        .filter()
        .unitCategoryEqualTo(unitCategory)
        .findFirst();

    return state;
  }

  @override
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

class MockStorageRepository extends StorageRepository {
  @override
  Future<UnitState?> readFromStorage(String unitCategory) async {
    return null;
  }

  @override
  Future<void> writeToStorage(UnitState state) async {}
}
