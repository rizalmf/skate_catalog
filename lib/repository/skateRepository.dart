import 'package:skate_catalog/model/catSkate.dart';
import 'package:skate_catalog/model/skateType.dart';
import 'package:skate_catalog/repository/abstractRepository.dart';

class SkateRepository extends AbstractRepository {
  List getTypeAll(int many) {
    List typeList = [];
    // for (var i = 1; i <= many; i++) {
    //   typeList.add(SkateType(id: i, name: 'name $i', desc: 'desc $i', imgAsset: 'asset $i')));
    // }
    typeList.add(SkateType(
        id: 1,
        name: 'Fitness',
        desc:
            'Fitness skates are designed specifically for those individuals who seek to utilize their skates for getting in shape, or skating very frequently. In a nutshell, fitness skates are high performance recreational skates. Their design is similar in practically every aspect, with the exception being that it is geared towards individuals who skate longer distances. Variances between recreational and fitness skates exist in the bearings, wheel size, and overall weight. Fitness skates will typically have faster bearings and larger wheels to generate speed for lengthy skates. ',
        imgAsset: 'images/home-fitness.png'));
    typeList.add(SkateType(
        id: 2,
        name: 'Slalom',
        desc:
            'Freestyle slalom skaters perform tricks, edge stunts and dance-like maneuvers—either alone or as a team. This skating is done around cones set in a straight line spaced 1.64 feet (50 centimeters), 2.63 feet (80 centimeters) or 3.94 feet (120 centimeters) apart, depending on the event—a skate setup designed for a high level of precision and control. Most freestyle slalom skating is performed on freestyle slalom— sometimes called artistic—inline skates, but a few skaters still use quad roller skates.',
        imgAsset: 'images/home-slalom.jpg'));
    typeList.add(SkateType(
        id: 3,
        name: 'Freestyle',
        desc:
            'Freestyle skates  are specialized for precision skating (like dancing or weaving around cones). They are designed to be low-volume, tight-fitting skates that respond acutely to a skaters demands. Quality and price are on the high end of the spectrum due to the extreme demands put on these skates. Advanced freestylers will benefit most from the most advanced carbon models that are stiffest and lightest. 4-wheel configurations between 76-80mm keep center of gravity low and maneuverability high.',
        imgAsset: 'images/home-free-style.jpg'));
    typeList.add(SkateType(
        id: 4,
        name: 'Urban',
        desc:
            'In recent years, a new skate type has gained in popularity. Urban skates, also referred to as Street skates, are essentially a hybrid of Recreational and Aggressive style skates. Skates found in this category offer the look and feel of an Aggressive style skate with the functionality for longer skating ventures, like a Recreational skate. Urban skates feature a wheel and bearing setup like one you would expect to find on a recreational skate (wheels 82mm or larger), but a boot design that can withstand tricks, jumps, and whatever other type of beating you want to throw at it while youre skating down the street. To aid in faster and easier cornering the frames on urban skates are shortened so you get the speed of the larger wheels but the ease of cornering a shorter frame. These skates often come without a brake attached but the brake system will typically be found in the box and be easily attached. ',
        imgAsset: 'images/home-urban.png'));

    return typeList;
  }

  CatSkate catByType(SkateType type) {
    CatSkate cat = allCatSkate[type.id - 1];
    cat.skateType = type;
    return cat;
  }

  var allCatSkate = [
    CatSkate(
        id: 1,
        imgAssets: [
          'images/fitness/1.jpg',
          'images/fitness/2.jpeg',
          'images/fitness/3.jpg',
          'images/fitness/4.jpg'
        ],
        skateType: SkateType(id: 1)),
    CatSkate(
        id: 2,
        imgAssets: [
          'images/slalom/1.jpg',
          'images/slalom/2.jpg',
          'images/slalom/3.jpeg',
          'images/slalom/4.jpg'
        ],
        skateType: SkateType(id: 2)),
    CatSkate(
        id: 3,
        imgAssets: [
          'images/freestyle/1.png',
          'images/freestyle/2.jpg',
          'images/freestyle/3.jpg',
          'images/freestyle/4.jpg'
        ],
        skateType: SkateType(id: 3)),
    CatSkate(
        id: 4,
        imgAssets: [
          'images/urban/1.jpeg',
          'images/urban/2.jpg',
          'images/urban/3.jpg',
          'images/urban/4.jpg'
        ],
        skateType: SkateType(id: 4)),
  ];
}
