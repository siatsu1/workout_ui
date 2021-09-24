import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workout_app/data/workout.dart';

import 'fitness_detail.dart';

class DetailScreen extends StatefulWidget {
  final String displayName;

  DetailScreen({required this.displayName});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            text: 'Workout',
            style: TextStyle(
              color: Colors.red,
              fontSize: 25.0,
              fontWeight: FontWeight.w900,
              fontFamily: 'Lora',
            ),
            children: <TextSpan>[
              TextSpan(
                text: ' App',
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: 'Lora',
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.home_filled,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Selamat Datang ${widget.displayName}',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 19.0),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      'Rekomendasi Workout Di Rumah',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    height: 170.0,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: fitnessList.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return FitnessDetail(
                                  name: fitnessList[index].name,
                                  time: fitnessList[index].time,
                                  description: fitnessList[index].description,
                                  image: fitnessList[index].image,
                                );
                              }));
                            },
                            child: Container(
                              width: 160,
                              margin: index != fitnessList.length-1 ? EdgeInsets.only(left: 15) : EdgeInsets.symmetric(horizontal: 16.0),
                              padding: EdgeInsets.symmetric(
                                vertical: 16.0,
                                horizontal: 30.0,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                  )
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/${fitnessList[index].image}',
                                    scale: 1.0,
                                  ),
                                  SizedBox(
                                      width: 15.0
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        fitnessList[index].name,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lora',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 2.0,),
                                      Text(
                                        fitnessList[index].time,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}

