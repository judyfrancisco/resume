import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:resume/Education.dart';
import 'package:resume/Certificate.dart';
import 'package:resume/Skills.dart';
import 'package:url_launcher/url_launcher.dart';

import 'AboutMe.dart';

// final Uri _url = Uri.parse('https://www.linkedin.com/in/harshit-sahu-1015a0178/?originalSubdomain=in');

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
        children: [

        const SizedBox(
          height: 50,
          width: double.infinity,
        ),

        const CircleAvatar(

          radius: 95,
          backgroundImage: AssetImage('assets/images/judy.jpg'),

        ),

        const SizedBox(
          height: 18,
          width: double.infinity,
        ),

        const Text(
          'JUDY ANN p. FRANCISCO',
          style: TextStyle(
            fontSize: 30,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(
          width: double.infinity,
          child: Column(
            children:  [
              const Text(
                'IT Student',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
                          const Text(
                'email: judypastoral25@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const Text(
                'Contact No. 09460707***',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                InkWell(
                hoverColor: Colors.transparent,
                onTap: () => _launchUrl('https://www.facebook.com/'),
                child: Image.network(
                  'https://cdn3.iconfinder.com/data/icons/free-social-icons/67/facebook_circle_color-512.png',
                  width: 60,
                  height: 60,
                ),
              ),
              const SizedBox(
                  width: 40,
                ),
              InkWell(
                hoverColor: Colors.transparent,
                onTap: () => _launchUrl('https://github.com/'),
                child: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/25/25231.png',
                  width: 60,
                  height: 60,
                ),
              ),
              const SizedBox(
                  width: 40,
                ),
              InkWell(
                hoverColor: Colors.transparent,
                onTap: () => _launchUrl('https://philcstlms.net/moodle/'),
                child: Image.network(
                  'https://lh3.googleusercontent.com/ISMM2lFFQ-DfVKEqg0MeHRZv5wTCp0ETtBsbtPtT3Ld8-nbHhBQfFlG5CYIl1SkMUaIC=w800-h500',
                  width: 60,
                  height: 60,
                ),
              ),

                ],
              ),
              
              // ElevatedButton(
              //   onPressed: _launchUrl, child: const Text(
              //     'Press Me',
              //   ),
              // ),
            ],
          ),
        ),

        const SizedBox(
          height: 25,
          width: double.infinity,
        ),

        Expanded(
          child: SingleChildScrollView(
              
            scrollDirection: Axis.vertical,
              
            child: Column(
              
              children: [
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: (){ 
                    Navigator.push(
                      context, MaterialPageRoute(
                              builder: (context) => const AboutMe()
                            )
                    );

                  },
                  child: const SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Card(
                      elevation: 7,
                      child: Center(
                        child: ListTile(
                          leading: Icon(
                            Icons.man,
                            color: Colors.amber,
                          ),
                          title: Text(
                            'About Me',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                 InkWell(
                  onTap: (){ 
                    Navigator.push(
                      context, MaterialPageRoute(
                              builder: (context) => const Skills()
                            )
                    );

                  },
                  child: const SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Card(
                      elevation: 7,
                      child: Center(
                        child: ListTile(
                          leading: Icon(
                            Icons.stacked_line_chart_outlined,
                            color: Colors.amber,
                          ),
                          title: Text(
                            'Skills',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){ 
                    Navigator.push(
                      context, MaterialPageRoute(
                              builder: (context) => const Education()
                            )
                    );

                  },
                  child: const SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Card(
                      elevation: 7,
                      child: Center(
                        child: ListTile(
                          leading: Icon(
                            Icons.grade,
                            color: Colors.amber,
                          ),
                          title: Text(
                            'Education',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){ 
                    Navigator.push(
                      context, MaterialPageRoute(
                              builder: (context) => const Certificate()
                            )
                    );

                  },
                  child: const SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Card(
                      elevation: 7,
                      child: Center(
                        child: ListTile(
                          leading: Icon(
                            Icons.personal_injury_outlined,
                            color: Colors.amber,
                          ),
                          title: Text(
                            'Certificate',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
              
             
              
          ),
        ),
       ],
      ),
  

      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     Navigator.push(context, MaterialPageRoute(
      //       builder: (context)=>  Page2())
      //   );
      //   }
      // )
        
    );
  }

  void _launchUrl(String u) async {
    //final Uri _url = Uri.parse(u);
    log('Clicked!');
    if (!await launchUrl(Uri.parse(u))) {
      log('andar!');
      throw 'Could not launch $u';
    }else{
      log('Not done!');
    }
    log('end');
  }


}