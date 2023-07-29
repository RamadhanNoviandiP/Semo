import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // _uploadProfileImageToStorage(Uint8List? image) async {
  //   Reference ref = _firebaseStorage
  //       .ref()
  //       .child('profilePicts')
  //       .child(_auth.currentUser!.uid);

  //   UploadTask uploadTask = ref.putData(image!);

  //   TaskSnapshot snapshot = await uploadTask;
  //   String donwloadUrl = await snapshot.ref.getDownloadURL();

  //   return donwloadUrl;
  // }

  pickProfileImage(ImageSource source) async {
    final ImagePicker _imagePicker = ImagePicker();

    XFile? _file = await _imagePicker.pickImage(source: source);

    if (_file != null) {
      return await _file.readAsBytes();
    } else {
      return 'tidak ada foto yang di pilih';
    }
  }

  Future<String> signUpUsers(String email, String fullName, String phoneNumber,
      String password, String address) async {
    String res = 'Some error occured';
    try {
      if (email.isNotEmpty &&
          fullName.isNotEmpty &&
          phoneNumber.isNotEmpty &&
          password.isNotEmpty &&
          address.isNotEmpty) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        await _firestore.collection('users').doc(cred.user!.uid).set({
          'Email': email,
          'Full Name': fullName,
          'Phone Number': phoneNumber,
          'User Id': cred.user!.uid,
          'Alamat': address,
        });

        res = 'success';
      } else {
        res = "please field must not be empty";
      }
    } catch (e) {}
    return res;
  }

  loginUsers(String email, String password) async {
    String res = 'something went wrong';

    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);

        res = 'success';
      } else {
        res = 'mohon Masukkan email dan password';
      }
    } catch (e) {
      res = e.toString();
    }
    return res;
  }
}
