import 'package:flutter/material.dart';
import 'package:quizz_app/data/physics_question.dart';
import 'package:quizz_app/screen/result_screen.dart';

class Physics extends StatefulWidget {
  const Physics({Key? key}) : super(key: key);

  @override
  State<Physics> createState() => _PhysicsState();
}

class _PhysicsState extends State<Physics> {

  PageController? _controller = PageController(initialPage: 0);

  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isWrong= Colors.red;
  Color buttonColor=Colors.blue;

  int score=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: const Color(0xff6a2ea3),
      //   backgroundColor: const Color(0xff8e4e94),
     // backgroundColor: const Color(0xff810a8c),
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller!,
            onPageChanged: (page) {
              setState(() {
                isPressed = false;
              });
            },
            itemCount: questions.length,
              itemBuilder: (context,index){
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 45.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                       //     color:  Colors.orange.shade600,         7978FF
                              color:  Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                              "Question ${index + 1} / ${questions.length}",
                            style: const TextStyle(
                              color: Colors.white,
                            fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  const  Divider(
                      height: 30.0,
                      color: Colors.white,
                    thickness: 1.0,
                    ),
                   const  SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color:  Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        questions[index].question!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    for(int i=0; i<questions[index].answer!.length; i++)
                      Container(
                      //  padding: const EdgeInsets.all(20),
                        width: double.infinity,
                        margin: const EdgeInsets.only(bottom: 18.0),
                        child: MaterialButton(
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.symmetric(vertical: 18.0),
                          //  color: Colors.blue,
                          color: isPressed
                              ?questions[index].answer!.entries.toList()[i].value
                              ? isTrue
                              :isWrong
                              :Colors.blue,
                            onPressed: isPressed
                                ? (){}
                               : (){
                             setState(() {
                               isPressed =true;
                             });
                             if(questions[index]
                                 .answer!
                                 .entries
                                 .toList()[i]
                                 .value){
                               score +=5;
                            //   print(score);
                             }
                            },
                            child: Text(
                            questions[index].answer!.keys.toList()[i],
                              style:const  TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                              ),
                          ),
                        ),
                      ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          onPressed:
                          isPressed
                             ? (){
                            _controller!
                                .previousPage(
                                    duration: Duration(microseconds: 500),
                                    curve: Curves.linear,
                                  );
                                }
                             : null,
                          color: Colors.orange,
                          child: const Text('Previous'),
                        ),
                        MaterialButton(
                          onPressed:  isPressed
                            ? index +1 == questions.length
                            ? () {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen(score)));
                          }
                            : (){
                                  _controller!
                                      .nextPage(
                                       duration: Duration(microseconds: 500),
                                       curve: Curves.linear,
                                  );
                                  setState(() {
                                    isPressed = false;
                                  });
                                }
                            : null,
                          color: Colors.orange,
                          child: Text(
                              index +1 == questions.length
                                  ? "See Result"
                                  : "Next",
                          ),
                        ),
                      ],
                    ),
                    ],
                  ),
              );
              },
            ),
          ),
    );
    }
  }
