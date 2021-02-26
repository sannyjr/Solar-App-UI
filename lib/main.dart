import 'package:flutter/material.dart';
void main(){
  runApp(Sanny1());
}
class Sanny1 extends StatelessWidget{
 
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green[700],
        body: ListView(
          children:[
            Container(
             child:Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children:[
                 Container(
                  child: Icon(
                         Icons.menu, 
                         color: Colors.white,
                         size:30,
                  ),             
                 ),
                 Container(
                  child: Column(
                    children:[
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Icon(
                          Icons.settings,
                          color:Colors.white,
                          size: 30,
                        ),
                        
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Icon(
                          Icons.notifications_active_outlined,
                          color:Colors.white,
                          size: 30,
                    ),
                   ),
                  ]
                 ),
                ),
               ]
              ),        
            ),
                      Container(
                      child:Center(
                           child: Image.network('https://cdn.iconscout.com/icon/premium/png-256-thumb/captain-america-shield-1-895494.png',fit:BoxFit.cover),
                        ),
                        height: 150,
                        margin: EdgeInsets.all(10),
           ),
            Container(
             // height:1000,
              decoration: BoxDecoration(
                 color:Colors.white,
                 borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(30),
                  topRight:Radius.circular(30),
                ),
              ),
              child: Column(
                children:[
                  Container(
                    height: 30,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green[700],
                    ),
                child: Container( 
                   child: Icon(Icons.search, color: Colors.white),
                   alignment: Alignment.centerRight,
                   margin: EdgeInsets.fromLTRB(0,0,20,0),
          ),
         ), 
            Container(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: sanny.length,
            itemBuilder: (context, index){
              final Sanny mySun = sanny[index];
              return Container(
                width: 90,
                margin: EdgeInsets.all(5),
                 decoration: BoxDecoration(
                    color: mySun.color,
                    borderRadius: BorderRadius.circular(30),
                      ),
                child: Column(
                  children: [
                    Container(
                      child: Icon(
                        mySun.icon,
                        color: Colors.white,
                        size:20,
                      ),
                    ),
                    Container(
                      child: Text(
                      mySun.text,
                        style: TextStyle(color:Colors.white,fontSize:10),
                      ),
                    ),
                  ]
                ),
              );
            }
          ),
         ),       
         Container(
           margin: EdgeInsets.all(20),
           padding: EdgeInsets.all(20),
           decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(50),
            boxShadow : [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0.5,0.5),
                blurRadius: 1,
                spreadRadius: 0.5,
              ),
              BoxShadow(
                color: Colors.black,
                offset: Offset(-0.5,-0.5),
                blurRadius: 1,
                spreadRadius: 0.5,
              ),
            ]
           ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: sanny2.map((index){
              return Row(
                
               children:[
                 Icon(
                index.icon,
                color: Colors.green,
               ),
                 Container(
                  child: Text(
                    index.text,
                    style:TextStyle(color:Colors.green,fontSize:20),
                  ),
                 ),
               ] 
              );
            }).toList(),
          ),
         ),
            Container(
             // height:770,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
               boxShadow: [
                 BoxShadow(
                  color: Colors.grey,
                  offset: Offset (0.5,0.5),
                  blurRadius: 0.5,
                  spreadRadius: 0.5,
                 ),
                 BoxShadow(
                  color: Colors.grey,
                  offset: Offset(-0.5,-0.5),
                  blurRadius: 0.5,
                  spreadRadius: 0.5,
                 ),
               ]
              ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Container(
                  margin: EdgeInsets.all(10), 
               child: Text(
                 'Comsumption:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight:FontWeight.bold,
                    fontFamily: 'Khmer MEF2',
                  ),     
                 ),
                ),
                Container(
                  height:250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: sanny3.length,
                    itemBuilder:(context, index){
                    final  Sanny3 mySun3 = sanny3[index];
                      return Container(
                             margin: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                              color: mySun3.color,
                              borderRadius: BorderRadius.circular(10),
                               
                             ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Image.network(mySun3.image, fit: BoxFit.fitHeight),
                              margin: EdgeInsets.fromLTRB(0,10,0,10),
                              height: 100,
                              width: 175,
                            ),
                            Container(
                              child: Text(mySun3.text,
                                         style:TextStyle(fontFamily:'Khmer MEF2',),
                              ),
                            ),
                            Container(
                              child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                     Container ( 
                       child: Text(mySun3.numb, 
                          style: TextStyle(fontSize: 15, 
				                     color: Colors.grey[900],
                                   ),
                               ),
                         ),
                     Container(
                       child: Icon(mySun3.icon, color: Colors.yellow),
                          ),
                       ],
                       ),
                            ),
                         Container(
                          child: Icon(mySun3.icon1, color: Colors.green),
                          margin: EdgeInsets.fromLTRB(180,0,0,0),
                         ),
                          ]
                        ),
                      );
                    }
                    
                  ),
                ),
                Container(
                  height:  100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: sanny4.length,
                    itemBuilder: (context, index){
                    final  Sanny4 mySun4 = sanny4[index];
                      return Container(
                              
                              width: 150,
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: mySun4.color,
                                borderRadius: BorderRadius.circular(10),
                        ),
                              
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Icon(
                                  mySun4.icon1,
                                  size: 25,
                                  color: Colors.green[700],
                                ),
                                ),
                                Container(
                                child: Icon(
                                  mySun4.icon2,
                                  size: 8,
                                  color: Colors.green,
                                ),
                                                          
                                ),
                           
                              ]
                            ),
                                 Container(
                                  child: Text(
                                  mySun4.text1,
                                  style: TextStyle(
                                  fontSize: 8,
                            ),
                          ),
                                ),
                                Container(
                                  child: Text(
                                  mySun4.text2,
                                  style: TextStyle(
                                  fontSize: 6,
                            ),
                          ),
                                ),
                          ]
                        ),
                      );
                    }
                    
                  ),
                ),
              ]
            ),
            ),
        ]
       ),
      ),
        
     ]
    ),
   ),
  );
 }
}
class Sanny {
  Color color;
  IconData icon;
  String text;
  Sanny({this.color, this.icon, this.text});
}
List sanny = [
    Sanny(color: Colors.green[700], icon: Icons.home, text:'Home'),
    Sanny(color: Colors.green[700], icon: Icons.access_alarms, text:'Alarm'), 
    Sanny(color: Colors.green[700], icon: Icons.place, text:'Place'),
    Sanny(color: Colors.green[700], icon: Icons.web, text:'Web'),
    Sanny(color: Colors.green[700], icon: Icons.work, text:'Work'),
    Sanny(color: Colors.green[700], icon: Icons.wifi, text:'Wifi'),
    Sanny(color: Colors.green[700], icon: Icons.bookmark, text:'Bookmark'),
];

