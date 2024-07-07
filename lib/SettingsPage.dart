import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 393.0, 'auto-height': 808.0})
class SettingsPage extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NFlex(
          direction: Axis.vertical,
          spacing: 0.0,
          children: [
            FlexSizedBox(
              width: double.infinity,
              height: 500.0,
              child: ListView(
                padding: const EdgeInsets.only(
                  left: 14.0,
                  right: 14.0,
                  top: 14.0,
                  bottom: 14.0,
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0.0,
                      right: 0.0,
                      top: 0.0,
                      bottom: 10.0,
                    ),
                    child: ListTile(
                      title: const Text(
                        'Name',
                        style: TextStyle(),
                      ),
                      tileColor: const Color(4294967295),
                      leading: const Icon(
                        IconData(58513, fontFamily: 'MaterialIcons'),
                        color: null,
                      ),
                      trailing: const Text(
                        'User name',
                        style: TextStyle(),
                      ),
                      iconColor: const Color(4289642458),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                  SizedBox(
                    width: null,
                    height: null,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 0.0,
                        right: 0.0,
                        top: 0.0,
                        bottom: 10.0,
                      ),
                      child: ListTile(
                        title: const Text(
                          'Delete account',
                          style: TextStyle(),
                        ),
                        tileColor: const Color(4294967295),
                        leading: const Icon(
                          IconData(63127, fontFamily: 'MaterialIcons'),
                          color: null,
                        ),
                        iconColor: const Color(4289642458),
                        subtitle: const Text(
                          'Deleting the Account is permanent',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        isThreeLine: false,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
      backgroundColor: const Color(4293916158),
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(),
        ),
        backgroundColor: const Color(4290434043),
        actions: [],
      ),
    );
  }
}
