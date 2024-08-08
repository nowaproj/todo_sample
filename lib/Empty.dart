import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:todo_sample/Empty1.dart';

@NowaGenerated({'auto-width': 393.0, 'auto-height': 808.0})
class Empty extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Empty({this.list = const ['sdf', 'sdf', 'fgfg'], super.key});

  final List<String?>? list;

  @override
  State<Empty> createState() {
    return _EmptyState();
  }
}

@NowaGenerated()
class _EmptyState extends State<Empty> {
  String? var1 = '';

  String? var2 = '';

  double? createL() {
    return MediaQuery.of(context).size.width + 87.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0.0, 0.0),
          children: [
            Positioned(
              top: 45.0,
              left: 32.0,
              width: 300.0,
              height: 257.0,
              child: ListView(
                children: [
                  SizedBox(
                    height: 93.0,
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: const Color(1728045488),
                        border: const Border(bottom: BorderSide(color: Color(4291085508), width: 1.0)),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: const Center(
                        child: Text(
                          'Placeholder',
                          style: TextStyle(),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 429.0,
              left: 40.0,
              width: 271.0,
              height: 266.0,
              child: GridView.custom(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 160.0),
                childrenDelegate: SliverChildListDelegate([
                  Image(
                    image: const NetworkImage(
                        'https://canary.contestimg.wish.com/api/webimage/5ddccb3c9a6f6e1cf8d7dd65-large.jpg?cache_buster=114b2b0b5893a0e736412075646fa5da'),
                    fit: BoxFit.cover,
                  ),
                  Image(
                    image: const NetworkImage(
                        'https://canary.contestimg.wish.com/api/webimage/5ddccb3c9a6f6e1cf8d7dd65-large.jpg?cache_buster=114b2b0b5893a0e736412075646fa5da'),
                    fit: BoxFit.cover,
                  )
                ]),
                reverse: false,
                shrinkWrap: false,
              ),
            ),
            Positioned(
              top: 286.0,
              left: 150.0,
              height: 51.0,
              width: 115.0,
              child: CustomButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Empty1()));
                },
                child: const Text(
                  'Button',
                  style: TextStyle(color: Color(4294967295)),
                ),
                color: const Color(4294909470),
              ),
            ),
            const Positioned(
              top: 337.0,
              left: 32.0,
              child: Icon(
                IconData(983503, fontFamily: 'MaterialIcons'),
                color: Color(4278190080),
              ),
            ),
            const Positioned(
              top: 361.0,
              left: 129.0,
              width: 77.0,
              height: 44.0,
              child: Text(
                '',
                style: TextStyle(),
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(4294967295),
    );
  }

  void dsfgfdsg() {
    print(var1! + ', welcome!');
    openUrl('https://nowa.dev');
  }

  @override
  void initState() {
    super.initState();
  }
}
