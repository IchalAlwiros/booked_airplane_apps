import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_airplane/models/destinations_model.dart';

class DestinationsServices {
  CollectionReference _destinationsRef =
      FirebaseFirestore.instance.collection('destinations');

  Future<List<DestinationsModel>> fetchDdestinations() async {
    try {
      QuerySnapshot result = await _destinationsRef.get();
      List<DestinationsModel> destinations = result.docs.map(
        (e) {
          return DestinationsModel.fromJson(
              e.id, e.data() as Map<String, dynamic>);
        },
      ).toList();
      return destinations;
    } catch (e) {
      throw e;
    }
  }
}
