import 'package:quizz_app/model/question_model.dart';

List<QuestionModel> questions =[
  QuestionModel(
    "1.Which compound of mercury is used as antiseptic?",
    {
      "Mercuric sulphide": false,
      "Mercuric oxide" : false,
      "Mercuric chloride" : true,
      "Mercuric iodide" : false,
    },
  ),
  QuestionModel(
    "2.What is the general electron configuration of all alkaline earth metals?",
    {
      "ns1": false,
      " ns2" : true,
      "ns2 np6" : false,
      "None of the above" : false,
    },
  ),
  QuestionModel(
    "3.What percent of Carbon is present in the earth’s crust?",
    {
      "10%": false,
      "3.8%" : false,
      "0.18%" : true,
      "1.6%" : false,
    },
  ),
  QuestionModel(
    "4.Which of the following gases is used to force ripening of the fruits?",
    {
      "Propene": false,
      "Methylene" : false,
      "Ethane" : false,
      "Ethylene" : true,
    },
  ),
  QuestionModel(
    "5.Which of the following is the purest form of iron?",
    {
      "Steel": false,
      "Cast Iron" : false,
      "Pig Iron" : false,
      "Wrought Iron" : true,
    },
  ),
];