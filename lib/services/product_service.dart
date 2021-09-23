import 'package:cloud_firestore/cloud_firestore.dart';

final firestoreInstance = FirebaseFirestore.instance;

class ProductsService {
  getProduct() {
    return firestoreInstance.collection('shoes').get();
  }

  /*
  firestoreInstance.collection('shoes').get().then((QuerySnapshot querySnapshot){
    querySnapshot.docs.forEach((doc) {
      print(doc.data());
    });
  });
  */
}
