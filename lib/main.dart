import 'package:flutter/material.dart';
import 'package:quizz_app/pages/drawer.dart';
import 'package:quizz_app/screen/biostart.dart';
import 'package:quizz_app/screen/chemstart.dart';
import 'package:quizz_app/screen/mathstart.dart';
import 'package:quizz_app/screen/physicsstart.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "App",
  home: QuizzApp(),
));

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: QuizzApp(),
//     );
//   }
// }
class QuizzApp extends StatefulWidget {
  const QuizzApp({Key? key}) : super(key: key);

  @override
  State<QuizzApp> createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:  const Text(
              'Quizzls',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor:   Color(0xff2C2891),
        ),
          drawer: const MyDrawer(),
          // width: double.infinity,
        //  height: double.infinity,
        //  color: const Color(0xff6a2ea3),
        // body:Container(
        //   color: const Color(0xff6a2ea3),
        //   child: GridView.extent(
        //       maxCrossAxisExtent: 200.0,
        //     primary: false,
        //     padding: const EdgeInsets.fromLTRB(20.0, 100.0, 20.0,0.0),
        //     crossAxisSpacing: 10,
        //     mainAxisSpacing: 10,
        //     children: [
        //       InkWell(
        //         onTap: (){
        //           Navigator.push(context, MaterialPageRoute(builder: (context)=> Physics()));
        //         },
        //         child: Container(
        //           decoration: BoxDecoration(
        //             image:const DecorationImage(
        //                 image: AssetImage("images/physics.jpg"),
        //               fit: BoxFit.cover,
        //             ),
        //         border: Border.all(
        //             color: Colors.green,
        //             width: 8,
        //           ),
        //             borderRadius: BorderRadius.circular(15),
        //             boxShadow: const [
        //              BoxShadow(
        //                 color: Colors.black,
        //                 offset: Offset(5.0, 5.0),
        //                 blurRadius: 8.0,
        //                 spreadRadius: 2.0,
        //               ),
        //               BoxShadow(
        //                 color: Colors.white,
        //                 offset: Offset(0.0, 0.0),
        //                 blurRadius: 0.0,
        //                 spreadRadius: 0.0,
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //       InkWell(
        //         onTap: (){},
        //         child: Container(
        //           decoration: BoxDecoration(
        //             image:const DecorationImage(
        //               image: AssetImage("images/chem.jpg"),
        //               fit: BoxFit.cover,
        //             ),
        //             border: Border.all(
        //               color: Colors.green,
        //               width: 8,
        //             ),
        //             borderRadius: BorderRadius.circular(15),
        //             boxShadow: const [
        //               BoxShadow(
        //                 color: Colors.black,
        //                 offset: Offset(5.0, 5.0),
        //                 blurRadius: 8.0,
        //                 spreadRadius: 2.0,
        //               ),
        //               BoxShadow(
        //                 color: Colors.white,
        //                 offset: Offset(0.0, 0.0),
        //                 blurRadius: 0.0,
        //                 spreadRadius: 0.0,
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //       InkWell(
        //         onTap: (){},
        //         child: Container(
        //           decoration: BoxDecoration(
        //             image:const DecorationImage(
        //               image: AssetImage("images/math.jpg"),
        //               fit: BoxFit.cover,
        //             ),
        //             border: Border.all(
        //               color: Colors.green,
        //               width: 8,
        //             ),
        //             borderRadius: BorderRadius.circular(15),
        //             boxShadow: const [
        //               BoxShadow(
        //                 color: Colors.black,
        //                 offset: Offset(5.0, 5.0),
        //                 blurRadius: 8.0,
        //                 spreadRadius: 2.0,
        //               ),
        //               BoxShadow(
        //                 color: Colors.white,
        //                 offset: Offset(0.0, 0.0),
        //                 blurRadius: 0.0,
        //                 spreadRadius: 0.0,
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //       InkWell(
        //         onTap: (){},
        //         child: Container(
        //           decoration: BoxDecoration(
        //             image:const DecorationImage(
        //               image: AssetImage("images/Bio.jpg"),
        //               fit: BoxFit.cover,
        //             ),
        //             border: Border.all(
        //               color: Colors.green,
        //               width: 8,
        //             ),
        //             borderRadius: BorderRadius.circular(15),
        //             boxShadow: const [
        //               BoxShadow(
        //                 color: Colors.black,
        //                 offset: Offset(5.0, 5.0),
        //                 blurRadius: 8.0,
        //                 spreadRadius: 2.0,
        //               ),
        //               BoxShadow(
        //                 color: Colors.white,
        //                 offset: Offset(0.0, 0.0),
        //                 blurRadius: 0.0,
        //                 spreadRadius: 0.0,
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // body: Container(
       //    width: double.infinity,
       //    height: double.infinity,
       //    color: const Color(0xff6a2ea3),
       //    child: Column(
       //      children: [
       //        Container(
       //          height: 60.0,
       //          width: 190.0,
       //          margin: const EdgeInsets.only(top: 60.0),
       //         decoration: BoxDecoration(
       //           color: const Color(0xff6a2ea3),
       //           borderRadius: BorderRadius.circular(10),
       //           border: Border.all(
       //             color: Colors.green,
       //             width: 8,
       //           ),
       //           boxShadow: const [
       //             BoxShadow(
       //               color: Colors.black,
       //               offset: Offset(5.0, 5.0),
       //               blurRadius: 8.0,
       //               spreadRadius: 2.0,
       //             ),
       //             // BoxShadow(
       //             //   color: Colors.white,
       //             //   offset: Offset(0.0, 0.0),
       //             //   blurRadius: 0.0,
       //             //   spreadRadius: 0.0,
       //             // ),
       //           ],
       //         ),
       //          child: const Center(
       //              child: Text("Category", style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold))
       //          ),
       //        ),
       //        const SizedBox(
       //          height: 40.0,
       //        ),
       //        Row (
       //          mainAxisAlignment: MainAxisAlignment.center,
       //       children: [
       //       InkWell(
       //              onTap: (){
       //              Navigator.push(context, MaterialPageRoute(builder: (context)=> Physics()));
       //              },
       //              child: Container(
       //                height: 140,
       //                width: 140,
       //                decoration: BoxDecoration(
       //                  image:const DecorationImage(
       //                      image: AssetImage("images/physics.jpg"),
       //                    fit: BoxFit.cover,
       //                  ),
       //              border: Border.all(
       //                  color: Colors.green,
       //                  width: 8,
       //                ),
       //                  borderRadius: BorderRadius.circular(15),
       //                  boxShadow: const [
       //                   BoxShadow(
       //                      color: Colors.black,
       //                      offset: Offset(5.0, 5.0),
       //                      blurRadius: 8.0,
       //                      spreadRadius: 2.0,
       //                    ),
       //                    // BoxShadow(
       //                    //   color: Colors.white,
       //                    //   offset: Offset(0.0, 0.0),
       //                    //   blurRadius: 0.0,
       //                    //   spreadRadius: 0.0,
       //                    // ),
       //                  ],
       //                ),
       //              ),
       //            ),
       //         const SizedBox(
       //           width: 20.0,
       //         ),
       //         InkWell(
       //           onTap: (){
       //             Navigator.push(context, MaterialPageRoute(builder: (context)=> const Physics()));
       //           },
       //           child: Container(
       //             height: 140,
       //             width: 140,
       //             decoration: BoxDecoration(
       //               image:const DecorationImage(
       //                 image: AssetImage("images/chem.jpg"),
       //                 fit: BoxFit.cover,
       //               ),
       //               border: Border.all(
       //                 color: Colors.green,
       //                 width: 8,
       //               ),
       //               borderRadius: BorderRadius.circular(15),
       //               boxShadow: const [
       //                 BoxShadow(
       //                   color: Colors.black,
       //                   offset: Offset(5.0, 5.0),
       //                   blurRadius: 8.0,
       //                   spreadRadius: 2.0,
       //                 ),
       //                 // BoxShadow(
       //                 //   color: Colors.white,
       //                 //   offset: Offset(0.0, 0.0),
       //                 //   blurRadius: 0.0,
       //                 //   spreadRadius: 0.0,
       //                 // ),
       //               ],
       //             ),
       //           ),
       //         ),
       //          ],
       //       ),
       //        const SizedBox (
       //          height: 40.0,
       //        ),
       //        Row (
       //          mainAxisAlignment: MainAxisAlignment.center,
       //          children: [
       //            InkWell(
       //              onTap: (){
       //
       //              },
       //              child: Container(
       //                height: 140,
       //                width: 140,
       //                decoration: BoxDecoration(
       //                  image:const DecorationImage(
       //                    image: AssetImage("images/math.jpg"),
       //                    fit: BoxFit.cover,
       //                  ),
       //                  border: Border.all(
       //                    color: Colors.green,
       //                    width: 8,
       //                  ),
       //                  borderRadius: BorderRadius.circular(15),
       //                  boxShadow: const [
       //                    BoxShadow(
       //                      color: Colors.black,
       //                      offset: Offset(5.0, 5.0),
       //                      blurRadius: 8.0,
       //                      spreadRadius: 2.0,
       //                    ),
       //                    // BoxShadow(
       //                    //   color: Colors.white,
       //                    //   offset: Offset(0.0, 0.0),
       //                    //   blurRadius: 0.0,
       //                    //   spreadRadius: 0.0,
       //                    // ),
       //                  ],
       //                ),
       //              ),
       //            ),
       //            const SizedBox(
       //              width: 20.0,
       //            ),
       //            InkWell(
       //              onTap: (){
       //                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Physics()));
       //              },
       //              child: Container(
       //                height: 140,
       //                width: 140,
       //                decoration: BoxDecoration(
       //                  image:const DecorationImage(
       //                    image: AssetImage("images/Bio.jpg"),
       //                    fit: BoxFit.cover,
       //                  ),
       //                  border: Border.all(
       //                    color: Colors.green,
       //                    width: 8,
       //                  ),
       //                  borderRadius: BorderRadius.circular(15),
       //                  boxShadow: const [
       //                    BoxShadow(
       //                      color: Colors.black,
       //                      offset: Offset(5.0, 5.0),
       //                      blurRadius: 8.0,
       //                      spreadRadius: 2.0,
       //                    ),
       //                    // BoxShadow(
       //                    //   color: Colors.white,
       //                    //   offset: Offset(0.0, 0.0),
       //                    //   blurRadius: 0.0,
       //                    //   spreadRadius: 0.0,
       //                    // ),
       //                  ],
       //                ),
       //              ),
       //            ),
       //          ],
       //        ),
       //        // const SizedBox (
       //        //   height: 40.0,
       //        // ),
       //        // ElevatedButton(
       //        //     onPressed: (){
       //        //       Navigator.push(context, MaterialPageRoute(builder: (context)=> Physics()));
       //        //     },
       //        //   child:Text('Hello'),
       //        // ),
       //     ],
       //   ),
       // ),
    // width: double.infinity,
    //  height: double.infinity,
    //  color: const Color(0xff6a2ea3),
        body:Container (
          color:Color(0xffCDDEFF) ,

           child: Stack(
             children: [
               Container(
                          height: 60.0,
                          width: 190.0,
                          margin: const EdgeInsets.only(top: 60.0, left: 80.0),
                         decoration: BoxDecoration(
                           color: const Color(0xff6C4AB6),                 //       6C4AB6
                           borderRadius: BorderRadius.circular(10),
                           // border: Border.all(
                           //   color: Colors.green,
                           //   width: 8,
                           // ),
                           boxShadow: const [
                             BoxShadow(
                               color: Colors.black,
                               offset: Offset(3.0, 3.0),
                               blurRadius: 4.0,
                               spreadRadius: 2.0,
                             ),
                           ],
                         ),
                          child: const Center(
                              child: Text("Category", style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold))
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                            ),
                        GridView.extent(
                            maxCrossAxisExtent: 200.0,
                          primary: false,
                          padding: const EdgeInsets.fromLTRB(20.0, 160.0, 20.0,0.0),
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          children: [
                            InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Start()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    image:const DecorationImage(
                                        image: AssetImage("images/physics.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                // border: Border.all(
                                //     color: Colors.green,
                                //     width: 8,
                                //   ),
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: const [
                                     BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(3.0, 3.0),
                                        blurRadius: 4.0,
                                        spreadRadius: 2.0,
                                      ),
                                    ],
                                  ),
                                ),
                            ),
                            InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ChemStart()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    image:const DecorationImage(
                                      image: AssetImage("images/chem.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                    // border: Border.all(
                                    //   color: Colors.green,
                                    //   width: 8,
                                    // ),
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(3.0, 3.0),
                                        blurRadius: 4.0,
                                        spreadRadius: 2.0,
                                      ),
                                    ],
                                  ),
                                ),
                            ),
                            InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MathStart()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    image:const DecorationImage(
                                      image: AssetImage("images/math.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                    // border: Border.all(
                                    //   color: Colors.green,
                                    //   width: 8,
                                    // ),
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(3.0, 3.0),
                                        blurRadius: 4.0,
                                        spreadRadius: 2.0,
                                      ),
                                    ],
                                  ),
                                ),
                            ),
                            InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BioStart()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    image:const DecorationImage(
                                      image: AssetImage("images/Bio.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                    // border: Border.all(
                                    //   color: Colors.green,
                                    //   width: 8,
                                    // ),
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(3.0, 3.0),
                                        blurRadius: 4.0,
                                        spreadRadius: 2.0,
                                      ),
                                    ],
                                  ),
                                ),
                            ),
                          ],
                        ),
                     ],
                  ),
               ),
            ),
      debugShowCheckedModeBanner: false,
         );
      }
   }
