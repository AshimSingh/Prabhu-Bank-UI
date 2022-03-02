import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    height= MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: _AppBar(),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.grey[300],
      body: _Body(),      
    );
  }
  Widget _AppBar(){
    return Center(  
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width:width*0.3),
          Container(
            height: height*0.3,
            width: width*0.3,
            child:Image.network("https://www.askmeconsult.com/uploads/2018/02/PrabhuBankLtd.jpg"),
            ),
            SizedBox(width: width*0.13),
            Icon(Icons.qr_code_scanner),
            SizedBox(width:width*0.041),
            Icon(Icons.sms),
            
        ],

      ),
    );
  }
  Widget _Body(){
    return Center(
      child:Container(
        width: width*0.97,
        height: height*0.33,
        decoration:BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.red,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                height: height*0.07,
                width: width*0.8,
                color: Colors.grey[100],
                child: Padding(padding: EdgeInsets.fromLTRB(55, 15, 0, 5),
                child: Text("Login to your account",style: TextStyle(
                  color: Colors.red,fontWeight: FontWeight.w500,fontSize: 20
                ),),),
              ),
            _TextField(),         

            ],
          ),
        ),
      )
    );
  }
  Widget _TextField(){
    OutlineInputBorder buttom = OutlineInputBorder(
          borderRadius:BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.grey[100],
          ) );
      
    return Container(
      height: height*0.07,
      width: width*0.85,
      
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          enabled: true,
          focusedBorder: buttom,
          enabledBorder: buttom,
      ),
      ),
    );
  }
}