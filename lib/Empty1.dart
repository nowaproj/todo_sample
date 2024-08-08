import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 393.0, 'auto-height': 808.0})
class Empty1 extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Empty1({this.param = '', super.key});

  final String? param;

  @override
  State<Empty1> createState() {
    return _Empty1State();
  }
}

@NowaGenerated()
class _Empty1State extends State<Empty1> {
  String? var1 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0.0, 0.0),
          children: [
            Positioned(
              top: 458.0,
              left: 64.5,
              width: 264.0,
              height: 152.0,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(4291085508),
                    borderRadius: BorderRadius.circular(0.0)),
              ),
            ),
            Positioned(
              top: 32.0,
              left: 31.5,
              width: 330.0,
              height: 366.0,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: const Color(1728045488),
                    border: const Border(
                        bottom:
                            BorderSide(color: Color(4291085508), width: 1.0)),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: const Center(
                    child: Text(
                      'Placeholder',
                      style: TextStyle(),
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 706.0,
              left: 88.0,
              width: 129.0,
              height: 49.0,
              child: Text(
                '',
                style: TextStyle(),
              ),
            ),
            const Positioned(
              top: 668.0,
              left: 97.0,
              width: 246.0,
              height: 100.0,
              child: Text(
                '',
                style: TextStyle(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
