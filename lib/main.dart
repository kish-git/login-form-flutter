import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Flutter Form Demo';
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        body: MyCustomForm(),
      ),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    const double fontSize3 = 15.0;
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 450,
              width: 600,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromRGBO(167, 167, 165, 1))),
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Text(
                      'If You have an Account with us, please log in.',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 17, 10, 3),
                    child: Text(
                      'E-MAIL*',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: fontSize3),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Color.fromRGBO(177, 182, 178, 1),
                          filled: true,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          hintText: 'Your Email ID',
                          hintStyle: TextStyle(fontSize: fontSize3)
                          // icon: const Icon(Icons.person),
                          // labelText: 'Your Email ID',
                          ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 17, 10, 3),
                    child: Text(
                      'PASSWORD*',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: fontSize3),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Color.fromRGBO(177, 182, 178, 1),
                          filled: true,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          hintText: 'Type Password',
                          hintStyle: TextStyle(fontSize: fontSize3)
                          // icon: const Icon(Icons.password),
                          // labelText: 'Type Password',
                          ),
                    ),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.blueGrey.shade900)),
                                onPressed: () {},
                                child: const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  child: Text(
                                    'LOGIN',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 22,
                                      // backgroundColor: Colors.black,
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(40, 20, 0, 20),
                            child: const Icon(
                              Icons.lock,
                              size: 20,
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(0, 30, 20, 28),
                              child: Text(
                                'Forget Password',
                              ))
                        ],
                      )
                    ],
                  ),
                ],
              )),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(0, 12, 00, 20),
              child: Text(
                'Or Sign in using',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(3.5),
                child: Image.asset(
                  'linkedin.PNG',
                  scale: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.5),
                child: Image.asset(
                  'google.PNG',
                  scale: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.5),
                child: Image.asset(
                  'facebook.PNG',
                  scale: 2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
