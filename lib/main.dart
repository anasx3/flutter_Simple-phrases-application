import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Project1(),
    );
  }
}

class Project1 extends StatefulWidget {
  const Project1({Key? key}) : super(key: key);

  @override
  _Project1State createState() => _Project1State();
}

class _Project1State extends State<Project1> {
  List verse = [
    {
      "line1":
          "0- عندما ترتفع سيعرف أصدقاؤك من أنت، ولكن عندما تسقط ستعرف أنت من أصدقاؤك.",
      "line2": ""
    },
    {
      "line1":
          " 1- إن تعليم الناس وتثقيفهم في حدّ ذاته ثروة كبيرة نعتز بها، فالعلم ثروة ونحن نبني المستقبل على",
      "line2": ""
    },
    {
      "line1": " 2- لا يحزنك أنك فشلت ما دمت تحاول الوقوف على قدميك من جديد ",
      "line2": "",
    },
    {
      "line1": " 3- لا تتكلم وأنت غاضب، حتى لا تقول حديث تندم عليه طوال حياتك ",
      "line2": "",
    },
    {
      "line1":
          " 4- قليل من العلم مع العمل به أنفع من كثير من العلم مع قلة العمل به ",
      "line2": "",
    },
    {
      "line1":
          " 5-لكي لا تخسر نفسك لا تقلّد غيركَ، لا تقارن حياتك بالآخرين، لا تتحدّى إلّاّ ذاتك، ولا تنتقد أمراً وأنتَ لم تجرّبه.",
      "line2": ""
    },
  ];

  int myIndex = 0;

  changeIndex(String dirction) {
    switch (dirction) {
      case "right":
        setState(() {
          if (myIndex == verse.length - 1) {
            myIndex = 0;
          } else {
            myIndex++;
          }
        });
        break;

      case "left":
        setState(() {
          if (myIndex == 0) {
            myIndex = verse.length - 1;
          } else {
            myIndex--;
          }
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              verse[myIndex]["line1"],
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              verse[myIndex]["line2"],
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    changeIndex("left");
                  },
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.arrow_left,
                    size: 60,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                FloatingActionButton(
                  onPressed: () {
                    changeIndex("right");
                  },
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.arrow_right,
                    size: 60,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
