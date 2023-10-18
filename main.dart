import 'package:flutter/material.dart';
import 'EnggAdmissionProcess.dart';
import 'package:video_player/video_player.dart';
import 'Course.dart';
import 'Testimonials.dart';
import 'package:url_launcher/url_launcher.dart';
import 'AboutUs.dart';
import 'SplashScreen.dart';
void main() {
  runApp(MaterialApp(
    home: Splashscreen(), // Assuming Jkb is your main widget
  ));
}

class Jkb extends StatelessWidget {
  const Jkb({super.key});

  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late VideoPlayerController _controller;
  @override

  List<Courses> course = [
    Courses('assets/images/1st.png', "Engg.Admission Counselling"),
    Courses('assets/images/2nd.png', "1st Year Programming"),
    Courses('assets/images/3rd.png', "1st Year Engg. Coaching"),
    Courses('assets/images/4th.png', "IT Services and Start-Up"),
    Courses('assets/images/5th.png', "2nd Year Prgramming"),
    Courses('assets/images/6th.png', "MS in US & Europe"),
    Courses('assets/images/7yj.png', "3rd Year Programming"),
    Courses('assets/images/8th.png', "Project & Placement"),
    Courses('assets/images/9th.png', "Finnancial Literacy"),
    Courses('assets/images/10th.png', "Youth Empowerment Hub")
  ];

  List<TestiMonials> videos = [
    TestiMonials('assets/images/VideoSS.png', "Chiranjiv Niranjan"),
    TestiMonials('assets/images/VideoSS.png', "Pranil Balshankar"),
    TestiMonials('assets/images/VideoSS.png', "Shravan  Chilka"),
    TestiMonials('assets/images/VideoSS.png', "Darshana Nikam"),
    TestiMonials('assets/images/VideoSS.png', "Harshal Bhoil"),
    TestiMonials('assets/images/VideoSS.png', "Vishwas Palghan")
  ];

  bool _customTileExpanded = false;
  void initState() {
    _controller = VideoPlayerController.network('https://www.jkbeducation.com/assets/assets/videos/home_page_video.mp4',)
      ..initialize().then((_){
        setState(() {

        });
      });
    super.initState();
  }
  final Uri _url = Uri.parse('https://api.whatsapp.com/send/?phone=919768455222&text=Hi&type=phone_number&app_absent=0');
  final Uri youtube = Uri.parse("https://www.youtube.com/channel/UC0lmhygv8wJTQbVjF-6QUVg");
  final Uri instagram  = Uri.parse("https://www.instagram.com/jkb_education_group/");
  final Uri linkedin = Uri.parse("https://www.linkedin.com/company/jkb-education-group/about/");

  Future<void> _launchUrl(Uri link) async {
    if (!await launchUrl(link)) {
      throw Exception('Could not launch $link');
    }
  }

