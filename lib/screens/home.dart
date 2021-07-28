


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterbookapp/models/newbook_model.dart';
import 'package:flutterbookapp/models/popularbook_model.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:
        ListView(
          physics:BouncingScrollPhysics(),
          children:[ 
            Padding(
              
              padding:EdgeInsets.only(left:25,top:25),

              child:
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
               
              children:[
              
              Text("Hi",style: GoogleFonts.lato(
                fontSize: 14,fontWeight: FontWeight.w600,color:Colors.grey
              ),
              
              ),
              Text("Discover Latest Book ",style: GoogleFonts.lato(
                fontSize: 22,fontWeight: FontWeight.w600,color:Colors.black
              ),
              
              ) ] )
            ),

            Container(
             margin: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
              height:39,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                color: Colors.grey[300]
              ),
              child: Stack(
                children: [
                  TextField(maxLengthEnforced: true,
                  style: GoogleFonts.openSans(
                    fontSize: 12,
                    color:Colors.black,
                    fontWeight: FontWeight.w600,
                     ),
                     decoration: InputDecoration(
                       contentPadding:EdgeInsets.only(left: 19,right: 15,bottom: 8,),
                       border: InputBorder.none,
                       hintText: "search book",
                       hintStyle: GoogleFonts.openSans(
                         fontSize: 12,
                         color: Colors.grey[800]
                       )
                  
                     ),
                  

                  ),
                  Positioned(
                    right: 0,
                    child:SvgPicture.asset('assets/svg/background_search.svg'),
                  ),
                  Positioned(
                    right: 9,
                    top: 8,
                    child: Icon(Icons.search,color: Colors.white,))
                ],
              ),
            ),
            Container(
              height: 25,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left:25),
              child: DefaultTabController(length: 3, child: 
              TabBar(
                labelPadding: EdgeInsets.all(0),
                indicatorPadding: EdgeInsets.all(0),
                isScrollable: true,
                labelColor: Colors.pinkAccent,
                unselectedLabelColor:Colors.black,
                

                
                tabs: [
              Tab(
                child: Container(
                  margin: EdgeInsets.only(right: 23),
                  child: Text("New"),
                ),
              ),
                Tab(
                child: Container(
                  margin: EdgeInsets.only(right: 23),
                  child: Text("Trending"),
                ),
              ),
                Tab(
                child: Container(
                  margin: EdgeInsets.only(right: 23),
                  child: Text("Best Seller"),
                ),
              )
              ],)
              ),
            ),
            Container(
              margin:EdgeInsets.only(top: 25),
              height: 210,
              child: ListView.builder(
                padding: EdgeInsets.only(left:25,top: 6),
                itemCount: newbooks.length,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal, 
                
              
                itemBuilder: (context,index) {
                  return Container(
                    margin: EdgeInsets.only(right: 14),
                  height: 210,
                  width: 153,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(18),
                    image: DecorationImage(image: AssetImage(newbooks[index].image))
                  ),
                ) ; 
              }),
            ),

             Padding(
              
              padding:EdgeInsets.only(left:25,top:25),

              child:
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
               
              children:[
              
              Text("Popular",style: GoogleFonts.lato(
                fontSize: 20,fontWeight: FontWeight.w600,color:Colors.black
              ),
              
              ),
            
               ]
                )
            ),

            ListView.builder(
              padding: EdgeInsets.only(top: 25,right: 25,left: 25),
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: populars.length ,
              itemBuilder: (context,index){
              return GestureDetector(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.only(bottom: 19),
                  height: 81,
                  width: MediaQuery.of(context).size.width-50,
                  color: Colors.grey[200],
                  child: Row(
                    children: [
                      Container(
                        height: 81,
                        width:61,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                             image: DecorationImage(image: AssetImage(populars[index].image)
                             ),
              
                        color: Colors.grey[200],
                                      ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text(
                            populars[index].title,style: GoogleFonts.lato(fontSize:18,fontWeight: FontWeight.bold)
                            
                          ),
                          SizedBox(height: 5,),
                          Text(populars[index].author,style:GoogleFonts.lato()),
                          Text('\Rs '+populars[index].price)
                        ]
                      )
                    ],
                  ),
                ),
              ) 
              ; 
              
            }),
           

          ]

        )
      )
      

     
    );
  }
}