import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Map<String, String>> stages = [
    {
      'title': 'STAGE Technicien (2 mois) Juin 2023',
      'company': 'Codemize-solutions',
      'description':
          'Développement d’une d’application de réservation de stades',
      'responsibilities': 'Développement web front end (Framework React).',
    },
    {
      'title': 'Stage d’initiation (1 mois) Juin 2022',
      'company': 'ADN EXPERTISE',
      'description': 'Réalisation des tests unitaires coté front end.',
      'responsibilities':
          'Réalisation des tests manuels pour tester une application "Educap" dédiée à l’éducation (Framework Jest).',
    },
  ];

  List<Map<String, String>> projet = [
    {
      'title': 'Projet de fin d’année :',
      'description':
          'Déveleppoment d’une application mobile pour gérer le déroulement d’une conférence (Flutter, NestJs, MongoDB) .',
    },
    {
      'title': 'Projet Semestriel 1 :',
      'description':
          'Développement d‘une Application pour la gestion de transport pour un société de transpot (Java). .',
    },
    {
      'title': 'Projet Semestriel 2  :',
      'description':
          "Développement d’application de calcul d’Indice de Masse Corporelle IMC (Web:ReactJS et Mobile: Java). ",
    },
  ];

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Mon Cv",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 4,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                border: Border.all(width: 2, color: Colors.black),
              ),
              width: 500,
              height: 60,
              child: const Text(
                'Khelifi Youssef',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
                width: 300,
                height: 300,
                child: Image.asset(
                  "image/Youssefff.jpg",
                ),
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding: const EdgeInsets.only(
                    bottom: 30, top: 10, left: 10, right: 10)),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                border: Border.all(width: 2, color: Colors.black),
              ),
              width: 500,
              height: 250,
              child: const Text(
                "Étudiant en ingénierie génie Informatique à l'École Nationale d'électronique et de télécommunication de Sfax (ENETCOM), rigoureux, passionné par le développement mobile et web, dynamique, doté du sens des responsabilités et ouvert aux autres, je suis à la recherche d‘un stage de fin d’études.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            const Text(
              'EXPERIENCES PROFESSIONNELLES',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),

            // Code d'expérience professionnelles :
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                border: Border.all(width: 2, color: Colors.black),
              ),
              width: 500,
              height: 350,
              child: ListView.builder(
                itemCount: stages.length,
                itemBuilder: (context, i) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          stages[i]['title']!,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          stages[i]['company']!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          stages[i]['description']!,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          stages[i]['responsibilities']!,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const Text(
              'PROJECTS',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),

            Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                border: Border.all(width: 2, color: Colors.black),
              ),
              width: 500,
              height: 350,
              child: ListView.builder(
                itemCount: projet.length,
                itemBuilder: (context, i) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          projet[i]['title']!,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          projet[i]['description']!,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                border: Border.all(width: 2, color: Colors.black),
              ),
              width: 500,
              height: 100,
              child: const Text(
                "Compétences : Flutter, dart, html, css, js, React Js, NestJs, MongoDb, Mysql",
                style: TextStyle(
                  wordSpacing: 2,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
