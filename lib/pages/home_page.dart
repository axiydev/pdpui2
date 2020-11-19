import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  static final String id="home_page";
  @override
  _HomePageState createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage>{
  final List<String> _list=[
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.png',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.black,
      appBar:AppBar(
        leading:Icon(Icons.menu),
        title:Text('Apple Products'),
        centerTitle:true,
        elevation:0.0,
        bottomOpacity:0.0,
        backgroundColor:Colors.black,
        actions:[
          Padding(
            padding:EdgeInsets.all(10),
            child:Container(
              height:30,
              width:35,
              decoration:BoxDecoration(
                color:Colors.grey[600],
                borderRadius:BorderRadius.circular(10),
              ),
              child:Center(
                child:Text('8'),
              ),
            ),
          ),
        ],
      ),
     body:Container(
       color:Colors.black,
       padding:EdgeInsets.all(15),
       height: double.infinity,
       width:double.infinity,
         child:Column(
           children:[
              //#header
              Container(
                height:240,
                width:double.infinity,
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(20),
                  image:DecorationImage(
                    fit:BoxFit.cover,
                    image:AssetImage(_list[2]),
                  ),
                ),
                child:Container(
                  padding:EdgeInsets.all(20),
                  decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(20),
                    gradient:LinearGradient(
                      begin:Alignment.bottomRight,
                      colors:[
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.1),
                      ],
                    ),
                  ),
                  child:Column(
                    mainAxisAlignment:MainAxisAlignment.end,
                    children:[
                      Container(
                        child:Text('Lifestyle safe',style:TextStyle(color:Colors.white,fontSize:40),),
                      ),
                      SizedBox(height:25),
                      Container(
                        height:50,
                        margin:EdgeInsets.symmetric(horizontal: 20),
                        decoration:BoxDecoration(
                          color:Colors.white,
                          borderRadius:BorderRadius.circular(10),
                        ),
                        child:Center(
                          child:Text('Shop Now',style:TextStyle(color:Colors.grey[700],fontSize:15),),
                        ),
                      ),
                      SizedBox(height:10),
                    ],
                  ),
                ),
              ),
              SizedBox(height:20),
             Expanded(
               child:GridView.count(
                 crossAxisCount:2,
                 mainAxisSpacing:10.0,
                 crossAxisSpacing:10.0,
                 children:_list.map((item)=>_shopEl(item)).toList(),
               ),
             ),
           ],
         ),
     ),
    );
  }
  Widget _shopEl(String item){
    return Card(
     elevation:0.0,
      color:Colors.transparent,
      child:Container(
        decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(20),
          image:DecorationImage(
            image:AssetImage(item),
            fit:BoxFit.cover,
          ),
        ),
        child:Container(
          padding:EdgeInsets.all(12),
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(20),
            gradient:LinearGradient(
              begin:Alignment.bottomRight,
              colors:[
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.3),
              ],
            ),
          ),
          child:Row(
            mainAxisAlignment:MainAxisAlignment.end,
            crossAxisAlignment:CrossAxisAlignment.end,
            children:[
             Icon(Icons.star_border,size:35,color:Colors.yellowAccent),
            ],
          ),
        ),
      ),
    );
  }
}