import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'Course.dart';
import 'Testimonials.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({super.key});

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  bool  _customTileExpanded = false;
  final Uri _url = Uri.parse('https://api.whatsapp.com/send/?phone=919768455222&text=Hi&type=phone_number&app_absent=0');
  final Uri youtube = Uri.parse("https://www.youtube.com/channel/UC0lmhygv8wJTQbVjF-6QUVg");
  final Uri instagram  = Uri.parse("https://www.instagram.com/jkb_education_group/");
  final Uri linkedin = Uri.parse("https://www.linkedin.com/company/jkb-education-group/about/");

  Future<void> _launchUrl(Uri link) async {
    if (!await launchUrl(link)) {
      throw Exception('Could not launch $link');
    }
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
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
        body: SingleChildScrollView(
          child: Container(color: Color(0xFF0B1221),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: Text("About Us",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 30,
                    color: Color(0XFFe87c24)
                  ),),
                ),
              ),
              Container(
                width: 480,
                child:
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Welcome to JKB Educational Institute, the epitome of excellence and "
                          "empowerment in the field of engineering education in India. "
                          "Led by the visionary director and esteemed tutor, Mr. Vinayak Shete,"
                          " we are driven by a singular mission to uplift and empower the country's"
                          " youth. Since our establishment in 2011, we have continuously evolved,"
                          " creating a nurturing environment and providing outstanding facilities fo"
                          "r our students' holistic development.",style: TextStyle(color: Colors.white,fontSize: 18,letterSpacing: 1),),
                    )
                  ],
                )
              ),
              SizedBox(
                width: 450,
                child: Image.asset('assets/images/VinayakSir.png'),
              ),
              SizedBox(
                width: 450,
                child: Image.asset('assets/images/NhDubeySir.png'),
              ),
              SizedBox(
                width: 450,
                child: Image.asset('assets/images/PoonamMam.png'),
              ),
              SizedBox(
                width: 450,
                child: Image.asset('assets/images/AmolSir.png'),
              ),
              SizedBox(
                width: 450,
                child: Image.asset('assets/images/AnandDubeySir.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text("Dubey, ensuring comprehensive study materials "
                      "and ample growth opportunities for our students."
                      " With Mr. Vinayak Shete's vast teaching experience,"
                      " we have positively influenced the lives of thousands"
                      " of aspiring engineers. Moreover, as a testament "
                      "to our commitment to excellence, we cater to the"
                      " needs of studying various programming languages"
                      " and offer corporate linguistic training. Beyond"
                      " academics, we embrace spirituality and mindfulness."
                      " Mr. Vinayak Shete is actively associated with The"
                      " Art Of Living Foundation and serves as a dynamic "
                      "youth teacher at the AOL. His deep-rooted passion"
                      " for yoga and meditation resonates within the fabric"
                      " of our institute, fostering a harmonious and balanced"
                      " educational experience. As you explore our website,"
                      " you will witness the remarkable success stories that"
                      " our institute has nurtured, leaving an indelible mark"
                      " on the educational landscape. Join us at JKB Educational"
                      " Institute, where knowledge meets inspiration, and dreams "
                      "turn into reality. Together, Let Us Embark on a Transformative"
                      " Journey of Education and Empowerment.",style: TextStyle(
                    fontSize: 18,color: Colors.white
                  ),),
                ),
              ),
              Text("Privacy Policy",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0XFFe87c24), ),)
            ],
          ),),
        ),
      ),
    );
  }
}
