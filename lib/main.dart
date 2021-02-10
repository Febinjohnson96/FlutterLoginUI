import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Main Root
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

// First Page
class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.red[400],
        body: SafeArea(
          child: Column(
            children: [
              // Hero Image
              Image(
                image: AssetImage('images/bank.png'),
              ),
              //Hero Text
              Text(
                " Let's sign you in",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 40.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              //Subtitle
              Text(
                'Build better finance habits',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              // Forms
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.account_box),
                        hintText: 'Username',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        )),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'Password',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        )),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  //Sign in button
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return UserPage();
                        }),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.red[400],
                      ),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                    color: Colors.black,
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Second Page
class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.red,
        // ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                //Main Content
                Text(
                  'Hi,Jane Doe',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.red[400],
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/jane.jpg'),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: 100.0,
                  width: 1000.0,
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red[400],
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Your Balance',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '₹ 15,000',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                // firtRow
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Date',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Desc',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Type',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Amount',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                ),
                //Second Row
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '09-jan-2021',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'NEFT',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Debit',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.0, color: Colors.red),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '2000',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                    ],
                  ),
                ),
                //Third Row
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '01-jan-2021',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'NACH',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Debit',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.0, color: Colors.red),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '3000',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                    ],
                  ),
                ),
                //Fourth Row
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '28-dec-2020',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'NEFT',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Credit',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.0, color: Colors.green),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '20,000',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Recent Transaction',
                  style: TextStyle(
                    color: Colors.red[400],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                //First Recent Row
                Row(
                  children: [
                    Expanded(
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('images/brooke-cagle.jpg'),
                      ),
                    ),
                    Expanded(
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('images/justin-chen.jpg'),
                      ),
                    ),
                    Expanded(
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage:
                            AssetImage('images/rachel-mcdermott.jpg'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    'Sign Out',
                    style: TextStyle(
                      color: Colors.red[400],
                    ),
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
