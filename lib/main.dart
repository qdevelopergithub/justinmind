import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';

void main() {
  runApp((new MaterialApp(
      home: new MainPage(),
      debugShowCheckedModeBanner: false,
      title: 'Justinmind')));
}

class Countdown extends AnimatedWidget {
  Countdown({ Key key, this.animation })
      : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 230.0, top: 20.0),
        child: new Row(
          children: <Widget>[
            new Text(
              animation.value.toString(),
              style: new TextStyle(fontSize: 40.0),
            ),
            new Text(" secs"),
          ],
        )
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {

  static int retrytimes = 1;
  final GlobalKey<ScaffoldState> _scaffoldstate = new GlobalKey<
      ScaffoldState>();
  AnimationController _controller;
  static const int kStartValue = 3600;

  bool headingg1 = true;
  bool headingg2 = true;
  bool headingmain = false;
  bool headingmaincorrect = false;
  bool submit = true;
  bool submitgrey = false;
  bool rettry = false;
  bool reset = false;

  bool BoxLeftP1 = false;
  bool BoxLeftP2 = false;
  bool BoxLeftP3 = false;
  bool BoxLeftP4 = false;
  bool BoxLeftP5 = false;
  bool BoxLeftP6 = false;
  bool BoxLeftP7 = false;
  bool BoxLeftP8 = false;

  bool BoxMain1 = false;
  bool BoxMain2 = false;
  bool BoxMain3 = false;
  bool BoxMain4 = false;
  bool BoxMain5 = false;
  bool BoxMain6 = false;
  bool BoxMain7 = false;
  bool BoxMain8 = false;

  bool BoxRightP1 = false;
  bool BoxRightP2 = false;
  bool BoxRightP3 = false;
  bool BoxRightP4 = false;
  bool BoxRightP5 = false;
  bool BoxRightP6 = false;
  bool BoxRightP7 = false;
  bool BoxRightP8 = false;

  bool box_leftsecrowleftpremise1 = false;
  bool box_leftsecrowleftpremise2 = false;
  bool box_leftsecrowleftpremise3 = false;
  bool box_leftsecrowleftpremise4 = false;
  bool box_leftsecrowleftpremise5 = false;
  bool box_leftsecrowleftpremise6 = false;
  bool box_leftsecrowleftpremise7 = false;
  bool box_leftsecrowleftpremise8 = false;

  bool box_leftsecrowrightpremise1 = false;
  bool box_leftsecrowrightpremise2 = false;
  bool box_leftsecrowrightpremise3 = false;
  bool box_leftsecrowrightpremise4 = false;
  bool box_leftsecrowrightpremise5 = false;
  bool box_leftsecrowrightpremise6 = false;
  bool box_leftsecrowrightpremise7 = false;
  bool box_leftsecrowrightpremise8 = false;

  bool box_rightsecrowleftpremise1 = false;
  bool box_rightsecrowleftpremise2 = false;
  bool box_rightsecrowleftpremise3 = false;
  bool box_rightsecrowleftpremise4 = false;
  bool box_rightsecrowleftpremise5 = false;
  bool box_rightsecrowleftpremise6 = false;
  bool box_rightsecrowleftpremise7 = false;
  bool box_rightsecrowleftpremise8 = false;

  bool box_rightsecrowrightpremise1 = false;
  bool box_rightsecrowrightpremise2 = false;
  bool box_rightsecrowrightpremise3 = false;
  bool box_rightsecrowrightpremise4 = false;
  bool box_rightsecrowrightpremise5 = false;
  bool box_rightsecrowrightpremise6 = false;
  bool box_rightsecrowrightpremise7 = false;
  bool box_rightsecrowrightpremise8 = false;

  //CORRECT POSITION BOOLEAN VALUES
  bool box1_correct = false;
  bool box2_correct = false;
  bool box3_correct = false;
  bool box4_correct = false;
  bool box5_correct = false;
  bool box6_correct = false;
  bool box7_correct = false;
  bool box8_correct = false;

  bool box8_keptinLeft = false;
  bool box3_keptinRight = false;

  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "heading1") {
        headingg1 = visibility;
      }
      if (field == "heading2") {
        headingg2 = visibility;
      }
      if (field == "headingmain") {
        headingmain = visibility;
      }
      if (field == "headingmaincorrect") {
        headingmaincorrect = visibility;
      }
      if (field == "submit") {
        submit = visibility;
      }
      if (field == "retry") {
        rettry = visibility;
      }
      if (field == "submitgreyy") {
        submitgrey = visibility;
      }
      if (field == "reset") {
        reset = visibility;
      }
    });
  }

  double width = 100.0,
      height = 100.0;
  Offset position1, position2, position3, position4, position5, position6,
      position7, position8, MainClaim, arrow,
      leftpremise, mainclaimtext, leftpremisetext, rightpremisetext,
      rightpremise, submitbtn,resetbtn, submitbtngrey, retry, exit,
      leftsecrowleftpremise, showsolution,
      leftsecrowrightpremise,
      rightsecrowleftpremise, rightsecrowrightpremise;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: kStartValue),
    );
    _controller.forward(from: 0.0);
    position1 = Offset(width - 80, height + 55);
    position2 = Offset(width - 80, height + 125);
    position3 = Offset(width + 50, height + 115);
    position4 = Offset(width + 50, height + 175);
    position5 = Offset(width + 30, height + 15);
    position6 = Offset(width + 30, height + 75);
    position7 = Offset(width + 30, height + 135);
    position8 = Offset(width + 30, height + 195);
    MainClaim = Offset(width + 60, height + 80);
    arrow = Offset(width + 60, height + 120);
    leftpremise = Offset(width + 60, height + 220);
    rightpremise = Offset(width + 250, height + 220);
    submitbtn = Offset(width + 430, height + 200);
    resetbtn = Offset(width + 430, height + 200);
    submitbtngrey = Offset(width + 430, height + 200);
    retry = Offset(width + 430, height + 200);
    exit = Offset(width + 500, height + 80);
    showsolution = Offset(width + 210, height + 300);
    mainclaimtext = Offset(width + 280, height + 93);
    leftpremisetext = Offset(width, height + 225);
    rightpremisetext = Offset(width + 380, height + 225);
    leftsecrowleftpremise = Offset(width + 20, height + 325);
    leftsecrowrightpremise = Offset(width + 140, height + 325);
    rightsecrowleftpremise = Offset(width + 260, height + 325);
    rightsecrowrightpremise = Offset(width + 380, height + 325);
  }

  void _showSnackBar(String value) {
    if (value.isEmpty) return;
    _scaffoldstate.currentState.showSnackBar(
        new SnackBar(content: new Text(value)));
  }

  @override
  Widget build(BuildContext context) {
    var heading1 = headingg1 ? Container(
      margin: EdgeInsets.only(top: 20.0, left: 65.0),
      child: new Text(
        "Drag the boxes to \ncomplete the logic map!",
        textAlign: TextAlign.center,
        style: new TextStyle(
            fontSize: 12.0, color: const Color(0xFF333333)),
      ),
    ) : new Container();

    var heading2 = headingg2 ? Container(
      margin: EdgeInsets.only(top: 10.0, left: 65.0),
      child: new Text(
        "Press submit when you \nthink you got it!",
        textAlign: TextAlign.center,
        style: new TextStyle(
            fontSize: 12.0, color: const Color(0xFF333333)),
      ),
    ) : new Container();

    var submitt = submit ? Container(
      margin: EdgeInsets.only(
          top: submitbtn.dy - height + 100, left: submitbtn.dx),
      child: new RaisedButton(
        onPressed: Submit,
        textColor: Colors.white,
        color: const Color(0xFF1a0d71),
        padding: const EdgeInsets.all(8.0),
        child: new Text(
          "Submit",
        ),
      ),
    ) : new Container();

    var resett = reset ? Container(
      margin: EdgeInsets.only(
          top: resetbtn.dy - height + 100, left: resetbtn.dx),
      child: new RaisedButton(
        onPressed: Reset,
        textColor: Colors.white,
        color: const Color(0xFF1a0d71),
        padding: const EdgeInsets.all(8.0),
        child: new Text(
          "Reset",
        ),
      ),
    ) : new Container();

    var submittgrey = submitgrey ? Container(
      margin: EdgeInsets.only(
          top: submitbtngrey.dy - height + 100, left: submitbtngrey.dx),
      child: new RaisedButton(
        onPressed: submitgreymethod,
        textColor: Colors.white,
        color: const Color(0xFF808080),
        padding: const EdgeInsets.all(8.0),
        child: new Text(
          "Submit",
        ),
      ),
    ) : new Container();

    var retryy = rettry ? Container(
      margin: EdgeInsets.only(
          top: retry.dy - height + 100, left: retry.dx),
      child: new RaisedButton(
        onPressed: () {
          setState(() {
            (retrytimes > 3) ? null : Retry();
          });
          retrytimes++;
        },
        textColor: Colors.white,
        color: const Color(0xFF1a0d71),
        padding: const EdgeInsets.all(8.0),
        child: new Text(
          "Retry",
        ),
      ),
    ) : new Container();

    var headingSubmit = headingmain ? Container(
      margin: EdgeInsets.only(top: 50.0, left: 65.0),
      child: new Text(
        "That wasn't it,\ntry again!",
        textAlign: TextAlign.center,
        style: new TextStyle(
            fontSize: 18.0,
            color: const Color(0xFF000000)),
      ),
    ) : new Container();

    var headingSubmitallcorrect = headingmaincorrect ? Container(
      margin: EdgeInsets.only(top: 50.0, left: 65.0),
      child: new Text(
        "CORRECT!",
        textAlign: TextAlign.center,
        style: new TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF006400)),
      ),
    ) : new Container();

    config();

    return new Scaffold(
      key: _scaffoldstate,
      backgroundColor: const Color(0xFFF0EFF5),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: leftpremisetext.dx + 155,
            top: leftpremisetext.dy - height - 77,
            child: Container(
                margin: EdgeInsets.only(top: 5.0),
                child: new Text('Premise',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1a0d71)))),
          ),
          Positioned(
            left: rightpremisetext.dx + 175,
            top: rightpremisetext.dy - height - 77,
            child: Container(
                margin: EdgeInsets.only(top: 5.0),
                child: new Text('Premise',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1a0d71)))),
          ),
          Positioned(
              left: mainclaimtext.dx - 30,
              top: mainclaimtext.dy - height - 40,
              child: Container(
                  margin: EdgeInsets.only(left: 5.0),
                  child: new Text('Main Claim',
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF7F7219))))),
          Positioned(
            left: leftpremise.dx + 150,
            top: leftpremise.dy - height - 85,
            child: Container(
              width: 100.0,
              height: 50.0,
              child: DragTarget(
                builder: (context, List<int> candidateData, rejectedData) {
                  print(candidateData);
                },
                onWillAccept: (data) {
                  return true;
                },
                onAccept: (data) {
                  switch (data) {
                    case 1:
                      {
                        BoxLeftP1 = true;
                      }
                      break;
                    case 2:
                      {
                        BoxLeftP2 = true;
                      }
                      break;
                    case 3:
                      {
                        BoxLeftP3 = true;
                      }
                      break;
                    case 4:
                      {
                        BoxLeftP4 = true;
                      }
                      break;
                    case 5:
                      {
                        BoxLeftP5 = true;
                      }
                      break;
                    case 6:
                      {
                        BoxLeftP6 = true;
                      }
                      break;
                    case 7:
                      {
                        BoxLeftP7 = true;
                      }
                      break;
                    case 8:
                      {
                        BoxLeftP8 = true;
                      }
                      break;
                  }
                },
              ),
              decoration: new BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF1a0d71),
                  width: 2,
                ),
              ),
            ),
          ), Positioned(
            left: rightsecrowrightpremise.dx + 130,
            top: rightsecrowrightpremise.dy - height - 85,
            child: Container(
              width: 100.0,
              height: 50.0,
              child: DragTarget(
                builder: (context, List<int> candidateData,
                    rejectedData) {
                  print(candidateData);
                },
                onWillAccept: (data) {
                  return true;
                },
                onAccept: (data) {
                  switch (data) {
                    case 1:
                      {
                        box_rightsecrowrightpremise1 = true;
                      }
                      break;
                    case 2:
                      {
                        box_rightsecrowrightpremise2 = true;
                      }
                      break;
                    case 3:
                      {
                        box_rightsecrowrightpremise3 = true;
                      }
                      break;
                    case 4:
                      {
                        box_rightsecrowrightpremise4 = true;
                      }
                      break;
                    case 5:
                      {
                        box_rightsecrowrightpremise5 = true;
                      }
                      break;
                    case 6:
                      {
                        box_rightsecrowrightpremise6 = true;
                      }
                      break;
                    case 7:
                      {
                        box_rightsecrowrightpremise7 = true;
                      }
                      break;
                    case 8:
                      {
                        box_rightsecrowrightpremise8 = true;
                      }
                      break;
                  }
                },
              ),
              decoration: new BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF1a0d71),
                  width: 2,
                ),
              ),
            ),
          ),
          Positioned(
            left: rightsecrowleftpremise.dx + 130,
            top: rightsecrowleftpremise.dy - height - 85,
            child: Container(
              width: 100.0,
              height: 50.0,
              child: DragTarget(
                builder: (context, List<int> candidateData,
                    rejectedData) {
                  print(candidateData);
                },
                onWillAccept: (data) {
                  return true;
                },
                onAccept: (data) {
                  switch (data) {
                    case 1:
                      {
                        box_rightsecrowleftpremise1 = true;
                      }
                      break;
                    case 2:
                      {
                        box_rightsecrowleftpremise2 = true;
                      }
                      break;
                    case 3:
                      {
                        box_rightsecrowleftpremise3 = true;
                      }
                      break;
                    case 4:
                      {
                        box_rightsecrowleftpremise4 = true;
                      }
                      break;
                    case 5:
                      {
                        box_rightsecrowleftpremise5 = true;
                      }
                      break;
                    case 6:
                      {
                        box_rightsecrowleftpremise6 = true;
                      }
                      break;
                    case 7:
                      {
                        box_rightsecrowleftpremise7 = true;
                      }
                      break;
                    case 8:
                      {
                        box_rightsecrowleftpremise8 = true;
                      }
                      break;
                  }
                },
              ),
              decoration: new BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF1a0d71),
                  width: 2,
                ),
              ),
            ),
          ),
          Positioned(
            left: leftsecrowrightpremise.dx + 130,
            top: leftsecrowrightpremise.dy - height - 85,
            child: Container(
              width: 100.0,
              height: 50.0,
              child: DragTarget(
                builder: (context, List<int> candidateData,
                    rejectedData) {
                  print(candidateData);
                },
                onWillAccept: (data) {
                  return true;
                },
                onAccept: (data) {
                  switch (data) {
                    case 1:
                      {
                        box_leftsecrowrightpremise1 = true;
                      }
                      break;
                    case 2:
                      {
                        box_leftsecrowrightpremise2 = true;
                      }
                      break;
                    case 3:
                      {
                        box_leftsecrowrightpremise3 = true;
                      }
                      break;
                    case 4:
                      {
                        box_leftsecrowrightpremise4 = true;
                      }
                      break;
                    case 5:
                      {
                        box_leftsecrowrightpremise5 = true;
                      }
                      break;
                    case 6:
                      {
                        box_leftsecrowrightpremise6 = true;
                      }
                      break;
                    case 7:
                      {
                        box_leftsecrowrightpremise7 = true;
                      }
                      break;
                    case 8:
                      {
                        box_leftsecrowrightpremise8 = true;
                      }
                      break;
                  }
                },
              ),
              decoration: new BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF1a0d71),
                  width: 2,
                ),
              ),
            ),
          ),
          Positioned(
            left: leftsecrowleftpremise.dx + 130,
            top: leftsecrowleftpremise.dy - height - 85,
            child: Container(
              width: 100.0,
              height: 50.0,
              child: DragTarget(
                builder: (context, List<int> candidateData,
                    rejectedData) {
                  print(candidateData);
                },
                onWillAccept: (data) {
                  return true;
                },
                onAccept: (data) {
                  switch (data) {
                    case 1:
                      {
                        box_leftsecrowleftpremise1 = true;
                      }
                      break;
                    case 2:
                      {
                        box_leftsecrowleftpremise2 = true;
                      }
                      break;
                    case 3:
                      {
                        box_leftsecrowleftpremise3 = true;
                      }
                      break;
                    case 4:
                      {
                        box_leftsecrowleftpremise4 = true;
                      }
                      break;
                    case 5:
                      {
                        box_leftsecrowleftpremise5 = true;
                      }
                      break;
                    case 6:
                      {
                        box_leftsecrowleftpremise6 = true;
                      }
                      break;
                    case 7:
                      {
                        box_leftsecrowleftpremise7 = true;
                      }
                      break;
                    case 8:
                      {
                        box_leftsecrowleftpremise8 = true;
                      }
                      break;
                  }
                },
              ),
              decoration: new BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF1a0d71),
                  width: 2,
                ),
              ),
            ),
          ),
          Positioned(
            left: rightpremise.dx + 200,
            top: rightpremise.dy - height - 85,
            child: Container(
              width: 100.0,
              height: 50.0,
              child: DragTarget(
                builder: (context, List<int> candidateData,
                    rejectedData) {
                  print(candidateData);
                },
                onWillAccept: (data) {
                  return true;
                },
                onAccept: (data) {
                  switch (data) {
                    case 1:
                      {
                        BoxRightP1 = true;
                      }
                      break;
                    case 2:
                      {
                        BoxRightP2 = true;
                      }
                      break;
                    case 3:
                      {
                        BoxRightP3 = true;
                      }
                      break;
                    case 4:
                      {
                        BoxRightP4 = true;
                      }
                      break;
                    case 5:
                      {
                        BoxRightP5 = true;
                      }
                      break;
                    case 6:
                      {
                        BoxRightP6 = true;
                      }
                      break;
                    case 7:
                      {
                        BoxRightP7 = true;
                      }
                      break;
                    case 8:
                      {
                        BoxRightP8 = true;
                      }
                      break;
                  }
                },
              ),
              decoration: new BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF1a0d71),
                  width: 2,
                ),
              ),
            ),
          ),
          Positioned(
            left: MainClaim.dx + 270, top: MainClaim.dy - height - 50,
            child: Container(
              width: 100.0,
              height: 50.0,
              decoration: new BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF7F7219),
                  width: 2,
                ),
              ),
              child: DragTarget(
                builder: (context, List<int> candidateData,
                    rejectedData) {
                  print(candidateData);
                },
                onWillAccept: (data) {
                  return true;
                },
                onAccept: (data) {
                  switch (data) {
                    case 1:
                      {
                        BoxMain1 = true;
                      }
                      break;
                    case 2:
                      {
                        BoxMain2 = true;
                      }
                      break;
                    case 3:
                      {
                        BoxMain3 = true;
                      }
                      break;
                    case 4:
                      {
                        BoxMain4 = true;
                      }
                      break;
                    case 5:
                      {
                        BoxMain5 = true;
                      }
                      break;
                    case 6:
                      {
                        BoxMain6 = true;
                      }
                      break;
                    case 7:
                      {
                        BoxMain7 = true;
                      }
                      break;
                    case 8:
                      {
                        BoxMain8 = true;
                      }
                  }
                },
              ),
            ),
          ),
          Positioned(
              left: arrow.dx + 230,
              top: arrow.dy - height - 40,
              child: Container(
                  child: Image.asset(
                    'assets/arrow.png',
                    width: 180.0,
                    height: 50.0,
                    fit: BoxFit.fill,
                  )
              )
          ),
          Positioned(
              left: arrow.dx + 155,
              top: arrow.dy - height + 65,
              child: Container(
                  child: Image.asset(
                    'assets/arrow.png',
                    width: 90.0,
                    height: 50.0,
                    fit: BoxFit.fill,
                  )
              )
          ),
          Positioned(
              left: arrow.dx + 395,
              top: arrow.dy - height + 65,
              child: Container(
                  child: Image.asset(
                    'assets/arrow.png',
                    width: 90.0,
                    height: 50.0,
                    fit: BoxFit.fill,
                  )
              )
          ),
          Container(
            child: new Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    submitt,
                    submittgrey,
                    retryy,
                    resett
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: exit.dx,
            top: exit.dy - height - 60,
            child: new RaisedButton(
              onPressed: Exit,
              textColor: Colors.white,
              color: const Color(0xFF1a0d71),
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                "Exit",
              ),
            ),
          ),

          Positioned(
            left: showsolution.dx,
            top: showsolution.dy - height,
            child: new RaisedButton(
              onPressed: ShowSolution,
              textColor: Colors.white,
              color: const Color(0xFF1a0d71),
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                "Show Answer",
              ),
            ),
          ),
          Positioned(
            left: position1.dx,
            top: position1.dy - height + 60,
            child: Draggable(
              data: 1,
              child: Container(
                padding: EdgeInsets.all(2.0),
                width: 100.0,
                height: 50.0,
                child: Center(
                  child: Text("Trump is a man of his word", style: Theme
                      .of(context)
                      .textTheme
                      .button,
                    textScaleFactor: 0.6,
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF000000),
                    width: 2,
                  ),
                ),
              ),
              feedback: Container(
                padding: EdgeInsets.all(2.0),
                width: 100.0,
                height: 50.0,
                child: Center(
                  child: Text("Trump is a man of his word", style: Theme
                      .of(context)
                      .textTheme
                      .button,
                    textScaleFactor: 0.6,
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF000000),
                    width: 2,
                  ),
                ),
              ),
              childWhenDragging: Container(
                width: 100.0,
                height: 50.0,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                BoxLeftP1 = false;
                BoxMain1 = false;
                BoxRightP1 = false;
                box1_correct = false;
                box_leftsecrowleftpremise1 = false;
                box_leftsecrowrightpremise1 = false;
                box_rightsecrowleftpremise1 = false;
                box_rightsecrowrightpremise1 = false;
                setState(() => position1 = Offset(width - 80, height + 55));
                _changed(true, "submit");
                _changed(false, "retry");
                _changed(false, "submitgreyy");
              },
              onDragCompleted: () {
                if (BoxLeftP1) {
                  box1_correct = false;
                  setState(() =>
                  position1 = Offset(
                      leftpremisetext.dx + 210, leftpremise.dy - height - 45));
                }
                if (BoxMain1) {
                  box1_correct = false;
                  setState(() =>
                  position1 =
                      Offset(MainClaim.dx + 270, MainClaim.dy - height - 10));
                }
                if (BoxRightP1) {
                  box1_correct = false;
                  setState(() =>
                  position1 = Offset(
                      rightpremise.dx + 200, rightpremise.dy - height - 45));
                }
                if (box_leftsecrowleftpremise1) {
                  if (box8_keptinLeft) {
                    box1_correct = true;
                  } else
                    box1_correct = false;
                  setState(() =>
                  position1 = Offset(
                      leftsecrowleftpremise.dx + 130,
                      leftsecrowleftpremise.dy - height - 45));
                }
                if (box_leftsecrowrightpremise1) {
                  if (box8_keptinLeft) {
                    box1_correct = true;
                  } else
                    box1_correct = false;
                  setState(() =>
                  position1 = Offset(
                      leftsecrowrightpremise.dx + 130,
                      leftsecrowrightpremise.dy - height - 45));
                }
                if (box_rightsecrowleftpremise1) {
                  if (box8_keptinLeft) {
                    box1_correct = false;
                  } else
                    box1_correct = true;
                  setState(() =>
                  position1 = Offset(
                      rightsecrowleftpremise.dx + 130,
                      rightsecrowleftpremise.dy - height - 45));
                }
                if (box_rightsecrowrightpremise1) {
                  if (box8_keptinLeft) {
                    box1_correct = false;
                  } else
                    box1_correct = true;
                  setState(() =>
                  position1 = Offset(
                      rightsecrowrightpremise.dx + 130,
                      rightsecrowrightpremise.dy - height - 45));
                }
              },
            ),
          ),
          Positioned(
            left: position2.dx,
            top: position2.dy - height + 50,
            child: Draggable(
              data: 2,
              child: Container(
                padding: EdgeInsets.all(2.0),
                width: 100.0,
                height: 50.0,
                child: Center(
                  child: Text("Trump is good for America", style: Theme
                      .of(context)
                      .textTheme
                      .button,
                    textScaleFactor: 0.6,
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF000000),
                    width: 2,
                  ),
                ),
              ),
              feedback: Container(
                padding: EdgeInsets.all(2.0),
                width: 100.0,
                height: 50.0,
                child: Center(
                  child: Text("Trump is good for America", style: Theme
                      .of(context)
                      .textTheme
                      .button,
                    textScaleFactor: 0.6,
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF000000),
                    width: 2,
                  ),
                ),
              ),
              childWhenDragging: Container(
                width: 100.0,
                height: 50.0,
              ),
              onDragCompleted: () {
                if (BoxLeftP2) {
                  box2_correct = false;
                  setState(() =>
                  position2 = Offset(
                      leftpremise.dx + 150, leftpremise.dy - height - 35));
                }
                if (BoxMain2) {
                  box2_correct = false;
                  setState(() =>
                  position2 =
                      Offset(MainClaim.dx + 270, MainClaim.dy - height));
                }
                if (BoxRightP2) {
                  box2_correct = false;
                  setState(() =>
                  position2 = Offset(
                      rightpremise.dx + 200, rightpremise.dy - height - 35));
                }
                if (box_leftsecrowleftpremise2) {
                  box2_correct = false;
                  setState(() =>
                  position2 = Offset(
                      leftsecrowleftpremise.dx + 130,
                      leftsecrowleftpremise.dy - height - 35));
                }
                if (box_leftsecrowrightpremise2) {
                  box2_correct = false;
                  setState(() =>
                  position2 = Offset(
                      leftsecrowrightpremise.dx + 130,
                      leftsecrowrightpremise.dy - height - 35));
                }
                if (box_rightsecrowleftpremise2) {
                  box2_correct = false;
                  setState(() =>
                  position2 = Offset(
                      rightsecrowleftpremise.dx + 130,
                      rightsecrowleftpremise.dy - height - 35));
                }
                if (box_rightsecrowrightpremise2) {
                  box2_correct = false;
                  setState(() =>
                  position2 = Offset(
                      rightsecrowrightpremise.dx + 130,
                      rightsecrowrightpremise.dy - height - 35));
                }
              },
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                BoxLeftP2 = false;
                BoxMain2 = false;
                BoxRightP2 = false;
                box2_correct = false;
                box_leftsecrowleftpremise2 = false;
                box_leftsecrowrightpremise2 = false;
                box_rightsecrowleftpremise2 = false;
                box_rightsecrowrightpremise2 = false;
                setState(() => position2 = Offset(width - 80, height + 125));
                _changed(true, "submit");
                _changed(false, "retry");
                _changed(false, "submitgreyy");
              },
            ),
          ),
          Positioned(
            left: position3.dx - 130, top: position3.dy - height + 120,
            child: Draggable(
              data: 3,
              child: Container(
                padding: EdgeInsets.all(2.0),
                width: 100.0,
                height: 50.0,
                child: Center(
                  child: Text(
                    "Trump is spreading lies and fake news", style: Theme
                      .of(context)
                      .textTheme
                      .button,
                    textScaleFactor: 0.6,
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF000000),
                    width: 2,
                  ),
                ),
              ),
              feedback: Container(
                padding: EdgeInsets.all(2.0),
                width: 100.0,
                height: 50.0,
                child: Center(
                  child: Text(
                    "Trump is spreading lies and fake news", style: Theme
                      .of(context)
                      .textTheme
                      .button,
                    textScaleFactor: 0.6,
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF000000),
                    width: 2,
                  ),
                ),
              ),
              childWhenDragging: Container(
                width: 100.0,
                height: 50.0,
              ),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                BoxLeftP3 = false;
                BoxMain3 = false;
                BoxRightP3 = false;
                box_leftsecrowleftpremise3 = false;
                box3_correct = false;
                box_leftsecrowrightpremise3 = false;
                box_rightsecrowrightpremise3 = false;
                setState(() => position3 = Offset(width + 50, height + 115));
                _changed(true, "submit");
                _changed(false, "retry");
                _changed(false, "submitgreyy");
              },
              onDragCompleted: () {
                if (BoxLeftP3) {
                  box3_keptinRight = false;
                  box3_correct = true;
                  setState(() =>
                  position3 = Offset(
                      leftpremise.dx + 280, leftpremise.dy - height - 105));
                }
                if (BoxMain3) {
                  box3_correct = false;
                  setState(() =>
                  position3 =
                      Offset(MainClaim.dx + 400, MainClaim.dy - height - 70));
                }
                if (BoxRightP3) {
                  box3_keptinRight = true;
                  box3_correct = true;
                  setState(() =>
                  position3 = Offset(
                      rightpremise.dx + 330, rightpremise.dy - height - 105));
                }
                if (box_leftsecrowleftpremise3) {
                  box3_correct = false;
                  setState(() =>
                  position3 = Offset(
                      leftsecrowleftpremise.dx + 260,
                      leftsecrowleftpremise.dy - height - 105));
                }
                if (box_leftsecrowrightpremise3) {
                  box3_correct = false;
                  setState(() =>
                  position3 = Offset(
                      leftsecrowrightpremise.dx + 260,
                      leftsecrowrightpremise.dy - height - 105));
                }
                if (box_rightsecrowleftpremise3) {
                  box3_correct = false;
                  setState(() =>
                  position3 = Offset(
                      rightsecrowleftpremise.dx + 260,
                      rightsecrowleftpremise.dy - height - 105));
                }
                if (box_rightsecrowrightpremise3) {
                  box3_correct = false;
                  setState(() =>
                  position3 = Offset(
                      rightsecrowrightpremise.dx + 260,
                      rightsecrowrightpremise.dy - height - 105));
                }
              },
            ),
          ),
          Positioned(
            left: position4.dx - 130,
            top: position4.dy - height + 120,
            child: Draggable(
              data: 4,
              child: Container(
                padding: EdgeInsets.all(2.0),
                width: 100.0,
                height: 50.0,
                child: Center(
                  child: Text(
                    "Trump will bring working-class jobs back to America",
                    style: Theme
                        .of(context)
                        .textTheme
                        .button,
                    textScaleFactor: 0.6,
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF000000),
                    width: 2,
                  ),
                ),
              ),
              feedback: Container(
                padding: EdgeInsets.all(2.0),
                width: 100.0,
                height: 50.0,
                child: Center(
                  child: Text(
                    "Trump will bring working-class jobs back to America",
                    style: Theme
                        .of(context)
                        .textTheme
                        .button,
                    textScaleFactor: 0.6,
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF000000),
                    width: 2,
                  ),
                ),
              ),
              childWhenDragging: Container(
                width: 100.0,
                height: 50.0,
              ),
              onDragCompleted: () {
                if (BoxLeftP4) {
                  box4_correct = false;
                  setState(() =>
                  position4 = Offset(
                      leftpremise.dx + 280, leftpremise.dy - height - 105));
                }
                if (BoxMain4) {
                  box4_correct = false;
                  setState(() =>
                  position4 =
                      Offset(MainClaim.dx + 400, MainClaim.dy - height - 70));
                }
                if (BoxRightP4) {
                  box4_correct = false;
                  setState(() =>
                  position4 = Offset(
                      rightpremise.dx + 330, rightpremise.dy - height - 105));
                }
                if (box_leftsecrowleftpremise4) {
                  if (!box8_keptinLeft) {
                    box4_correct = true;
                  }

                  if (box3_keptinRight) {
                    box4_correct = false;
                  } else
                    box4_correct = true;

                  setState(() =>
                  position4 = Offset(
                      leftsecrowleftpremise.dx + 260,
                      leftsecrowleftpremise.dy - height - 105));
                }
                if (box_leftsecrowrightpremise4) {
                  if (!box8_keptinLeft) {
                    box4_correct = true;
                  }
                  if (box3_keptinRight) {
                    box4_correct = false;
                  } else
                    box4_correct = true;

                  setState(() =>
                  position4 = Offset(
                      leftsecrowrightpremise.dx + 260,
                      leftsecrowrightpremise.dy - height - 105));
                }
                if (box_rightsecrowleftpremise4) {
                  if (box8_keptinLeft) {
                    box4_correct = false;
                  }
                  if (box3_keptinRight) {
                    box4_correct = true;
                  } else
                    box4_correct = false;

                  setState(() =>
                  position4 = Offset(
                      rightsecrowleftpremise.dx + 260,
                      rightsecrowleftpremise.dy - height - 105));
                }
                if (box_rightsecrowrightpremise4) {
                  if (box8_keptinLeft) {
                    box4_correct = false;
                  }
                  if (box3_keptinRight) {
                    box4_correct = true;
                  } else
                    box4_correct = false;
                  setState(() =>
                  position4 = Offset(
                      rightsecrowrightpremise.dx + 260,
                      rightsecrowrightpremise.dy - height - 105));
                }
              },
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                BoxLeftP4 = false;
                BoxMain4 = false;
                box4_correct = false;
                BoxRightP4 = false;
                box_leftsecrowleftpremise4 = false;
                box_leftsecrowrightpremise4 = false;
                box_rightsecrowleftpremise4 = false;
                box_rightsecrowrightpremise4 = false;
                setState(() => position4 = Offset(width + 50, height + 175));
                _changed(true, "submit");
                _changed(false, "retry");
                _changed(false, "submitgreyy");
              },
            ),
          ),
          Positioned(
            left: position5.dx,
            top: position5.dy,
            child: Draggable(
              data: 5,
              child: Container(
                padding: EdgeInsets.all(2.0),
                width: 100.0,
                height: 50.0,
                child: Center(
                  child: Text(
                    "BOX 5",
                    style: Theme
                        .of(context)
                        .textTheme
                        .button,
                    textScaleFactor: 0.6,
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF000000),
                    width: 2,
                  ),
                ),
              ),
              feedback: Container(
                padding: EdgeInsets.all(2.0),
                width: 100.0,
                height: 50.0,
                child: Center(
                  child: Text(
                    "BOX 5",
                    style: Theme
                        .of(context)
                        .textTheme
                        .button,
                    textScaleFactor: 0.6,
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF000000),
                    width: 2,
                  ),
                ),
              ),
              childWhenDragging: Container(
                width: 100.0,
                height: 50.0,
              ),
              onDragCompleted: () {
                if (BoxLeftP5) {
                  box5_correct = false;
                  setState(() =>
                  position5 = Offset(
                      leftpremise.dx + 150, leftpremise.dy - height - 85));
                }
                if (BoxMain5) {
                  box5_correct = false;
                  setState(() =>
                  position5 =
                      Offset(MainClaim.dx + 270, MainClaim.dy - height - 50));
                }
                if (BoxRightP5) {
                  box5_correct = false;
                  setState(() =>
                  position5 = Offset(
                      rightpremise.dx + 200, rightpremise.dy - height - 85));
                }
                if (box_leftsecrowleftpremise5) {
                  if (box8_keptinLeft) {
                    box5_correct = true;
                  } else
                    box5_correct = false;
                  setState(() =>
                  position5 = Offset(
                      leftsecrowleftpremise.dx + 130,
                      leftsecrowleftpremise.dy - height - 85));
                }
                if (box_leftsecrowrightpremise5) {
                  if (box8_keptinLeft) {
                    box5_correct = true;
                  } else
                    box5_correct = false;
                  setState(() =>
                  position5 = Offset(
                      leftsecrowrightpremise.dx + 130,
                      leftsecrowrightpremise.dy - height - 85));
                }
                if (box_rightsecrowleftpremise5) {
                  if (!box8_keptinLeft) {
                    box5_correct = true;
                  } else
                    box5_correct = false;
                  setState(() =>
                  position5 = Offset(
                      rightsecrowleftpremise.dx + 130,
                      rightsecrowleftpremise.dy - height - 85));
                }
                if (box_rightsecrowrightpremise5) {
                  if (!box8_keptinLeft) {
                    box5_correct = true;
                  } else
                    box5_correct = false;
                  setState(() =>
                  position5 = Offset(
                      rightsecrowrightpremise.dx + 130,
                      rightsecrowrightpremise.dy - height - 85));
                }
              },
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                BoxLeftP5 = false;
                box5_correct = false;
                BoxMain5 = false;
                BoxRightP5 = false;
                box_leftsecrowleftpremise5 = false;
                box_leftsecrowrightpremise5 = false;
                box_rightsecrowleftpremise5 = false;
                box_rightsecrowrightpremise5 = false;
                setState(() => position5 = Offset(width + 30, height + 15));
                _changed(true, "submit");
                _changed(false, "retry");
                _changed(false, "submitgreyy");
              },
            ),
          ),
          Positioned(
            left: position6.dx,
            top: position6.dy,
            child: Draggable(
              data: 6,
              child: Container(
                padding: EdgeInsets.all(2.0),
                width: 100.0,
                height: 50.0,
                child: Center(
                  child: Text(
                    "BOX 6",
                    style: Theme
                        .of(context)
                        .textTheme
                        .button,
                    textScaleFactor: 0.6,
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF000000),
                    width: 2,
                  ),
                ),
              ),
              feedback: Container(
                padding: EdgeInsets.all(2.0),
                width: 100.0,
                height: 50.0,
                child: Center(
                  child: Text(
                    "BOX 6",
                    style: Theme
                        .of(context)
                        .textTheme
                        .button,
                    textScaleFactor: 0.6,
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF000000),
                    width: 2,
                  ),
                ),
              ),
              childWhenDragging: Container(
                width: 100.0,
                height: 50.0,
              ),
              onDragCompleted: () {
                if (BoxLeftP6) {
                  box6_correct = false;
                  setState(() =>
                  position6 = Offset(
                      leftpremise.dx + 150, leftpremise.dy - height - 85));
                }
                if (BoxMain6) {
                  box6_correct = false;
                  setState(() =>
                  position6 =
                      Offset(MainClaim.dx + 270, MainClaim.dy - height - 50));
                }
                if (BoxRightP6) {
                  box6_correct = false;
                  setState(() =>
                  position6 = Offset(
                      rightpremise.dx + 200, rightpremise.dy - height - 85));
                }
                if (box_leftsecrowleftpremise6) {
                  if (!box8_keptinLeft) {
                    box6_correct = true;
                  }
                  if (box3_keptinRight) {
                    box6_correct = false;
                  } else
                    box6_correct = true;
                  setState(() =>
                  position6 = Offset(
                      leftsecrowleftpremise.dx + 130,
                      leftsecrowleftpremise.dy - height - 85));
                }
                if (box_leftsecrowrightpremise6) {
                  if (!box8_keptinLeft) {
                    box6_correct = true;
                  }
                  if (box3_keptinRight) {
                    box6_correct = false;
                  } else
                    box6_correct = true;
                  setState(() =>
                  position6 = Offset(
                      leftsecrowrightpremise.dx + 130,
                      leftsecrowrightpremise.dy - height - 85));
                }
                if (box_rightsecrowleftpremise6) {
                  if (box8_keptinLeft) {
                    box6_correct = false;
                  }
                  if (box3_keptinRight) {
                    box6_correct = true;
                  } else
                    box6_correct = false;
                  setState(() =>
                  position6 = Offset(
                      rightsecrowleftpremise.dx + 130,
                      rightsecrowleftpremise.dy - height - 85));
                }
                if (box_rightsecrowrightpremise6) {
                  if (box8_keptinLeft) {
                    box6_correct = false;
                  }
                  if (box3_keptinRight) {
                    box6_correct = true;
                  } else
                    box6_correct = false;
                  setState(() =>
                  position6 = Offset(
                      rightsecrowrightpremise.dx + 130,
                      rightsecrowrightpremise.dy - height - 85));
                }
              },
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                BoxLeftP6 = false;
                BoxMain6 = false;
                box6_correct = true;
                BoxRightP6 = false;
                box_leftsecrowleftpremise6 = false;
                box_leftsecrowrightpremise6 = false;
                box_rightsecrowleftpremise6 = false;
                box_rightsecrowrightpremise6 = false;
                setState(() => position6 = Offset(width + 30, height + 75));
                _changed(true, "submit");
                _changed(false, "retry");
                _changed(false, "submitgreyy");
              },
            ),
          ),
          Positioned(
            left: position7.dx,
            top: position7.dy,
            child: Draggable(
              data: 7,
              child: Container(
                padding: EdgeInsets.all(2.0),
                width: 100.0,
                height: 50.0,
                child: Center(
                  child: Text(
                    "BOX 7",
                    style: Theme
                        .of(context)
                        .textTheme
                        .button,
                    textScaleFactor: 0.6,
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF000000),
                    width: 2,
                  ),
                ),
              ),
              feedback: Container(
                padding: EdgeInsets.all(2.0),
                width: 100.0,
                height: 50.0,
                child: Center(
                  child: Text(
                    "BOX 7",
                    style: Theme
                        .of(context)
                        .textTheme
                        .button,
                    textScaleFactor: 0.6,
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF000000),
                    width: 2,
                  ),
                ),
              ),
              childWhenDragging: Container(
                width: 100.0,
                height: 50.0,
              ),
              onDragCompleted: () {
                if (BoxLeftP7) {
                  box7_correct = false;
                  setState(() =>
                  position7 = Offset(
                      leftpremise.dx + 150, leftpremise.dy - height - 85));
                }
                if (BoxMain7) {
                  box7_correct = true;
                  setState(() =>
                  position7 =
                      Offset(MainClaim.dx + 270, MainClaim.dy - height - 50));
                }
                if (BoxRightP7) {
                  box7_correct = false;
                  setState(() =>
                  position7 = Offset(
                      rightpremise.dx + 200, rightpremise.dy - height - 85));
                }
                if (box_leftsecrowleftpremise7) {
                  box7_correct = false;
                  setState(() =>
                  position7 = Offset(
                      leftsecrowleftpremise.dx + 130,
                      leftsecrowleftpremise.dy - height - 85));
                }
                if (box_leftsecrowrightpremise7) {
                  box7_correct = false;
                  setState(() =>
                  position7 = Offset(
                      leftsecrowrightpremise.dx + 130,
                      leftsecrowrightpremise.dy - height - 85));
                }
                if (box_rightsecrowleftpremise7) {
                  box7_correct = false;
                  setState(() =>
                  position7 = Offset(
                      rightsecrowleftpremise.dx + 130,
                      rightsecrowleftpremise.dy - height - 85));
                }
                if (box_rightsecrowrightpremise7) {
                  box7_correct = false;
                  setState(() =>
                  position7 = Offset(
                      rightsecrowrightpremise.dx + 130,
                      rightsecrowrightpremise.dy - height - 85));
                }
              },
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                BoxLeftP7 = false;
                BoxMain7 = false;
                BoxRightP7 = false;
                box7_correct = false;
                box_leftsecrowleftpremise7 = false;
                box_leftsecrowrightpremise7 = false;
                box_rightsecrowleftpremise7 = false;
                box_rightsecrowrightpremise7 = false;
                setState(() => position7 = Offset(width + 30, height + 135));
                _changed(true, "submit");
                _changed(false, "retry");
                _changed(false, "submitgreyy");
              },
            ),
          ),
          Positioned(
            left: position8.dx,
            top: position8.dy,
            child: Draggable(
              data: 8,
              child: Container(
                padding: EdgeInsets.all(2.0),
                width: 100.0,
                height: 50.0,
                child: Center(
                  child: Text(
                    "BOX 8",
                    style: Theme
                        .of(context)
                        .textTheme
                        .button,
                    textScaleFactor: 0.6,
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF000000),
                    width: 2,
                  ),
                ),
              ),
              feedback: Container(
                padding: EdgeInsets.all(2.0),
                width: 100.0,
                height: 50.0,
                child: Center(
                  child: Text(
                    "BOX 8",
                    style: Theme
                        .of(context)
                        .textTheme
                        .button,
                    textScaleFactor: 0.6,
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF000000),
                    width: 2,
                  ),
                ),
              ),
              childWhenDragging: Container(
                width: 100.0,
                height: 50.0,
              ),
              onDragCompleted: () {
                if (BoxLeftP8) {
                  box8_correct = true;
                  box8_keptinLeft = true;
                  setState(() =>
                  position8 = Offset(
                      leftpremise.dx + 150, leftpremise.dy - height - 85));
                }
                if (BoxMain8) {
                  box8_correct = false;
                  setState(() =>
                  position8 =
                      Offset(MainClaim.dx + 270, MainClaim.dy - height - 50));
                }
                if (BoxRightP8) {
                  box8_correct = true;
                  box8_keptinLeft = false;
                  setState(() =>
                  position8 = Offset(
                      rightpremise.dx + 200, rightpremise.dy - height - 85));
                }
                if (box_leftsecrowleftpremise8) {
                  box8_correct = false;
                  setState(() =>
                  position8 = Offset(
                      leftsecrowleftpremise.dx + 130,
                      leftsecrowleftpremise.dy - height - 85));
                }
                if (box_leftsecrowrightpremise8) {
                  box8_correct = false;
                  setState(() =>
                  position8 = Offset(
                      leftsecrowrightpremise.dx + 130,
                      leftsecrowrightpremise.dy - height - 85));
                }
                if (box_rightsecrowleftpremise8) {
                  box8_correct = false;
                  setState(() =>
                  position8 = Offset(
                      rightsecrowleftpremise.dx + 130,
                      rightsecrowleftpremise.dy - height - 85));
                }
                if (box_rightsecrowrightpremise8) {
                  box8_correct = false;
                  setState(() =>
                  position8 = Offset(
                      rightsecrowrightpremise.dx + 130,
                      rightsecrowrightpremise.dy - height - 85));
                }
              },
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                BoxLeftP8 = false;
                box8_correct = false;
                BoxMain8 = false;
                BoxRightP8 = false;
                box_leftsecrowleftpremise8 = false;
                box_leftsecrowrightpremise8 = false;
                box_rightsecrowleftpremise8 = false;
                box_rightsecrowrightpremise8 = false;
                setState(() => position8 = Offset(width + 30, height + 195));
                _changed(true, "submit");
                _changed(false, "retry");
                _changed(false, "submitgreyy");
              },
            ),
          ),
          Container(
            child: new Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    heading1,
                    heading2,
                    headingSubmit,
                    headingSubmitallcorrect
                  ],
                ),
              ],
            ),
          ),
          new Countdown(
            animation: new StepTween(
              begin: 0,
              end: kStartValue,
            ).animate(_controller),
          ),
        ],
      ),
    );
  }

  void Exit() {
   SystemNavigator.pop();
  }

  void Reset(){
    _changed(false, "reset");
    _changed(false, "headingmaincorrect");
    _changed(true, "heading1");
    _changed(true, "heading2");
    _changed(true, "submit");
    setState(() => position1 = Offset(width - 80, height + 55));
    setState(() => position2 = Offset(width - 80, height + 125));
    setState(() => position3 = Offset(width + 50, height + 115));
    setState(() => position4 = Offset(width + 50, height + 175));
    setState(() => position5 = Offset(width + 30, height + 15));
    setState(() => position6 = Offset(width + 30, height + 75));
    setState(() => position7 = Offset(width + 30, height + 135));
    setState(() => position8 = Offset(width + 30, height + 195));
  }

  void ShowSolution() {
    _changed(false, "submit");
    _changed(false, "retry");
    _changed(false, "submitgreyy");
    _changed(false, "heading1");
    _changed(false, "heading2");
    _changed(true, "headingmaincorrect");
    _changed(true, "reset");

    setState(() =>
    position1 = Offset(leftsecrowleftpremise.dx + 130,
        leftsecrowleftpremise.dy - height - 45));
    setState(() =>
    position3 = Offset(
        rightpremise.dx + 330, rightpremise.dy - height - 105));
    setState(() =>
    position4 = Offset(
        rightsecrowleftpremise.dx + 260,
        rightsecrowleftpremise.dy - height - 105));
    setState(() =>
    position5 = Offset(
        leftsecrowrightpremise.dx + 130,
        leftsecrowrightpremise.dy - height - 85));
    setState(() =>
    position6 = Offset(
        rightsecrowrightpremise.dx + 130,
        rightsecrowrightpremise.dy - height - 85));
    setState(() =>
    position7 =
        Offset(MainClaim.dx + 270, MainClaim.dy - height - 50));
    setState(() =>
    position8 = Offset(leftpremise.dx + 150, leftpremise.dy - height - 85));
    setState(() => position2 = Offset(width - 80, height + 125));
  }

  void Retry() {
    _changed(false, "heading1");
    _changed(false, "heading2");

    if (!box1_correct) {
      BoxLeftP1 = false;
      BoxMain1 = false;
      BoxRightP1 = false;
      box_leftsecrowleftpremise1 = false;
      box_leftsecrowrightpremise1 = false;
      box_rightsecrowleftpremise1 = false;
      box_rightsecrowrightpremise1 = false;
      setState(() => position1 = Offset(width - 80, height + 55));
    }
    if (!box2_correct) {
      BoxLeftP2 = false;
      BoxMain2 = false;
      BoxRightP2 = false;
      box_leftsecrowleftpremise2 = false;
      box_leftsecrowrightpremise2 = false;
      box_rightsecrowleftpremise2 = false;
      box_rightsecrowrightpremise2 = false;
      setState(() => position2 = Offset(width - 80, height + 125));
    }
    if (!box3_correct) {
      BoxLeftP3 = false;
      BoxMain3 = false;
      BoxRightP3 = false;
      box_leftsecrowleftpremise3 = false;
      box_leftsecrowrightpremise3 = false;
      box_rightsecrowleftpremise3 = false;
      box_rightsecrowrightpremise3 = false;
      setState(() => position3 = Offset(width + 50, height + 115));
    }
    if (!box4_correct) {
      BoxLeftP4 = false;
      BoxMain4 = false;
      BoxRightP4 = false;
      box_leftsecrowleftpremise4 = false;
      box_leftsecrowrightpremise4 = false;
      box_rightsecrowleftpremise4 = false;
      box_rightsecrowrightpremise4 = false;
      setState(() => position4 = Offset(width + 50, height + 175));
    }
    if (!box5_correct) {
      BoxLeftP5 = false;
      BoxMain5 = false;
      BoxRightP5 = false;
      box_leftsecrowleftpremise5 = false;
      box_leftsecrowrightpremise5 = false;
      box_rightsecrowleftpremise5 = false;
      box_rightsecrowrightpremise5 = false;
      setState(() => position5 = Offset(width + 30, height + 15));
    }
    if (!box6_correct) {
      BoxLeftP6 = false;
      BoxMain6 = false;
      BoxRightP6 = false;
      box_leftsecrowleftpremise6 = false;
      box_leftsecrowrightpremise6 = false;
      box_rightsecrowleftpremise6 = false;
      box_rightsecrowrightpremise6 = false;
      setState(() => position6 = Offset(width + 30, height + 75));
    }
    if (!box7_correct) {
      BoxLeftP7 = false;
      BoxMain7 = false;
      BoxRightP7 = false;
      box_leftsecrowleftpremise7 = false;
      box_leftsecrowrightpremise7 = false;
      box_rightsecrowleftpremise7 = false;
      box_rightsecrowrightpremise7 = false;
      setState(() => position7 = Offset(width + 30, height + 135));
    }
    if (!box8_correct) {
      BoxLeftP8 = false;
      BoxMain8 = false;
      BoxRightP8 = false;
      box_leftsecrowleftpremise8 = false;
      box_leftsecrowrightpremise8 = false;
      box_rightsecrowleftpremise8 = false;
      box_rightsecrowrightpremise8 = false;
      setState(() => position8 = Offset(width + 30, height + 195));
    }
    if (box1_correct && box3_correct && box4_correct &&
        box5_correct && box6_correct && box7_correct && box8_correct) {
      _changed(false, "headingmain");
      _changed(true, "headingmaincorrect");
      _changed(false, "submit");
      _changed(false, "retry");
      _changed(true, "submitgreyy");
    } else {
      _changed(true, "headingmain");
      if (retrytimes == 1) {
        _showSnackBar("This was your 1st attempt out of 3");
        _changed(false, "retry");
        _changed(true, "submit");
      } else if (retrytimes == 2) {
        _showSnackBar("This was your 2nd attempt out of 3");
        _changed(false, "retry");
        _changed(true, "submit");
      }
      else if (retrytimes == 3) {
        _showSnackBar("This was your last attempt. You lose");
        _changed(false, "retry");
        _changed(false, "submit");
        _changed(true, "submitgreyy");
      }
    }
  }

  void submitgreymethod() {
  }

  void Submit() {
    if (!BoxMain1 && !BoxMain2 && !BoxMain3 && !BoxMain4 && !BoxMain5 &&
        !BoxMain6 && !BoxMain7 && !BoxMain8) {
      _showSnackBar("Please fill all the boxes");
    }
    else if (!BoxLeftP1 && !BoxLeftP2 &&
        !BoxLeftP3 && !BoxLeftP4 && !BoxLeftP5 && !BoxLeftP6 && !BoxLeftP7 &&
        !BoxLeftP8) {
      _showSnackBar("Please fill all the boxes");
    }
    else if (!BoxRightP1 && !BoxRightP2 && !BoxRightP3 && !BoxRightP4 &&
        !BoxRightP5 && !BoxRightP6 && !BoxRightP7 && !BoxRightP8) {
      _showSnackBar("Please fill all the boxes");
    }
    else if (!box_leftsecrowleftpremise1 && !box_leftsecrowleftpremise2 &&
        !box_leftsecrowleftpremise3 && !box_leftsecrowleftpremise4
        && !box_leftsecrowleftpremise5 && !box_leftsecrowleftpremise6 &&
        !box_leftsecrowleftpremise7 && !box_leftsecrowleftpremise8) {
      _showSnackBar("Please fill all the boxes");
    } else if (!box_leftsecrowrightpremise1 && !box_leftsecrowrightpremise2 &&
        !box_leftsecrowrightpremise3 && !box_leftsecrowrightpremise4
        && !box_leftsecrowrightpremise5 && !box_leftsecrowrightpremise6 &&
        !box_leftsecrowrightpremise7 && !box_leftsecrowrightpremise8) {
      _showSnackBar("Please fill all the boxes");
    } else if (!box_rightsecrowleftpremise1 && !box_rightsecrowleftpremise2 &&
        !box_rightsecrowleftpremise3 && !box_rightsecrowleftpremise4
        && !box_rightsecrowleftpremise5 && !box_rightsecrowleftpremise6 &&
        !box_rightsecrowleftpremise7 && !box_rightsecrowleftpremise8) {
      _showSnackBar("Please fill all the boxes");
    }
    else if (!box_rightsecrowrightpremise1 && !box_rightsecrowrightpremise2 &&
        !box_rightsecrowrightpremise3 && !box_rightsecrowrightpremise4
        && !box_rightsecrowrightpremise5 && !box_rightsecrowrightpremise6 &&
        !box_rightsecrowrightpremise7 && !box_rightsecrowrightpremise8) {
      _showSnackBar("Please fill all the boxes");
    }
    else {
      _changed(false, "heading1");
      _changed(false, "heading2");
      _changed(false, "submit");
      _changed(true, "retry");

      if (box1_correct && box3_correct && box4_correct &&
          box5_correct && box6_correct && box7_correct && box8_correct) {
        _changed(true, "headingmaincorrect");
        _changed(false, "headingmain");
        _changed(false, "submit");
        _changed(false, "retry");
        _changed(true, "submitgreyy");
      } else {
        _changed(true, "headingmain");
        _changed(false, "headingmaincorrect");
      }
    }
  }

  void config() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    SystemChrome.setEnabledSystemUIOverlays([]);
  }
}