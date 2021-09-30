import 'package:cloud_firestore/cloud_firestore.dart';

//inal firestoreInstance = FirebaseFirestore.instance;

class ProductsService {
  getProduct() {
    //firestoreInstance.collection('shoes').get();

    return FirebaseFirestore.instance.collection("shoes").get();
  }
}
