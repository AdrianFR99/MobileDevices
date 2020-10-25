import 'package:flutter/material.dart';

class MainUserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //Column One : STRUCTURE OF THE WHOLE SCREEN
        children: [
          Expanded(
            flex: 2,
            child: BaseBackground(),
          ),
        ],
      ),
    );
  }
}

class BaseBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        //Column Two
        children: [
          Expanded(
            flex: 3,
            child: UpperSegmentBGB(), //invisible Rect
          ),
          Expanded(
            flex: 1,
            child: LowerSegmentBGB(),
          ),
        ],
      ),
    );
  }
}

class LowerSegmentBGB extends StatelessWidget {
  //Lower part of the background base(BGB)

  @override
  Widget build(BuildContext context) {
    return Container(
      //Green Rect
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),

      child: Container( //Inside the the lower part segmentBGB
  
        padding: EdgeInsets.all(40), //HARDCODED
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row( //Text row
              children: [
                Text(
                  'Recently Assigned', //HARDCODED
                  style: TextStyle(
                    fontFamily: '',
                    fontSize: 25, //HARDCODED
                  ),
                ),
                SizedBox(width: 150),//HARDCODED
                Text(
                  'All tasks',
                  style: TextStyle(fontFamily: '', fontSize: 15),//HARDCODED
                ), 
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UpperSegmentBGB extends StatelessWidget {
  //Upper part of the background base(BGB)

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
