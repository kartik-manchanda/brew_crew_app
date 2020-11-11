import 'package:brew_crew/models/user.dart';
import 'package:brew_crew/screens/authanticate/authanticate.dart';
import 'package:brew_crew/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'authanticate/authanticate.dart';
import 'home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user=Provider.of<UserDetail>(context);
    print('hi$user');



    //return either home or authenticate widget
    if(user==null){
      return Authenticate();

    }else{
      return Home();
    }
  }
}