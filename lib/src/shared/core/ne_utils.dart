import 'package:uuid/uuid.dart';

abstract class NEUtils {
  static const _uuid = Uuid();

  static String generateUUID() => _uuid.v1();
}
