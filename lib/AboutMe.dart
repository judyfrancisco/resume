// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      appBar: AppBar(

        title: Text(
          
          'About me',
        ),

      ),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 35, 20, 0),
            child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'PERSONAL INFORMATION\n\n',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
              ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 15),
            child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      'Surname :          FRANCISCO \nGiven Name:     JUDY ANN\nMiddle Name:   PASTORAL\nBirthday:            MARCH 23 1997\nAge:                    23 \nBirthplace:        STA. BARBARA, PANGASINAN\nNationality:        FILIPINO\nWeight:               52kg\nHeight:                152cm\nFather Name:    FELICIANO B. FRANCISCO\nMother Name:   MERLITA P. FRANCISCO\n\n',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
              ),
          ),
            ],
      ),

    );
    
  }
}