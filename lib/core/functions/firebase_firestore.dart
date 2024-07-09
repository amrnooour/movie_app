import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

CollectionReference favourite =
    FirebaseFirestore.instance.collection('favourite');

Future<void> addfavouriteMovies(
    {required String image,
    required String title,
    required String date,
    required String overview}) async {
  try {
     await favourite.add({
      'imageUrl': image,
      'title': title,
      'date': date,
      'overview': overview
    });
  } catch (e) {
    print(e.toString());
  }
}
