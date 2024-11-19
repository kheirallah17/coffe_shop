import 'package:coffee_shop/widgets/Single_item_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ItemsWidget extends StatelessWidget {
   ItemsWidget({super.key});

 List img=[
 "Latte",
 "Black Coffee",
 "Cold Coffee",
 "Espresso",
];
  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2,
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    childAspectRatio: (150/195),
    children: [
      for(int i=0;i<img.length;i++)
      Container(
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        margin:const EdgeInsets.symmetric(vertical: 8,horizontal: 13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 36, 36, 36),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 8,
            )
          ],
        ),
        child: Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleItemScreen()),);
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                width: 120,
                height: 120,
                child: Image.asset("lib/images/${img[i]}.png"),
              ),
            ),
            Padding(padding: const EdgeInsets.only(bottom: 9),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(
                  img[i],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8,),
                const Text(
                  "Best Coffee",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white60,
                  ),
                ),
                ],
              ),
            ),
            ),
            Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "30\$",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                   child:const Icon(CupertinoIcons.add,size: 16,color: Colors.white,),
                  ),
                ),
              ],
            ),
            ),
          ],
        ),
      ),
    ],
    );
  }
}