class Sanny2{
  IconData icon;
  String text;
  Sanny2({this.icon, this.text});
}
List sanny2 = [
  Sanny2( icon: Icons.wb_sunny_outlined, text:'60 %'),
  Sanny2( icon: Icons.wb_sunny_outlined, text:'60 %'), 
  Sanny2( icon: Icons.wb_incandescent_outlined, text:'70 %'),
];
class Sanny3{
  Color color;
  String image;
  String text;
  String numb;
  IconData icon;
  IconData icon1;
  Sanny3({this.color, this.image, this.text, this.numb, this.icon, this.icon1});
}
List sanny3 = [
  Sanny3(color: Colors.white, image:'https://shopma.com.np/MediaThumb/medium/Media/LG/43lh590t-5.jpg',text:'Television', numb: '20 kw', icon: Icons.flash_on, icon1: Icons.arrow_forward_ios),
  Sanny3(color: Colors.white, image:'https://www.bocadolobo.com/en/inspiration-and-ideas/wp-content/uploads/2018/03/Discover-the-Ultimate-Master-Bedroom-Styles-and-Inspirations-6_1.jpg',text:'Bedroom', numb: '30 kw', icon: Icons.flash_on, icon1: Icons.arrow_forward_ios),
  Sanny3(color: Colors.white, image:'https://www.nika2u.com/storage/products/88b5fc58603063b78454c57a75b63d0b.png', text:'Phone', numb:'25 kw', icon: Icons.flash_on, icon1: Icons.arrow_forward_ios),
  Sanny3(color: Colors.white, image:'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/living-room-ideas-rds-work-queens-road-01-1594233253.jpg?crop=1.00xw:0.803xh;0,0.176xh&resize=640:*', text:'Living room', numb:'45 kw', icon: Icons.flash_on, icon1: Icons.arrow_forward_ios),
  Sanny3(color: Colors.white, image:'https://images.victorianplumbing.co.uk/images/ALPSFS_nl.jpg', text:'Bath room', numb:'15 kw', icon: Icons.flash_on, icon1: Icons.arrow_forward_ios),
  Sanny3(color: Colors.white, image:'https://consumer-img.huawei.com/content/dam/huawei-cbg-site/southeast-asia/kh/mkt/v4/plp/laptops/matebook-d14-amd.png', text:'Laptop', numb:'10 kw', icon: Icons.flash_on, icon1: Icons.arrow_forward_ios),
];


class Sanny4{
  Color color;
    IconData icon1;
    IconData icon2;
    String text1;
    String text2;
  Sanny4({this.color, this.icon1, this.icon2, this.text1, this.text2});
}
List sanny4 = [
  Sanny4(color: Colors.white, icon1: Icons.attractions, icon2: Icons.brightness_1, text1: 'Powerwall', text2:'Power'),
  Sanny4(color: Colors.white, icon1: Icons.contact_support_rounded, icon2: Icons.brightness_1, text1: 'Infinity Power', text2: 'Infinity'),
];
