import 'package:coffee_shop/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(top: 100,bottom: 40),
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(image: AssetImage("lib/images/bg.png"),
          fit: BoxFit.cover,
          opacity: 0.7,
          ),),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Coffe Shop",style:GoogleFonts.pacifico(fontSize: 50,color: Colors.white),),
              Column(
                children: [
                  Text("Feeling Low? Get a Sip of Coffee",style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                  ),),
                  const SizedBox(height: 80,),
                  InkWell(
                    splashColor: Colors.black,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen(),));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 50),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text("Get Start",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        letterSpacing: 1,
                      ),),
                    ),
                  ),
                ],
              )
            ],
          ),
      ),
    );
  }
}