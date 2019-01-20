import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class ExampleTextFormFields extends StatelessWidget{

 static var _controller =  MaskedTextController(mask: '+0(000)000-00-00');

  @override
  Widget build(BuildContext context){
    //gesture detector is for dismiss keyboard if click outside text field
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('TextFormFields'),
        ),
        body: ListView(
          children: <Widget>[
            Center(
              child: Container(
                width: 150,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      initialValue: 'login',
                      decoration: InputDecoration(
                        labelText: 'Login',
                      ),
                    ),
                    TextFormField(
                      initialValue: 'password',
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                      obscureText: true,
                    ),
                    TextFormField(
                      initialValue: 'onlyletters',
                      decoration: InputDecoration(
                        labelText: 'Input Formatter',
                      ),
                      //need package:flutter/services.dart import
                      inputFormatters: [
                        WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),
                      ],
                    ),
                    TextFormField(
                      initialValue: 'multiline',
                      decoration: InputDecoration(
                        labelText: 'Multi line',
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                    ),
                    TextFormField(
                      //need install flutter_masked_text: ^0.7.0 and package:flutter_masked_text/flutter_masked_text.dart import
                      controller: _controller,
                      decoration: InputDecoration(
                        labelText: 'Masked text',
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ]
                )
              )
            )
          ]
        )
      )
    );
  }
}