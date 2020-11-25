import 'package:skate_catalog/model/catSkate.dart';
import 'package:skate_catalog/model/skateType.dart';
import 'package:skate_catalog/repository/skateRepository.dart';

class SkateFactory {
  List getTypeAll() {
    return SkateRepository().getTypeAll(0);
  }

  CatSkate cat(SkateType type) {
    return SkateRepository().catByType(type);
  }
}
