import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  Color _scaffoldColor = Colors.white;
  double _isVisible = 0.0;
  String _nameToChange = "flow";
  String _inputText = "";
  int _hours=0;
  final ScrollController _scrollController = ScrollController(); // Step 1: Declare ScrollController

  void numbers() {
    setState(() {
      count++;
    });
  }

  void changeColor() {
    setState(() {
      _scaffoldColor = _scaffoldColor == Colors.black12 ? Colors.blue : Colors.black12;
    });
  }

  void changeVisibility() {
    setState(() {
      _isVisible = _isVisible == 1.0 ? 0.0 : 1.0;
    });
  }

  void changeName() {
    setState(() {
      _nameToChange = _nameToChange == "flow" ? "rukaass" : "flow";
    });
  }
  void changeHour(){
    setState(() {
      _hours++;
      
      
    });
  }

  @override
  void dispose() {
    _scrollController.dispose(); // Dispose the controller to prevent memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: _scaffoldColor,
        body: Row(
          children: <Widget>[
            // Sidebar Section
            Container(
              width: 150,
              color: Colors.green,
              child: Column(
                children: [
                  Container(
                    width: 150,
                    height: 280,
                    color: Colors.black,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          "FLOKK",
                          style: TextStyle(color: Colors.green, fontSize: 35),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: changeColor,
                          child: Text("button"),
                        ),
                        SizedBox(height: 60),
                        ElevatedButton(
                          onPressed: changeHour,
                          child: Text("Tap to visible"),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: changeName,
                          child: Text("Photo_Changer"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: numbers,
                      child: Text("count: $count"),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Menu 1",
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: Icon(Icons.menu, color: Colors.white),
                  ),
                  SizedBox(height: 120),
                  ListTile(
                    title: Text(
                      "Menu 2",
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Icon(Icons.menu, color: Colors.white),
                  ),
                ],
              ),
            ),

            // Main Content Section
            Expanded(
              child: Column(
                children: [
                  // Search Field at the Top
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      onChanged: (text) {
                        setState(() {
                          _inputText = text;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: "Search For Contacts",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                 

                  // Scrollable Stack with Positioned Widgets
                  Expanded(
                    child: Scrollbar(
                      controller: _scrollController, // Assign the controller to the Scrollbar
                      thumbVisibility: true,
                      child: SingleChildScrollView(
                        controller: _scrollController, // Assign the controller to the ScrollView
                        child: Container(
                          height: 1500, // Adjust height for scrolling content
                          child: Stack(
                            children: [
                              // Positioned widget for "CONTACTS" text
                              Positioned(
                                top: 0,
                                left: 10,
                                child: Text(
                                  "CONTACTS",
                                  style: TextStyle(color: Colors.blue, fontSize: 20),
                                ),
                              ),

                              // Positioned widgets for green boxes
                              Positioned(
                                top: 100,
                                left: 20,
                                child: Row(

                                  children: [
                                  
                                    
                                    Container(


                                      width: 120,
                                      height: 180,
                                     
                                       decoration: BoxDecoration(
                                          color: Color(0xFF292A2D), // Applying the color to a container background
                                        
                                        borderRadius:BorderRadius.circular(20) ,

                                       ),
                                    child:Column(
                                    children: [
                                     
                                      Image.asset(
                                        "lib/assets/flow.jpg",
                                        width: 70,
                                        height: 70,
                                        
                                      ),
                                       Text(
                                        "hallooo container",
                                        style: TextStyle(fontSize: 13),
                                        textAlign:TextAlign.center,

                                        
                                        
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                        

                                          
                                         Icon(
                                           
                                            Icons.battery_1_bar_sharp,
                                             color:Colors.white,
                                          ),
                                          
                                         

                                          
                                            Icon(
                                           
                                            Icons.battery_1_bar_sharp,
                                             color:Colors.white,
                                          ),
                                        
                                        ],
                                        


                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "$_hours Hours ago",
                                          ),
                                        ],

                                      ),
                                      


                                        ],

                                       ),

                                    
                                    ),
                                    SizedBox(width: 20), // Space between boxes
                                     Container(


                                      width: 120,
                                      height: 180,
                                     
                                       decoration: BoxDecoration(
                                         color: Color(0xFF292A2D), // Applying the color to a container background
                                        
                                        borderRadius:BorderRadius.circular(20) ,

                                       ),
                                    child:Column(
                                    children: [
                                    
                                      Image.asset(
                                        "lib/assets/flow.jpg",
                                        width: 70,
                                        height: 70,
                                        
                                      ),
                                       Text(
                                        "hallooo container",
                                        style: TextStyle(fontSize: 13,color:Colors.white),
                                        textAlign:TextAlign.center,


                                        
                                        
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                        

                                          
                                         Icon(
                                           
                                            Icons.battery_1_bar_sharp,
                                            color:Colors.white,
                                            
                                          ),
                                          
                                         

                                          
                                            Icon(
                                           
                                            Icons.battery_1_bar_sharp,
                                             color:Colors.white,
                                          ),
                                        
                                        ],
                                        


                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "$_hours Hours ago",
                                            style: TextStyle(
                                              fontSize: 13,color:Colors.white,
                                        

                                            ),
                                          ),
                                        ],

                                      ),
                                      


                                        ],

                                       ),

                                    ),
                                   
                                    SizedBox(width: 20), // Space between boxes
                                     Container(


                                      width: 120,
                                      height: 180,
                                     
                                       decoration: BoxDecoration(
                                         color: Color(0xFF292A2D), // Applying the color to a container background
                                        
                                        borderRadius:BorderRadius.circular(20) ,

                                       ),
                                    child:Column(
                                    children: [
                                    
                                      Image.asset(
                                        "lib/assets/flow.jpg",
                                        width: 70,
                                        height: 70,
                                        
                                      ),
                                       Text(
                                        "hallooo container",
                                        style: TextStyle(fontSize: 13),
                                        textAlign:TextAlign.center,

                                        
                                        
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                        

                                          
                                         Icon(
                                           
                                            Icons.battery_1_bar_sharp,
                                             color:Colors.white,
                                          ),
                                          
                                         

                                          
                                            Icon(
                                           
                                            Icons.battery_1_bar_sharp,
                                             color:Colors.white,
                                          ),

                                        ],
                                        


                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "$_hours Hours ago",
                                          ),
                                        ],

                                      ),
                                      
                                      

                                         
                                        ],

                                       ),

                                   
                                    ),
                                  ],
                                ),
                              ),
                      Positioned(
                                

                                top: 320,
                                left: 20,


                          child:Stack(
                              children: [
                               
                                 
                               
                                
                                   Text(
                                    "SOCIAL ACTIVITIES",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 20,
                                    ),
                                  ),
                              ],

                          ),
                           
                      ),
                                  Stack(
                                    
                                    children: [
                                       Positioned(
                                         top: 390,
                                         left: 20,


                                      child: Row(
                                    children: [
                                        Container(


                                      width: 520,
                                      height: 380,
                                     
                                      
                                     
                                       decoration: BoxDecoration(
                                         color: Color(0xFF292A2D), // Applying the color to a container background
                                        
                                        borderRadius:BorderRadius.circular(20) ,

                                       ),
                                    child:Column(
                                    children: [
                                     
                                      Image.asset(
                                        "lib/assets/flow.jpg",
                                        width: 70,
                                        height: 70,
                                        
                                      ),
                                       Text(
                                        "hallooo container",
                                        style: TextStyle(fontSize: 13,color:Colors.white),
                                        textAlign:TextAlign.center,


                                        
                                        
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                        

                                          
                                         Icon(
                                           
                                            Icons.battery_1_bar_sharp,
                                            color:Colors.white,
                                            
                                          ),
                                          
                                         

                                          
                                            Icon(
                                           
                                            Icons.battery_1_bar_sharp,
                                             color:Colors.white,
                                          ),
                                        
                                        ],
                                        


                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "$_hours Hours ago",
                                            style: TextStyle(
                                              fontSize: 13,color:Colors.white,
                                        

                                            ),
                                          ),
                                        ],

                                      ),
                                      


                                        ],

                                       ),
                                    ),


                                    SizedBox(width: 20),
                                    Container(


                                      width: 520,
                                      height: 380,
                                     
                                      
                                     
                                       decoration: BoxDecoration(
                                         color: Color(0xFF292A2D), // Applying the color to a container background
                                        
                                        borderRadius:BorderRadius.circular(20) ,

                                       ),
                                    child:Column(
                                    children: [
                                   
                                      Image.asset(
                                        "lib/assets/flow.jpg",
                                        width: 70,
                                        height: 70,
                                        
                                      ),
                                       Text(
                                        "hallooo container",
                                        style: TextStyle(fontSize: 13,color:Colors.white),
                                        textAlign:TextAlign.center,


                                        
                                        
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                        

                                          
                                         Icon(
                                           
                                            Icons.battery_1_bar_sharp,
                                            color:Colors.white,
                                            
                                          ),
                                          
                                         

                                          
                                            Icon(
                                           
                                            Icons.battery_1_bar_sharp,
                                             color:Colors.white,
                                          ),
                                        
                                        ],
                                        


                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "$_hours Hours ago",
                                            style: TextStyle(
                                              fontSize: 13,color:Colors.white,
                                        

                                            ),
                                          ),
                                        ],

                                      ),
                                      


                                        ],

                                       ),

                                    ),

                                    ],
                                      ),
                                       
                                      ),
                                ],
                                ),

                            ],



                          ),
                         
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
