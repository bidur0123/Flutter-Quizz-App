import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quizz_app/main.dart';
//import 'package:quizz_app/pages/physics.dart';

class ResultScreen extends StatefulWidget {
  final int score;
  const ResultScreen(this.score,{Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Quizz App'),
        centerTitle: true,
        backgroundColor: Color(0xff973bed),
      ),
      backgroundColor: Colors.white,
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children:  [
      //      const  Text(
      //         "Congratulations",
      //         style: TextStyle(
      //           fontSize: 30.0,
      //           fontWeight: FontWeight.bold,
      //           color: Colors.white,
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 20.0,
      //       ),
      //     const  Text(
      //         "Your Score is :",
      //         style: TextStyle(
      //           fontSize: 28.0,
      //           fontWeight: FontWeight.bold,
      //           color: Colors.white,
      //         ),
      //       ),
      //      const  SizedBox(
      //         height: 80.0,
      //       ),
      //       Text(
      //           "${widget.score}",
      //           style: const TextStyle(
      //             fontSize: 80.0,
      //             fontWeight: FontWeight.bold,
      //             color: Colors.orange,
      //           ),
      //       ),
      //       const SizedBox(
      //         height: 50.0,
      //       ),
      //       MaterialButton(
      //           onPressed: (){
      //             Navigator.push(context,MaterialPageRoute(builder: (context)=>QuizzApp()));
      //           },
      //           textColor: Colors.white,
      //           color: Colors.orange,
      //           child: const Text(
      //               "Back to home ",
      //           )
      //       ),
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Container(
            child: Column(
              children: [
                Container(
                  // margin: EdgeInsets.only(top: 50.0),
                  // padding: EdgeInsets.only(bottom: 0.0,top: 89.0),
                  height: 208.0,
                  width: double.infinity,
                  color: Colors.white,
                  child: const Image(
                    image: AssetImage('images/trophy.jpg',),
                  ),
                ),
                Container(
                  height:508.0,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xff973bed),
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(40.0) , topRight:  Radius.circular(40.0)),
                  ),
                  child:Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      const  SizedBox(
                        height: 40.0,
                      ),
                      const  Text(
                        "Congratulations",
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const  SizedBox(
                        height: 20.0,
                      ),
                      const  Text(
                        "Your Score is :",
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const  SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "${widget.score} / 25 ",
                        style: const TextStyle(
                          fontSize: 60.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                      const SizedBox(
                        height: 100.0,
                      ),
                      MaterialButton(
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>QuizzApp()));
                          },
                          textColor: Colors.white,
                          color: Colors.orange,
                          child: const Text(
                            "Back to home ",
                          ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
            Center(
                child: Lottie.asset(
                    'asset/lottie.json',
                  fit: BoxFit.fill,
                  repeat: false,
                ),
            ),
          ]
        ),
      ),
    );
  }
}
