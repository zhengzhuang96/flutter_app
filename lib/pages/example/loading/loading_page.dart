/*
 * @Author: {zhengzhuang}
 * @Date: 2022-08-16 11:24:02
 * @LastEditors: {zhengzhuang}
 * @LastEditTime: 2022-08-16 11:27:45
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Loading'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 32.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SpinKitRotatingCircle(color: Colors.white),
                  SpinKitRotatingPlain(color: Colors.white),
                  SpinKitChasingDots(color: Colors.white),
                ],
              ),
              const SizedBox(height: 48.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SpinKitPumpingHeart(color: Colors.white),
                  SpinKitPulse(color: Colors.white),
                  SpinKitDoubleBounce(color: Colors.white),
                ],
              ),
              const SizedBox(height: 48.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SpinKitWave(color: Colors.white, type: SpinKitWaveType.start),
                  SpinKitWave(
                      color: Colors.white, type: SpinKitWaveType.center),
                  SpinKitWave(color: Colors.white, type: SpinKitWaveType.end),
                ],
              ),
              const SizedBox(height: 48.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SpinKitThreeBounce(color: Colors.white),
                  SpinKitWanderingCubes(color: Colors.white),
                  SpinKitWanderingCubes(
                      color: Colors.white, shape: BoxShape.circle),
                ],
              ),
              const SizedBox(height: 48.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SpinKitCircle(color: Colors.white),
                  SpinKitFadingFour(color: Colors.white),
                  SpinKitFadingFour(
                      color: Colors.white, shape: BoxShape.rectangle),
                ],
              ),
              const SizedBox(height: 48.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SpinKitFadingCube(color: Colors.white),
                  SpinKitCubeGrid(size: 51.0, color: Colors.white),
                  SpinKitFoldingCube(color: Colors.white),
                ],
              ),
              const SizedBox(height: 48.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SpinKitRing(color: Colors.white),
                  SpinKitDualRing(color: Colors.white),
                  SpinKitRipple(color: Colors.white),
                ],
              ),
              const SizedBox(height: 48.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SpinKitFadingGrid(color: Colors.white),
                  SpinKitFadingGrid(
                      color: Colors.white, shape: BoxShape.rectangle),
                  SpinKitHourGlass(color: Colors.white),
                ],
              ),
              const SizedBox(height: 48.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SpinKitSpinningCircle(color: Colors.white),
                  SpinKitSpinningCircle(
                      color: Colors.white, shape: BoxShape.rectangle),
                  SpinKitFadingCircle(color: Colors.white),
                ],
              ),
              const SizedBox(height: 64.0),
            ],
          )
        ],
      ),
    );
  }
}
