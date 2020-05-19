import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget{
  @override
  _SignInPageState  createState() => _SignInPageState();
}
class _SignInPageState extends State<SignInPage> {

  bool _togglevisibility = true;
  Widget _buildEmailTextFeild() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Your email or username",
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 18.0,
        ),
      ),
    );
  }

    Widget _buildPasswordTextFeild(){
      return TextFormField(
        decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 18.0,
          ),
          suffixIcon: InkWell
            ( child:IconButton(
              onPressed: (){
                setState(() {
                  _togglevisibility= !_togglevisibility;
                });
              },
               icon: _togglevisibility ? Icon(Icons.visibility_off): Icon(Icons.visibility),
              ),
        ),
      ),
      obscureText: _togglevisibility,
      );
    }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding:EdgeInsets.symmetric(horizontal: 10.0) ,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: <Widget>[
            Text("Sign In", style: TextStyle(fontSize:40.0, fontWeight: FontWeight.bold ) ,),
            SizedBox( height: 100.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Forgotten Pasword?",
                  style:TextStyle(
                      color: Colors.redAccent,
                      fontSize:20.0 ,
                      fontWeight:FontWeight.bold ),
                )

              ],
            ),
            SizedBox(height: 10.0,),
            Card(
              elevation: 5.0 ,
              child: Padding(
                padding:EdgeInsets.all(20.0) ,
                child: Column(
                  children: <Widget>[
                    _buildEmailTextFeild(),
                    SizedBox(height: 20.0,),
                    _buildPasswordTextFeild(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.0,),
            Container(
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.blueAccent ,
                borderRadius: BorderRadius.circular(25.0)
              ) ,
              child: Text("Sign In", style: TextStyle(
                fontSize:18.0 ,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ),
            Divider(height: 20.0),
            Row(
              mainAxisAlignment:MainAxisAlignment.center ,
              children: <Widget>[
                Text("Don't have an account?",style: TextStyle(
                    color:Colors.grey,fontSize:18.0,
                    fontWeight: FontWeight.bold  ),
                ),
                SizedBox(width: 10.0,),
                Text("Sign Up",style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ))
              ],
            ),
          ],
        ),
      ),
     );
  }

}