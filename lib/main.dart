import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var bottonbarindex=1;
  List categori = [
    {'image': '', 'title': 'All'},
    {
      'image':
          'https://www.freeiconspng.com/thumbs/fast-food-png/fast-food-png-most-popular-fast-food-snacks-in-your-area-and-most--3.png',
      'title': 'Fast Food'
    },
    {'image': '', 'title': 'Drink'},
    {'image': '', 'title': 'salate'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.white, title: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)),
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Color(0xaaf8bbd0),
                      borderRadius: BorderRadius.circular(25)),
                  child: Icon(
                    Icons.badge,
                    color: Colors.pink.shade300,
                  ),
                )
              ],
            ),
          ),),
      body: ListView(
        children: [
          
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Get Your ',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
                Text(
                  'Best',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.pinkAccent),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Food ',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.pinkAccent),
                ),
                Text(
                  'Around You',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xffeeeeee),
                borderRadius: BorderRadius.circular(25)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Search hotel',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.pinkAccent,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Category',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                      color: Colors.pinkAccent, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categori.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 7,
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffececef),
                      borderRadius: BorderRadius.circular(7)),
                  child: Row(
                    children: [
                      categori[index]["image"] == ''
                          ? Container()
                          : Container(
                              height: 25,
                              padding: EdgeInsets.only(right: 5),
                              child: Image(
                                  image:
                                      NetworkImage(categori[index]["image"]))),
                      Text(categori[index]["title"])
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 220,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color(0x55fce4ec),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 30),
                          child: Image(
                              image: NetworkImage(
                                  'https://www.freeiconspng.com/thumbs/fast-food-png/fast-food-png-most-popular-fast-food-snacks-in-your-area-and-most--3.png')),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        color: Colors.white54,
                        child: Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Container(
                                    width: double.infinity,
                                    child: Text('Cheese Burger',style: TextStyle(fontWeight: FontWeight.bold),)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [Text('Price',style: TextStyle(color: Colors.black45,fontSize: 12),), Text(' \$5',style: TextStyle(color: Colors.black54,fontSize: 12),)],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.pinkAccent,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Icon(Icons.add,color: Colors.white,),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color(0x55fce4ec),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 30),
                          child: Image(
                              image: NetworkImage(
                                  'https://www.freeiconspng.com/thumbs/fast-food-png/fast-food-png-most-popular-fast-food-snacks-in-your-area-and-most--3.png')),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        color: Colors.white54,
                        child: Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Container(
                                    width: double.infinity,
                                    child: Text('Cheese Burger',style: TextStyle(fontWeight: FontWeight.bold),)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [Text('Price',style: TextStyle(color: Colors.black45,fontSize: 12),), Text(' \$5',style: TextStyle(color: Colors.black54,fontSize: 12),)],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.pinkAccent,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Icon(Icons.add,color: Colors.white,),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Container(
                  height: 220,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color(0x55fce4ec),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 30),
                          child: Image(
                              image: NetworkImage(
                                  'https://www.freeiconspng.com/thumbs/fast-food-png/fast-food-png-most-popular-fast-food-snacks-in-your-area-and-most--3.png')),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        color: Colors.white54,
                        child: Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Container(
                                    width: double.infinity,
                                    child: Text('Cheese Burger',style: TextStyle(fontWeight: FontWeight.bold),)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [Text('Price',style: TextStyle(color: Colors.black45,fontSize: 12),), Text(' \$5',style: TextStyle(color: Colors.black54,fontSize: 12),)],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.pinkAccent,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Icon(Icons.add,color: Colors.white,),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color(0x55fce4ec),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 30),
                          child: Image(
                              image: NetworkImage(
                                  'https://www.freeiconspng.com/thumbs/fast-food-png/fast-food-png-most-popular-fast-food-snacks-in-your-area-and-most--3.png')),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        color: Colors.white54,
                        child: Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Container(
                                    width: double.infinity,
                                    child: Text('Cheese Burger',style: TextStyle(fontWeight: FontWeight.bold),)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [Text('Price',style: TextStyle(color: Colors.black45,fontSize: 12),), Text(' \$5',style: TextStyle(color: Colors.black54,fontSize: 12),)],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.pinkAccent,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Icon(Icons.add,color: Colors.white,),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
         
           GestureDetector(onTap: (){setState(() {
            bottonbarindex=1;
          });}, child: Container(height: 45,width: 45, decoration: BoxDecoration(color: bottonbarindex==1? Colors.pink.shade400 : Colors.transparent,borderRadius: BorderRadius.circular(8)), child:  Icon(Icons.home_outlined,color: bottonbarindex==1?Colors.white:Colors.black45,))),
           GestureDetector(onTap: (){setState(() {
            bottonbarindex=2;
          });}, child: Container(height: 45,width: 45, decoration: BoxDecoration(color: bottonbarindex==2? Colors.pink.shade400 : Colors.transparent,borderRadius: BorderRadius.circular(8)), child:  Icon(Icons.category_outlined,color: bottonbarindex==2?Colors.white:Colors.black45,))),
           GestureDetector(onTap: (){setState(() {
            bottonbarindex=3;
          });}, child: Container(height: 45,width: 45, decoration: BoxDecoration(color: bottonbarindex==3? Colors.pink.shade400 : Colors.transparent,borderRadius: BorderRadius.circular(8)), child:  Icon(Icons.link_rounded,color: bottonbarindex==3?Colors.white:Colors.black45,))),
           GestureDetector(onTap: (){setState(() {
            bottonbarindex=4;
          });}, child: Container(height: 45,width: 45, decoration: BoxDecoration(color: bottonbarindex==4? Colors.pink.shade400 : Colors.transparent,borderRadius: BorderRadius.circular(8)), child:  Icon(Icons.card_giftcard_outlined,color: bottonbarindex==4?Colors.white:Colors.black45,))),
           GestureDetector(onTap: (){setState(() {
            bottonbarindex=5;
          });}, child: Container(height: 45,width: 45, decoration: BoxDecoration(color: bottonbarindex==5? Colors.pink.shade400 : Colors.transparent,borderRadius: BorderRadius.circular(8)), child:  Icon(Icons.portable_wifi_off_outlined,color: bottonbarindex==5?Colors.white:Colors.black45,))),

            
            
          ],
        ),
      ),
    );
  }
}
