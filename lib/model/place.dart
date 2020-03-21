import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class Place {
  final String name;
  final DocumentReference reference;

  Place.fromMap(Map map, {this.reference})
      : assert(map['name'] != null),
        name = map['name'];

  Place.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);
}
