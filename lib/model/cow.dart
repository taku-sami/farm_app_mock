import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class Cow {
  final String name;
  final int number;
  final int sex;
  final String place;
  final DocumentReference reference;

  Cow.fromMap(Map map, {this.reference})
      : assert(map['name'] != null),
        assert(map['number'] != null),
        assert(map['sex'] != null),
        assert(map['place'] != null),
        name = map['name'],
        number = map['number'],
        sex = map['sex'],
        place = map['place'];

  Cow.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);
}
