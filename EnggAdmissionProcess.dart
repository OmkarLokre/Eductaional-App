import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'Course.dart';
import 'Testimonials.dart';
import 'package:url_launcher/url_launcher.dart';
import 'AboutUs.dart';
import 'main.dart';

class EngAdmissionProcess extends StatefulWidget {
  const EngAdmissionProcess({super.key});

  @override
  State<EngAdmissionProcess> createState() => _EngAdmissionProcessState();
}

class _EngAdmissionProcessState extends State<EngAdmissionProcess> {

  late VideoPlayerController _controller;

  void initState() {
    _controller = VideoPlayerController.network('https://www.jkbeducation.com/assets/assets/videos/home_page_video.mp4',)
      ..initialize().then((_){
        setState(() {

        });
      });
    super.initState();
  }

  List<TestiMonials> videos = [
    TestiMonials('assets/images/VideoSS.png', "Chiranjiv Niranjan"),
    TestiMonials('assets/images/VideoSS.png', "Pranil Balshankar"),
    TestiMonials('assets/images/VideoSS.png', "Shravan  Chilka"),
    TestiMonials('assets/images/VideoSS.png', "Darshana Nikam"),
    TestiMonials('assets/images/VideoSS.png', "Harshal Bhoil"),
    TestiMonials('assets/images/VideoSS.png', "Vishwas Palghan")
  ];

  final Uri _url = Uri.parse('https://api.whatsapp.com/send/?phone=919768455222&text=Hi&type=phone_number&app_absent=0');
  final Uri youtube = Uri.parse("https://www.youtube.com/channel/UC0lmhygv8wJTQbVjF-6QUVg");
  final Uri instagram  = Uri.parse("https://www.instagram.com/jkb_education_group/");
  final Uri linkedin = Uri.parse("https://www.linkedin.com/company/jkb-education-group/about/");

