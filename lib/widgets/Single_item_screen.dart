import 'package:flutter/material.dart';

class SingleItemScreen extends StatelessWidget {
  const SingleItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child:Padding(padding: const EdgeInsets.only(top: 30,bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.only(left: 25),
              child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new,
            color: Colors.white.withOpacity(0.5)),
              ), 
              ),
              const SizedBox(height: 50,),
              Center(
                child: Image.asset("lib/images/Latte.png"),
              ),
            ],
          ),
          
          ),
           ),
      ),
    );
  }
}