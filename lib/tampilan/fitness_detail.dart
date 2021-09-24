import 'package:flutter/material.dart';

class FitnessDetail extends StatelessWidget {
  final String name;
  final String time;
  final String description;
  final String image;

  const FitnessDetail({required this.name, required this.time, required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          name,
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.w500
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.only(top: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/$image',
                      scale: 1.5,
                    ),
                    SizedBox(width: 15.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          time,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.0),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 23.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      '$description',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Ubuntu',
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}