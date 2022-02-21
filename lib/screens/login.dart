import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  GlobalKey _form = GlobalKey();
  @override 
  Widget build (BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("User Login")),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Form(
            key: _form,
          child:Padding(
            padding:const EdgeInsets.all(15.0),
          child :ListView(
            children: [
              Image.asset("Assets/Images/3-app-icon-designs.jpg"),
              Text(
                "Welcome to Dummy App",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0
                  ,)
              ),
              SizedBox(
                height:10,
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(color: Colors.grey.shade100,
                borderRadius: BorderRadius.all(Radius.circular(60.0)),),
              child: TextFormField(

                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.face,
                  color:Theme.of(context).primaryColor,
                  ),
                  labelStyle:TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                  border: InputBorder.none,
                  labelText: "Username",
                ),
              )
              ),
              SizedBox(
                height:10,
              ),
              Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(color: Colors.grey.shade100,
                    borderRadius: BorderRadius.all(Radius.circular(60.0)),),
                  child: TextFormField(

                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock,
                        color:Theme.of(context).primaryColor,
                      ),
                      labelStyle:TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                      border: InputBorder.none,
                      labelText: "Password",
                    ),
                  )
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                    "Login",
                style:TextStyle(fontSize: 20.0),
                ),
              ),
              SizedBox(
                height:10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("If you don't have an existing account "),
                  TextButton(
                    onPressed: () {},
                    child: Text('Sign Up')
                  )
                ]
              )
            ],
          )
        ),
          ),
        ),
        ),
    );
  }
}