import 'package:attendance_client/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon buticon = const Icon(Icons.bluetooth);
  String button = 'Start';
  String text = 'Wait for the teacher to start collecting attendance';
  onClick() {
    setState(() {
      buticon = const Icon(Icons.bluetooth_connected);
      button = 'Collecting';
      text = 'Sending Attendance Data, please wait';
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mark Attendance'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.all(size.width * 0.03),
                child: const Text('Welcome <Enrollment>'),
              ),
              Padding(
                padding: EdgeInsets.all(size.width * 0.03),
                child: const Text(
                    'Click the button below to register your attendance'),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              MaterialButton(
                onPressed: onClick,
                child: Container(
                    decoration: BoxDecoration(color: Colors.grey.shade800),
                    width: size.width * 0.32,
                    child: Padding(
                      padding: EdgeInsets.all(size.width * 0.03),
                      child: Row(children: [
                        buticon,
                        SizedBox(
                          width: size.width * 0.03,
                        ),
                        Text(button)
                      ]),
                    )),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Padding(
                padding: EdgeInsets.all(size.width * 0.03),
                child: Text(text),
              )
            ]),
          ),
        ));
  }
}