  // void _launchwhatsapp() async {
  //   final url = Uri.parse("https://www.navrabeads.com/");
  //   if (await canLaunch(url.toString())) {
  //     await launch(url.toString());
  //     print("Launching URL: $url");
  //   } else {
  //     print("Could not launch URL: $url");
  //   }
  // }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(drawer: Drawer(
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
                             child: Image.asset('assets/images/phone.png',fit: BoxFit.cover,)),
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
        body: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Container(
            height: 3500,
            color: Color(0xFF0B1221),
            child: Column(
              children: [
                Center(
                  child: InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Container(
                        width: 425,
                        height: 260,
                        decoration: BoxDecoration(color: Color(0xFF081c34),
                        borderRadius: BorderRadius.circular(45)),
                        child: _controller.value.isInitialized?
                        FittedBox(fit: BoxFit.fill,
                            child: SizedBox(
                              width: _controller.value.size.width,
                                height: _controller.value.size.height,
                                child: VideoPlayer(_controller))):
                            Container(),
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        _controller.value.isPlaying?_controller.pause():_controller.play();
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Center(child: Text("Worried about Admission?",style: TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14.0),
                  child: InkWell(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> EngAdmissionProcess()));
                  },
                    child: Container(
                      width: 365,
                      height: 40,
                      decoration: BoxDecoration(color:Color(0XFFe87c24),
                      borderRadius: BorderRadius.circular(60)),
                      child: Center(child: Text("Engg.Admission Process 2023",style: TextStyle(color: Colors.white,
                      fontSize: 19,letterSpacing: 2),)),
                    ),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        width: 170,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Color(0XFFe87c24),
                      ),
                      child: Center(child: Text("Predict Engg. College",style: TextStyle(color: Colors.white
                      ,fontSize: 15,letterSpacing: 1),)),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        width: 170,
                        height: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Color(0XFFe87c24),
                        ),
                      child: Center(child: Text("Contact Us",style: TextStyle(color: Colors.white
                      ,fontSize: 17,letterSpacing: 1),)),),
                    )
                  ],
                ),
                Container(
                  width: 400,
                  height: 700,
                  decoration: BoxDecoration(color: Color(0xFF081c34),
                  borderRadius: BorderRadius.circular(20)),
                  child:
                  Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 21.0,right: 210),
                        child: Text("Who we are?",style: TextStyle(
                            fontSize: 32,fontWeight: FontWeight.bold,color: Color(0XFFe87c24) ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0,left: 18,right: 18),
                        child: Text("JKB Education, led by Mr."
                            " Vinayak Shete, is a prestigious engineering institute "
                            "in India with a vision to empower and uplift the country's youth"
                            " in engineering under the guidance of Prof. N H Dubey (Author of Engg. "
                            "Mechanics, Engg. Drawing/Graphics, "
                            "published by TATA McGraw Hill Publications)."
                        ,style: TextStyle(color: Colors.white,fontSize: 18,letterSpacing: 1),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35.0,right: 175),
                        child: Text("What do we do?",style: TextStyle(fontSize: 30,color:Color(0XFFe87c24),
                        fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0,left: 18,right: 18),
                        child: Text("JKB has continuously evolved to provide a conducive "
                            "ecosystem, guidance and excellent facilities to students to "
                            "create their own comprehensive study materials, fostering a "
                            "deeper understanding of the subjects and promoting independent"
                            " earning and academic growth throughout the 4 years "
                            "engineering"
                            " journey. At JKB, we recognize the importance of holistic development"
                            " by embracing spirituality and mindfulness along with academic pursuit."
                            " Mr. Vinayak Shete's association with The Art of Living Foundation and "
                            "his role as a dynamic youth teacher at AOL enriches our educational "
                            "environment and creates a pleasant atmosphere that enhances the overall"
                            " growth of our students."
                          ,style: TextStyle(color: Colors.white,fontSize: 18,letterSpacing: 1),),
                      ),
                    ],
                  ),
                ),
                Center(child: Padding(
                  padding: const EdgeInsets.only(top: 33.0),
                  child: Text("Our Courses",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,
                  color:Color(0XFFe87c24) ),),
                )),
             SizedBox(
               height: 600,
               child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                 crossAxisSpacing: 3,
                 mainAxisSpacing: 10,
               ), itemBuilder: (context,index){
                 return Card(
                   elevation: 20,
                   shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(65),
                   ),
                 color: Colors.black,
                 child: Column(
                   children: [
                     Expanded(
                       child: Container(decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                       ),
                         child: ClipRRect(borderRadius:
                             BorderRadius.circular(15),child: Image.asset(course[index].imageUrl,fit: BoxFit.fill,)),
                       ),
                     flex: 3,),
                     Expanded(
                       child: Container(
                         decoration: BoxDecoration(
                 color: Color(0xFF081c34),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                             bottomRight: Radius.circular(20),)
                         ),
                         height: 50,
                      child:
                         Center(child: Text(course[index].name,style:
                         TextStyle(color:Color(0XFFe87c24),fontWeight: FontWeight.bold,
                         fontSize: 18),)), ),
                     flex: 1,)

                   ],
                 ),);
               },itemCount: course.length,),
             ),
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
                      height: 650,
                      width: 450,
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



