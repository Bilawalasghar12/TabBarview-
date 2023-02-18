import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: NestedScrollView(
              headerSliverBuilder: (BuildContext context,
                  bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    bottom: PreferredSize(preferredSize: Size.fromHeight(50),
                      child: Container(
                        height: 50,
                        color: Colors.white,
                        child: TabBar(

                          labelColor: Colors.black,
                          controller: _tabController,

                          tabs: [
                            Tab(
                              text: "Activity",
                            ),
                            Tab(text: "Upcoming"),
                            Tab(text: "Past"),
                          ],
                        ),
                      ),


                    ),
                    backgroundColor: Colors.black,
                    centerTitle: true,
                    title: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset(
                        'assets/80889.png',
                        color: Colors.white,
                        height: 80,
                        width: 200,
                        fit: BoxFit.fitHeight,
                      ),

                    ),
                    floating: true,
                    pinned: true,
                    expandedHeight: 220,
                    toolbarHeight: 90,
                    flexibleSpace: FlexibleSpaceBar(
                      collapseMode: CollapseMode.parallax,
                      background:
                      Column(mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 40,
                              ),
                              Text(
                                'Pass rate',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 90,
                              ),
                              Text('Rating', style: TextStyle(
                                  color: Colors.white)),
                              SizedBox(
                                width: 120,
                              ),
                              Text('Courses', style: TextStyle(
                                  color: Colors.white))
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('78%',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 19)),
                              SizedBox(
                                width: 107,
                              ),
                              Text('4.8',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 19)),
                              SizedBox(
                                width: 133,
                              ),
                              Text('200+',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 19))
                            ],
                          ),


                          SizedBox(
                            height: 80,
                          ),
                        ],
                      ),

                    ),
                  ),
                ];
              },
              body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                      color: Colors.white,
                      height: 600,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          Expanded(
                            child: TabBarView(
                              controller: _tabController,
                              children: [
                                Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.only(top: 30, left: 13),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Text("pending request"),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 9),
                                        child: Container(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 13,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 16,
                                                  ),
                                                  Text(
                                                    'SIA Door Super Supervisor',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight
                                                            .bold,
                                                        fontSize: 18),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 14,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 9,
                                                  ),
                                                  Icon(
                                                    Icons.location_on_rounded,
                                                    size: 27,
                                                  ),
                                                  SizedBox(width: 5,),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text('Birmingham'),
                                                      SizedBox(height: 4,),
                                                      Text(
                                                          'Monday 21st April to Saturday 26th April')
                                                    ],
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10,),
                                              Row(
                                                children: [SizedBox(width: 10,),
                                                  Icon(Icons.contact_page_sharp,
                                                    size: 27,),
                                                  SizedBox(width: 5,),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text('Role'),
                                                      SizedBox(height: 3,),
                                                      Text('lead Trainer')

                                                    ],
                                                  )
                                                ],),
                                              SizedBox(height: 10,),
                                              Row(
                                                children: [
                                                  SizedBox(width: 22,),
                                                  Container(

                                                    color: Colors.grey,
                                                    height: 40,
                                                    width: 120,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(height: 2,),
                                                        Text(
                                                          'Estimated earnings',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .white,
                                                              fontSize: 12),),
                                                        Row(children: [
                                                          SizedBox(width: 10,),
                                                          Icon(Icons
                                                              .bookmark_add_outlined,
                                                            color: Colors.white,
                                                          ),
                                                          SizedBox(width: 8,),
                                                          Text('£650',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 17),)


                                                        ],)
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(width: 15,),
                                                  Container(

                                                    color: Colors.red,
                                                    height: 40,
                                                    width: 120,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(height: 2,),
                                                        Text(
                                                          'Request expires in',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .white,
                                                              fontSize: 12),),
                                                        Row(children: [
                                                          SizedBox(width: 10,),
                                                          Icon(Icons.lock_clock,
                                                            color: Colors.white,
                                                          ),
                                                          SizedBox(width: 8,),
                                                          Text('16 hours',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 17),)


                                                        ],),


                                                      ],
                                                    ),

                                                  ),
                                                  SizedBox(height: 5,),

                                                ],
                                              ),
                                              SizedBox(height: 10,),
                                              Row(
                                                children: [
                                                  //ElevatedButton(
                                                  //  onPressed: (), {}, child:,)
                                                ],
                                              )


                                            ],
                                          ),
                                          height: 250,
                                          width: 300,
                                          decoration: BoxDecoration(
                                              color: Colors.orangeAccent,
                                              borderRadius:
                                              BorderRadius.circular(5)),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.grey,
                                ),
                                Container(
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ))
                ],
              )
          ),
        )


    );
  }
}
