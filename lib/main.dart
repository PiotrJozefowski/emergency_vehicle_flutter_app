import 'package:emergency_vehicle_flutter_app/log_in/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: _initialization,
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                body: Center(
                  child: Center(
                    child: Text('Welcome')
                  )
                )
              )
            );
          }else if(snapshot.hasError){
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                home: Scaffold(
                    body: Center(
                        child: Center(
                            child: Text('Please wait')
                        )
                    )
                )
            );
          }

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.lightGreen,
            ),
            home: LoginScreen()
          );
        }
    );
  }
}



