import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}
class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final _formKey = GlobalKey<FormState>();
  User user=new User();
  final _passwordFieldKey = GlobalKey<FormFieldState<String>>();
 // int _current=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
          toolbarHeight: 30,
          backgroundColor: Colors.blue[800],

        ),*/
      body: Container(
        width: double.infinity,
        color: Colors.blue[900],
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 90,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Column(children: <Widget>[
                  Container(
                      child: Padding(
                        padding:EdgeInsets.fromLTRB(10, 20, 20, 10),
                        child: Row(
                            children:<Widget>[
                              Expanded(
                                  child: IconButton(
                                    icon: Icon(Icons.arrow_back_sharp),
                                    iconSize: 30,
                                    color: Colors.white,
                                    onPressed: () {

                                    },
                                    alignment: Alignment(-1.0, 0.0),
                                  ),
                              ),
                             /* Padding(
                                padding: EdgeInsets.fromLTRB(0.0, 20, 0, 10),
                                child: Text(
                                  'S',
                                  style: TextStyle(color: Colors.white, fontSize: 10),
                                  textScaleFactor: 2.0,
                                  textAlign: TextAlign.left,
                                ),
                              )*/

                            ]),
                      )),
                 /*Text(
                    'SIRO',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textScaleFactor: 1.5,
                    textAlign: TextAlign.center,
                  ),*/
                ]),
              ),
            ),
            //  header(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60),
                        topLeft: Radius.circular(60),
                      )),

                  //  child: SingleChildScrollView(
                  child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          //SizedBox(height:30),
                            Container(
                              height: 90,
                              child: Text(
                                "SIGN-UP",
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.blueAccent[400],
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          Form(
                            key: _formKey,
                            child: Column(
                            children: <Widget>[
                              TextFormField(
                                scrollPadding: EdgeInsets.all(10),
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(

                                  labelText: 'Name',
                                  errorStyle: TextStyle(
                                      color: Colors.deepOrange, fontSize: 15.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),

                                ),
                                inputFormatters: [new LengthLimitingTextInputFormatter(20)],
                                validator: (value){
                                  if(value.isEmpty){
                                    return 'Enter Your Name';
                                  }
                                  return null;
                                },


                              ),
                              SizedBox(
                                height: 40,
                              ),
                              TextFormField(
                                scrollPadding: EdgeInsets.all(10),
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  errorStyle: TextStyle(
                                      color: Colors.deepOrange, fontSize: 15.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                validator: (value){
                                  if(!emailReg.hasMatch(value)) {
                                       return 'Enter Correct Mail';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              TextFormField(
                                key: _passwordFieldKey,
                                scrollPadding: EdgeInsets.all(10),
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  errorStyle: TextStyle(
                                      color: Colors.deepOrange, fontSize: 15.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              TextFormField(
                                scrollPadding: EdgeInsets.all(10),
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'Confirm Password',
                                  errorStyle: TextStyle(
                                      color: Colors.deepOrange, fontSize: 15.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                validator: (value){
                                  if(value.isEmpty){return 'Password is required';}
                                  if(value!=_passwordFieldKey.currentState.value){return 'Password Do Not Match';}
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              /*TextFormField(
                                scrollPadding: EdgeInsets.all(10),
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  hintText: 'abc@gmail.com',
                                  errorStyle: TextStyle(
                                      color: Colors.deepOrange, fontSize: 15.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                              SizedBox(height: 40,),*/
                              TextFormField(
                                //validator: (String value),
                                validator: (value) {
                                  if (!phoneReg.hasMatch(value)) {
                                    return 'Please enter principle';
                                  }
                                  return null;
                                },
                                scrollPadding: EdgeInsets.all(10),
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  labelText: 'MOBILE',
                                  errorStyle: TextStyle(
                                      color: Colors.deepOrange, fontSize: 15.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),

                                  ),

                                ),
                                //inputFormatters: [new WhitelistingTextInputFormatter(new RegExp(r'[0-9]*$')),],

                              ),
                              SizedBox(
                                height: 50,
                              ),
                            ],
                          ),),

                          // Text('Forget Password?', textAlign: TextAlign.right,),
                          //SizedBox(height: 30,),
                          Container(
                            width: 200,
                            height: 50,
                            child: RaisedButton(
                                color: Theme.of(context).primaryColorDark,
                                elevation: 6.0,
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                      color: Colors.white,
                                      /*fontWeight: FontWeight.bold,*/
                                      fontSize: 15),
                                  textScaleFactor: 1.5,
                                ),
                                onPressed: () {
                                 if (_formKey.currentState.validate()) {
                                           print("Process data");

                                    }
                                 else {
                                    print('Error');
                                  }
                                 },
                                ),
                          ),
                        ],
                      )),
                  //),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Search(),
    );
  }
}
final RegExp phoneReg=new RegExp((r"^[0-9]{10}$"));  //r'^[0-9]\d{10}$'
final RegExp emailReg=new RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
class User{
String name;
String email;
String pass;
String phone;

}
