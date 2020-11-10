import 'package:brew_crew/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object based on firebase user

  UserDetail _userFromFireBaseUser(FirebaseUser user){
    return user!=null?UserDetail(uid:user.uid):null; 
  }

  //auth change user stream
  Stream<UserDetail> get user{
    return _auth.onAuthStateChanged.map(_userFromFireBaseUser);
  }

  //sign in anon
  Future signInAnon () async {
    try{
      AuthResult result=await _auth.signInAnonymously();
      FirebaseUser user=result.user;
      return _userFromFireBaseUser(user);


    }catch(e){
      print(e.toString());
      return null;

    }
  }

  //sign in email n password

  //register with email n password

  //sign out

}