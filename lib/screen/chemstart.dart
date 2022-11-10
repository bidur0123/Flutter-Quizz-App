import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:quizz_app/pages/chemistry.dart';

class ChemStart extends StatefulWidget {
  const ChemStart({Key? key}) : super(key: key);

  @override
  State<ChemStart> createState() => _ChemStartState();
}

class _ChemStartState extends State<ChemStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blue.shade900 ,
        elevation: 0,
      ),
      backgroundColor: Colors.blue.shade900,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children:  [
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Center(
                child: AnimatedTextKit (
                  // "Quizz",
                  // style: TextStyle(
                  //   fontWeight: FontWeight.bold,
                  //   fontSize: 60.0,
                  //   color: Colors.white
                  // ),
                  animatedTexts: [
                    TyperAnimatedText('Quizzls',
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                  //   repeatForever: true,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            // Container(
            //   height: 250.0,
            //   width: 250.0,
            //   decoration: BoxDecoration(
            //     image:const DecorationImage(
            //       image: AssetImage("images/women.jpg"),
            //       fit: BoxFit.cover,
            //     ),
            //     borderRadius: BorderRadius.circular(15),
            //     boxShadow: const [
            //       BoxShadow(
            //         color: Colors.black45,
            //         offset: Offset(5.0, 5.0),
            //         blurRadius: 8.0,
            //         spreadRadius: 2.0,
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              child:const Image(
                image: AssetImage('images/bulb.png'),
              ),
            ),
            const  SizedBox(height: 10.0),
            Container(
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText(
                      "Let's Play Quizz",
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold
                      )),
                ],
              ),
            ),
            SizedBox(height: 40.0),
            // Container(
            //   margin: EdgeInsets.only(top: 40.0),
            //   child:const Text(
            //       "Let's Play Quizz",
            //     style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 30.0,
            //       color: Colors.white,
            //       fontStyle: FontStyle.italic
            //     ),
            //   ),
            // ),
            SizedBox(
              width: 120.0,
              height: 60.0,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Chemistry()));
                },
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                ),
                child: const Text(
                  'START',
                  style: TextStyle(
                      fontSize: 20.0
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