  Future<void> _launchUrl(Uri link) async {
    if (!await launchUrl(link)) {
      throw Exception('Could not launch $link');
    }
  }
  bool  _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          drawer: Drawer(
            backgroundColor:Color(0xFF081c34),
            child: SingleChildScrollView(
              child: Container(height: 1000,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 55.0,right: 120),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.black,
                            borderRadius: BorderRadius.circular(60)),
                        height: 70,
                        width: 140,
                        child: ClipRRect(borderRadius:
                        BorderRadius.circular(80),
                            child: Image.asset('assets/images/jkb_logo.png',fit: BoxFit.fill,)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0,left: 20),
                      child: Column(
                        children: [
                          ListTile(
                            title: Padding(
                              padding: const EdgeInsets.only(top: 20.0,bottom: 25),
                              child: Text("HOME",style: TextStyle(color: Color(0XFFe87c24),fontSize: 20),),
                            ),
                          ),
                          Divider(height: 4,thickness: 2,color: Colors.white,),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: ExpansionTile(
                              title: const Text('Courses',style: TextStyle(fontSize: 20,color: Colors.white),),
                              trailing: Icon(
                                _customTileExpanded
                                    ? Icons.arrow_drop_down
                                    : Icons.arrow_drop_up,
                              ),
                              children: const <Widget>[
                                ListTile(title: Text('Engg.Admission Counselling',style: TextStyle(color: Colors.white,),)),

                                ListTile(title: Text('1st Year Engg.Coaching',style: TextStyle(color: Colors.white,),)),

                                ListTile(title: Text('IT Services for Start-Up',style: TextStyle(color: Colors.white,),)),

                                ListTile(title: Text('2nd Year Programming',style: TextStyle(color: Colors.white,),)),

                                ListTile(title: Text('MS in US & Europe',style: TextStyle(color: Colors.white,),)),

                                ListTile(title: Text('3rd Year Programming',style: TextStyle(color: Colors.white,),)),

                                ListTile(title: Text('Project & Placement',style: TextStyle(color: Colors.white,),)),

                                ListTile(title: Text('Finnancial Literacy',style: TextStyle(color: Colors.white,),)),

                                ListTile(title: Text('Youth Empowerment Hub',style: TextStyle(color: Colors.white,),)),


                              ],
                              onExpansionChanged: (bool expanded) {
                                setState(() {
                                  _customTileExpanded = expanded;
                                });
                              },
                            ),
                          ),
                          Divider(height: 15,thickness: 1,color: Colors.white,),
                          ListTile(
                            title: Text("Counselling",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ),
                          Divider(height: 15,thickness: 1,color: Colors.white,),
                          ListTile(
                            title: Text("IT Services",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ),
                          Divider(height: 15,thickness: 1,color: Colors.white,),
                          ListTile(
                            title: InkWell(
                              child: Text(""
                                  "About Us",style: TextStyle(color: Colors.white,fontSize: 20),
                              ),
                              onTap: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>Aboutus()));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          appBar: AppBar(
            backgroundColor: Color(0xFF0B1221),
            actions: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(width: 100,
                        height: 50,
                        decoration:BoxDecoration(borderRadius: BorderRadius.circular(250)),
                        child: ClipRRect(borderRadius:BorderRadius.circular(240),
                            child: Image.asset('assets/images/jkb_logo.png',fit: BoxFit.fill,))),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Jkb()));
                    },),
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: InkWell(
                            child: Container(
                              child: ClipRRect(borderRadius:BorderRadius.circular(60),
                                  child: Image.asset('assets/images/Whatsapp.png',fit: BoxFit.cover,)),
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),color: Colors.blueGrey),
                            ),
                            onTap: (){
                              _launchUrl(_url);
                            },),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Container(
                            child: ClipRRect(borderRadius:BorderRadius.circular(60),
                                child: Image.asset('assets/images/YouTube.png',fit: BoxFit.cover,)),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),color: Colors.blueGrey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: InkWell(
                            child: Container(
                              child:
                              ClipRRect(borderRadius:BorderRadius.circular(60),
                                  child: Image.asset('assets/images/YouTube.png',fit: BoxFit.cover,)),
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),color: Colors.blueGrey),
                            ),
                            onTap: (){
                              _launchUrl(youtube);
                            },),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: InkWell(
                            child: Container(
                              child: ClipRRect(borderRadius:BorderRadius.circular(60),
                                  child: Image.asset('assets/images/Instagram.png',fit: BoxFit.cover,)),
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),color: Colors.blueGrey),
                            ),
                            onTap: (){
                              _launchUrl(instagram);
                            },),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0,right: 20),
                          child: InkWell(
                            child: Container(
                              child: ClipRRect(borderRadius:BorderRadius.circular(60),
                                  child: Image.asset('assets/images/LinkedIn.png',fit: BoxFit.cover,)),
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),color: Colors.blueGrey),
                            ),
                            onTap: (){
                              _launchUrl(linkedin);
                            },),
                        ),

                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        body:SingleChildScrollView(
          child: Container(
            height: 7000,
            color:  Color(0xFF0B1221),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      color: Color(0XFFe87c24),
                      height: 450,
                      child:
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text("Engg. Admission Counselling",style: TextStyle(
                                fontWeight: FontWeight.bold,color:Colors.white,fontSize: 30),),
                          ),
                     Center(
                     child: Padding(
                       padding: const EdgeInsets.only(top: 16.0),
                       child: InkWell(
                         child: Container(
                         width: 375,
                    height: 290,
                           decoration: BoxDecoration(
                             color: Colors.blue
                           ),
                         child: _controller.value.isInitialized?
                         FittedBox(fit: BoxFit.fill,
                             child: SizedBox(
                                 width: _controller.value.size.width,
                                 height: _controller.value.size.height,
                                 child: VideoPlayer(_controller))):
                         Container(),
                         ),
                         onTap: (){
                           _controller.value.isPlaying?_controller.pause():_controller.play();
                         },
                       ),
                     ),
                        )],

                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: 430.0,),
                    child: Center(
                      child: InkWell(
                        child: Container(
                          height: 45,
                          width: 160,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                              color:Colors.white ),
                          child: Center(child: Text("Enroll Now",style: TextStyle(fontSize: 18,color: Color(0XFFe87c24),
                          letterSpacing: 1,fontWeight: FontWeight.bold),)),
                        ),
                        onTap: (){
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Color(0xFF081c34),

                                scrollable: true,
                                title: const Text("Contact Us",style: TextStyle(
                                  fontSize: 25,fontWeight: FontWeight.bold,color: Color(0XFFe87c24)
                                ),),
                                content: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 260.0,bottom: 18),
                                        child: Text("Name",style: TextStyle(color: Colors.white,fontSize: 16),),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueGrey,),
                                        width: 450,
                                        height: 40,

                                        child: TextField(
                                          decoration: const InputDecoration(
                                            hintText: "click here to enter Name",
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 205.0,bottom: 18,top: 18),
                                        child: Text("Phone Number",style: TextStyle(color: Colors.white,fontSize: 16),),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueGrey,),
                                        width: 450,
                                        height: 40,

                                        child: TextField(
                                          decoration: const InputDecoration(
                                            hintText: "click here to enter Phone Number",
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 240.0,bottom: 18,top: 18),
                                        child: Text("Email Id",style: TextStyle(color: Colors.white,fontSize: 16),),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueGrey,),
                                        width: 450,
                                        height: 40,

                                        child: TextField(
                                          decoration: const InputDecoration(
                                            hintText: "click here to enter Email Id",
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 243.0,bottom: 18,top: 18),
                                        child: Text("Address",style: TextStyle(color: Colors.white,fontSize: 16),),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueGrey,),
                                        width: 450,
                                        height: 40,

                                        child: TextField(
                                          decoration: const InputDecoration(
                                            hintText: "click here to enter Adress",
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 243.0,bottom: 18,top: 18),
                                        child: Text("Purpose",style: TextStyle(color: Colors.white,fontSize: 16),),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueGrey,),
                                        width: 450,
                                        height: 40,

                                        child: TextField(
                                          decoration: const InputDecoration(
                                            hintText:"click here to enter Purpose",
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30.0),
                                        child: Container(
                                          height: 40,
                                          width: 180,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                                              color: Color(0XFFe87c24)),
                                          child: Center(child: Text("Submit Details",style: TextStyle(fontSize: 18,color:Colors.white,
                                              letterSpacing: 1,fontWeight: FontWeight.bold),)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              );
                            },
                          );
                        },
                      ),
                    ),
                  )],
                ),
              Container(
                height: 10,
              ),
              Center(
                child: Container(
                  width: 430,
                  height: 495,
                  decoration: BoxDecoration(
                    color: Color(0xFF081c34)
,
                  borderRadius: BorderRadius.circular(20)),
                child:
                  Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0,right: 30),
                        child: Text("350+ Engineering Colleges in Entire Maharashtra "
                            "65+ Colleges in Mumbai 120+ Colleges in"
                            "Pune University 25+ Engineering Branches as "
                            "Career Opportunities Grade & Placement "
                  "of College( Intercollegiate Ranking) Teaching Staff, "
                            "Campus, Location for daily Travel & Hostel CAP Rounds, "
                            "Cut-off, OPTION form & All Documents ARC, SC & FC "
                            "Centers 1st Year Engineering & 4 Years of Journey",style: TextStyle
                          (color: Colors.white,fontSize: 20,letterSpacing: 1),),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0,),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 3.0),
                            child: Icon(Icons.calendar_month_sharp,size: 50,color: Colors.white,),
                          ),
                        Padding(
                          padding: const EdgeInsets.only(left: 13.0),
                          child: Text("College ranking webinar/seminar",style: TextStyle(color: Colors.white,
                          fontSize: 25),),
                        )],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 28.0,),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: Icon(Icons.timer,size: 50,color: Colors.white,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 13.0),
                                child: Text("FEES/DISTANCE/TRAVEL TIME/HOSTEL",style: TextStyle(color: Colors.white,
                                    fontSize: 21),),
                              )],
                          ),
                        ),
                      ],
                    ),
                      Padding(
                        padding: const EdgeInsets.only(top: 28.0,),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 3.0),
                              child: Icon(Icons.message,size: 50,color: Colors.white,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 13.0),
                              child: Text("TFWS/EWS Seats",style: TextStyle(color: Colors.white,
                                  fontSize: 23),),
                            )],
                        ),
                      ),

                   ],
                  ),
                ),
              ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text("Not Sure Which College?",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                      fontSize: 30),),
                ),
              Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),color: Color(0XFFe87c24)
                ),
              child:
                Center(child: Text("Predict Eng College",style:
                  TextStyle(
                    color: Colors.white
                  ,fontSize: 20),),),),

                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: Container(

                        width: 120,
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(borderRadius
                            :BorderRadius.circular(10),
                            child: Image.asset('assets/images/45000+.png',fit: BoxFit.fill,)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,top: 24),
                      child: Container(
                        width: 120,
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(borderRadius
                            :BorderRadius.circular(10),
                            child: Image.asset('assets/images/10000+.png',fit: BoxFit.fill,)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,top: 24),
                      child: Container(
                        width: 120,
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(borderRadius
                            :BorderRadius.circular(10),
                            child: Image.asset('assets/images/250+.png',fit: BoxFit.fill,)),
                      ),
                    )

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF081c34)
                    ),
                    width: 400,
                    height: 550,
                    child: ClipRRect(borderRadius:BorderRadius.circular(20),
                        child: Image.asset('assets/images/4YearsOfMembership.png',
                          fit: BoxFit.fill,)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:0.0),
                  child: Center(child: Text("Testimonials",style: TextStyle(fontSize: 35,
                      fontWeight: FontWeight.bold,color: Color(0XFFe87c24)),)),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: SizedBox(
                      height: 700,
                      child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 10
                      ), itemBuilder: (context,index){
                        return Container(
                          color: Color(0xFF0B1221),
                          width: 90,
                          height: 70,
                          child: Column(
                            children: [
                              Expanded(
                                child: Card(
                                  shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(75),),
                                  elevation: 10,
                                  child: ClipRRect(borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(videos[index].imageUrl,fit: BoxFit.fill,)),
                                ),
                                flex: 4,
                              ),
                              Expanded(child: Text(videos[index].name,style: TextStyle(
                                  color: Colors.white,fontSize: 15
                              ),),flex: 2,)
                            ],
                          ),
                        );
                      },
                        itemCount: videos.length,),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}

