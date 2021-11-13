import 'package:emergency_vehicle_flutter_app/models/userf.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  // create user based on Firebase result


  UserF userFromFirebaseUser(UserCredential credential){
    return UserF(credential.user!.uid, credential.user!.isAnonymous);
  }
  // sign in anon

  Future signInAnon() async {
    try{
      UserCredential userCredential = await _auth.signInAnonymously();
      return userFromFirebaseUser(userCredential);
    } catch(e){
      print(e.toString());
      return null;
    }
  }

  // sign in with email and pass

  // register with email and pass

  // sign out

}