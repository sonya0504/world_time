import 'package:flutter/material.dart';
import 'package:wolrd_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime () async {

    WorldTime instance = WorldTime(location: 'Warsaw', flag: 'poland.png', url: 'Europe/Warsaw');
    await instance.getTime();
    print(instance);

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
    });

  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.grey[600],
          size: 50.0,
        ),
      ),
    );
  }
}
