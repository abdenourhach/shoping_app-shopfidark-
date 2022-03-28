
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopingdark/constants.dart';
import 'package:shopingdark/screens/sinupscreen.dart';

import '../widgets/custom_textfield.dart';

class Loginscreen extends StatelessWidget {
GlobalKey<FormState> _globalkey=GlobalKey<FormState>();
static String id='loginscrren';
  @override
  Widget build(BuildContext context) {

    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: KMaincolor,
      body:Form(
        key: _globalkey,
        child: ListView(
          children: [

    Padding(
                                   padding: EdgeInsets.only(top: 40),
                                   child: Container(
                                      height: MediaQuery.of(context).size.height*.2,
                                      child: Column(

                                        children: [

                                      Image(image: AssetImage('images/icones/buy.png'),),

                                      Positioned(
                                        bottom: 0,
                                        child:
                                           Text('    Shop Fi Dark',
                                          style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'Pacifico',
                                          ),
                                        ),
                                      ),


                                        ],
                                       ),
                                    ),
                                 ),
SizedBox(
  height:height*.1 ,
),
            Customtextfield(
              onclick: (){

              },
              hint: 'Entre your email',
              icon: Icons.email,
                     ),
            SizedBox(
              height:height*.02 ,
            ),
            Customtextfield(
              onclick: (){

              },
              hint: 'Entre your password',
              icon: Icons.lock,
            ),
            SizedBox(
              height:height*.05 ,
            ),
   Padding(
     padding: const EdgeInsets.symmetric(horizontal: 100),
     child: FlatButton(
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(20),
         ),
  color: Colors.black,
        onPressed: () {
           if(_globalkey.currentState.validate()) {
//

                                                  }
        },
        child: Text(
 'login',
  style:TextStyle(color: Colors.white),
),),
           ),
            SizedBox(
              height:height*.05 ,
            ),

            Row(
              mainAxisAlignment:  MainAxisAlignment.center ,
              children: [
                Text('Don\'t have an account ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, Sinupscreen.id);
                  },
                  child: Text('Sinup',
                  style: TextStyle(fontSize: 16),
                    ),        ),


              ],
            ),









                              ],
                            ),
      ),


                    
                  );






    
  }
}



