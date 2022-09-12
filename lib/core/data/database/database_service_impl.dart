import 'package:flutter/material.dart' show required;
import 'package:hive/hive.dart';

import 'database_service.dart';
import 'op_boxes.dart';

class HiveDatabaseService implements DatabaseService {
  @override
  Future<void> create(
      {@required dynamic collection, String? key, dynamic value}) async {
    if (collection is OpBoxes) {
      final _box = await _openBox<Map>(collection);

      final _mappedValue = {"data": value};
      await _box.put(key, _mappedValue);
    } else {
      throw Exception("`collection` must be of type OpBoxes");
    }
  }

  @override
  Future<Map<String, dynamic>> retrieve({
    @required dynamic collection,
    String? key,
    @required dynamic notFoundDefault,
  }) async {
    if (collection is OpBoxes) {
      final _box = await _openBox<Map>(collection);
      final _boxContent = _box.get(key);

      return _boxContent?.cast<String, dynamic>() ?? {'data': notFoundDefault};
    } else {
      throw Exception("`collection` must be of type OpBoxes");
    }
  }

  @override
  Future<void> update(
          {@required dynamic collection, String? key, dynamic value}) async =>
      create(collection: collection, key: key, value: value);

  @override
  Future<void> delete({@required dynamic collection, String? key}) async {
    if (collection is OpBoxes) {
      final _box = await _openBox<Map>(collection);
      await _box.delete(key);
    } else {
      throw Exception("`collection` must be of type OpBoxes");
    }
  }

  @override
  Future<void> clearData() async {
    await _clearBox<Map>(OpBoxes.accountTypes);
    await _clearBox<Map>(OpBoxes.users);
  }

  /*
   *
   * Methods below are helpers that handle the actual DB implementation 
   * details of opening and reading to and from the DB.
   * These details would be different (of course) depending on what
   * underlying DB is used as backing. These are all private methods
   * because they should ideally be hidden from the outside world.
   */

  String _getBoxId(OpBoxes box) => box.index.toStringAsExponential();

  Future<Box<T>> _openBox<T>(OpBoxes box) async {
    Box<T> _box;
    final boxId = _getBoxId(box);

    if (Hive.isBoxOpen(boxId)) {
      _box = Hive.box<T>(boxId);
    } else {
      try {
        _box = await Hive.openBox<T>(boxId);
      } catch (_) {
        await Hive.deleteBoxFromDisk(boxId);
        _box = await Hive.openBox<T>(boxId);
      }
    }

    return _box;
  }

  // Future<void> _closeBox<T>(OpBoxes box) async {
  //   Box _box;
  //   final boxId = _getBoxId(box);

  //   if (Hive.isBoxOpen(boxId)) {
  //     _box = Hive.box<T>(boxId);
  //     await _box.close();
  //   }
  // }

  Future<void> _clearBox<T>(OpBoxes box) async {
    try {
      final Box<T> _box = await _openBox<T>(box);
      await _box.clear();
    } catch (_) {}
  }
}
