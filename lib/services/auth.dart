import 'package:emergency_vehicle_flutter_app/models/userf.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  // create user based on Firebase result


  UserF _userFromFirebaseUser(User user){
    return UserF(uid : user.uid);
  }

  // auth change user stream

  Stream<UserF> get user {
    return _auth.authStateChanges().map((user) => _userFromFirebaseUser(user!));
  }

  // sign in anon

  Future signInAnon() async {
    try{
      UserCredential userCredential = await _auth.signInAnonymously();
      User? user = userCredential.user;
      return _userFromFirebaseUser(user!);
    } catch(e){
      print(e.toString());
      return null;
    }
  }

  // sign in with email and pass

  // register with email and pass

  // sign out

}