import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_tree/screens/accounts_screen.dart';

class Login extends StatelessWidget {

  var _isChecked =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[50],
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.asset("assets/images/user.png",
                              width: 30,
                                height: 30,
                              ),
                            ),
                        ),
                        SizedBox(width: 10,),
                        Text('Login',
                            style: TextStyle(
                              fontSize: 26,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            )),
                      ],
                    ),
                    Icon(CupertinoIcons.xmark,size: 26),


                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20),
                  child: Text('Login to your account - enjoy exclusive \n features and many more.',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.grey[500],
                      )),
                ),
                Row(
                  children: [
                    Text('Email',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Icon(CupertinoIcons.staroflife_fill,
                      color: Colors.red,
                      size: 8,),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: TextFormField(
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.black12,width: 2
                        ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.indigo,
                          ),
                        ),
                        focusColor: Colors.indigo,
                        hintText: "Panjiperdana@mail.com",
                      ),

                    ),
                  ),
                ),
                Row(
                  children: [
                    Text('Password',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Icon(CupertinoIcons.staroflife_fill,
                        color: Colors.red,
                        size: 8,),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.black12,width: 2
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.indigo,
                          ),
                        ),
                        suffixIcon:Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Icon(CupertinoIcons.eye_slash),
                        ),
                        hintText: "Sentraljaya1192",
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                Checkbox(
                activeColor: Colors.indigo[700],
              value: _isChecked,
              onChanged: _handleRemeberme,
                focusColor: Colors.indigo,
                checkColor: Colors.white,
                  autofocus: true,
                ),

                        Text('Remember me',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),),
                      ],
                    ),
                    Text('Forget Password?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: MaterialButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Accounts()));
                    },
                      child: Text('Login',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),),
                      color: Colors.indigo[700],
                      shape: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text('Or',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: MaterialButton(onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/google.png",
                          width: 30,
                          height: 30,
                          fit: BoxFit.cover,),
                          SizedBox(width: 15,),
                          Text('Google',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.black54,
                            ),),
                        ],
                      ),
                      color: Colors.grey[200],
                      shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey,width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: MaterialButton(onPressed: (){},
                    color: Colors.grey[200],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/twitter.png",
                          width: 30,
                          height: 30,
                          fit: BoxFit.cover,),
                        SizedBox(width: 15,),
                        Text('Twitter',
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.black54,
                          ),),
                      ],
                    ),
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey,width: 2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleRemeberme(bool? value) {
  }
}
