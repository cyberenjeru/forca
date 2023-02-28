import 'package:flutter/material.dart';
import 'package:forca/shared_preferences/app_preferences.dart';

import 'home_route.dart';

class WelcomeRoute extends StatefulWidget {
  @override
  _WelcomeRouteState createState() => _WelcomeRouteState();
}

class _WelcomeRouteState extends State<WelcomeRoute> {
  bool checkValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Bem-vindo',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const <Widget>[
                  Text(
                    'Marcar como lido',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Checkbox(
                value: checkValue,
                onChanged: (value) {
                  setState(() {
                    checkValue = value!;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () async {
                  AppPreferences.setWelcomeRead(status: checkValue);

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeRoute()),
                  );
                },
                child: const Text('Avançar', style: TextStyle(fontSize: 20)),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
