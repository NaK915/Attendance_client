import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  TextEditingController name = TextEditingController();
  TextEditingController erno = TextEditingController();
  TextEditingController course = TextEditingController();
  TextEditingController year = TextEditingController();
  onClick() {}
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return (Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Login',
                style: GoogleFonts.montserrat(fontSize: size.width * 0.1),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              SizedBox(
                width: size.width * 0.92,
                child: TextFormField(
                  controller: name,
                  autocorrect: false,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Your Name',
                      label: Text('Name')),
                ),
              ),
              SizedBox(
                width: size.width * 0.92,
                child: TextFormField(
                  autocorrect: false,
                  controller: erno,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.numbers),
                      hintText: 'Your Enrollment Number',
                      label: Text('Enrollment')),
                ),
              ),
              SizedBox(
                width: size.width * 0.92,
                child: TextFormField(
                  autocorrect: false,
                  controller: course,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.book),
                      hintText: 'Your current course',
                      label: Text('Course')),
                ),
              ),
              SizedBox(
                width: size.width * 0.92,
                child: TextFormField(
                  controller: year,
                  autocorrect: false,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.date_range),
                      hintText: 'Your current year',
                      label: Text('Year')),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(size.height * 0.04),
                child: MaterialButton(
                  onPressed: onClick,
                  child: Row(children: [
                    SizedBox(
                      width: size.width * 0.25,
                    ),
                    Icon(Icons.login),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Text('Login')
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
