import 'package:coffee_shop/Home.dart';
import 'package:coffee_shop/widgets/home_bottom_bar.dart';
import 'package:coffee_shop/widgets/items_widget.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState(){
    _tabController=TabController(length: 4, vsync: this,initialIndex: 0);
    _tabController.addListener(_handelTabSelection);
    super.initState();
  }

  _handelTabSelection(){
    if(_tabController.indexIsChanging){
      setState(() {
        
      });
    }
  }
  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(padding: 
      EdgeInsets.only(top: 15),
      child: ListView(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.sort_rounded,
                  color: Colors.white.withOpacity(0.5),
                  size: 35,
                ),
              ),
               InkWell(
                onTap: (){},
                child: Icon(
                  Icons.notifications,
                  color: Colors.white.withOpacity(0.5),
                  size: 35,
                ),
              ),
            ],
          ),
          ),
           const SizedBox(height: 30,),
           const Padding(padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text("It's a great Day for coffee",style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w400
          ),),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
            width: MediaQuery.of(context).size.width,
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey.shade700,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 2),
                hintText: "Find your coffee",
                hintStyle: TextStyle(color: Colors.white.withOpacity(0.5),),
                prefix: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.white.withOpacity(0.5),
                )
              ),
            ),
          ),
          TabBar(
            controller: _tabController,
            labelColor: Colors.orange,
            unselectedLabelColor: Colors.white.withOpacity(0.5),
            //isScrollable: true,
            indicator:const UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 3,
                color: Colors.orange,
              ),
             // insets: EdgeInsets.symmetric(horizontal: 16),
            ),
            labelStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
            labelPadding: const EdgeInsets.symmetric(horizontal: 20),
            tabs: const [
            Tab(text: "Hot Coffee",),
            Tab(text: "Cold Coffee",),
            Tab(text: "Cappuiccino",),
            Tab(text: "Americano",),
          ]),
          const SizedBox(height: 10),
          Center(
            child: [
              ItemsWidget(),
              ItemsWidget(),
              ItemsWidget(),
              ItemsWidget(),
            ][_tabController.index],
          ),
        ],
      ),
      ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}