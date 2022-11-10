import 'package:quizz_app/model/question_model.dart';

List<QuestionModel> questions =[
  QuestionModel(
      "Q1.Ohm is a unit of measuring _________?",
      {
        "Resistance": true,
        "Voltage" : false,
        "Current" : false,
        "None of these" : false,
      },
  ),
  QuestionModel(
    "Q2.The pulling sensation when we stand near a running train can be explained on the basis of ___:",
    {
      "Archimedes Principle": false,
      " Bernoulli’s law" : true,
      "Avogadro’s Hypothesis" : false,
      "Newton’s Third Law of motion" : false,
    },
  ),
  QuestionModel(
    "Q3.Joule/kg is the S.I unit of which of these physical quantities?",
    {
      " Entropy": false,
      "Permittivity of free space" : false,
      "Latent heat" : true,
      "Gas constant" : false,
    },
  ),
  QuestionModel(
    "Q4.The Newton’s third law is applicable when:",
    {
      "bodies are at rest": false,
      "bodies are in motion" : false,
      "bodies are in the air" : false,
      "bodies are at rest or in motion" : true,
    },
  ),
  QuestionModel(
    "Q5.Which of the following is an example of application of force?",
    {
      "when a body at rest starts moving": false,
      "when a moving body stops" : false,
      "when moving body changes its direction" : false,
      "All of the above" : true,
    },
  ),
];