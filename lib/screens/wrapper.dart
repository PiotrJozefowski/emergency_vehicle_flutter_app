import 'package:emergency_vehicle_flutter_app/screens/authenticate/authenticate.dart';
import 'package:emergency_vehicle_flutter_app/screens/home/home.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //return Home or Auth widger
    return Authenticate();
  }
}
