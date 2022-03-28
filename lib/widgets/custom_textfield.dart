import 'package:flutter/material.dart';

import '../constants.dart';

class Customtextfield extends StatelessWidget {
  final String hint ;
  final IconData icon;
  final Function onclick;


  String errorMessage(String str)
  {
    switch(hint){
  case 'Entre your Name':      return 'Name is empty !';
  case 'Entre your email':     return 'email is empty !';
  case 'Entre your password':  return 'password is empty !';

}


  }

  const Customtextfield({ this.onclick,this.hint, this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(

          validator:(value){
            //y3awed  build text with condition
          if(value.isEmpty){
                               return errorMessage(hint);    //ignore is empty
                            }
                        },

          onSaved: onclick() ,
          obscureText: hint=='Entre your password' ? true :false,
          cursorColor: KMaincolor,
          decoration: InputDecoration(
            hintText: hint,
            prefixIcon: Icon(icon ,color: KMaincolor,),
            filled: true,
            fillColor: Ksecandrecolor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                  color: Colors.white
              ),
            ),


            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                  color: Colors.white
              ),
            ),

             border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
            color: Colors.white
        ),
      ),
          )

      ),
    );
  }
}

class required {
}
