import 'package:quizz_app/model/question_model.dart';

List<QuestionModel> questions =[
  QuestionModel(
    "1.What is the average of first 150 natural numbers?",
    {
      "75": false,
      "70" : false,
      "75.5" : true,
      "76.5" : false,
    },
  ),
  QuestionModel(
    "2.|–4| + |4| – 4 + 4 = ?",
    {
      "0": false,
      "2" : false,
      "4" : false,
      "8" : true,
    },
  ),
  QuestionModel(
    "3.What comes next in the sequence: 1, 3, 11, 43, ____ ?",
    {
      "161": false,
      "171" : true,
      "181" : false,
      "191" : false,
    },
  ),
  QuestionModel(
    "4.In a class of 40 students 20% are girls. How many boys are there in the class?",
    {
      "26": false,
      "28" : false,
      "30" : false,
      "32" : true,
    },
  ),
  QuestionModel(
    "5. If the cost of 12 eggs is Rs.40. What will be the cost of 3 eggs?",
    {
      "Rs.8": false,
      "Rs.9" : false,
      "Rs.5" : false,
      "Rs.10" : true,
    },
  ),
];