// ignore_for_file: prefer_const_constructors

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

List voids = [
  {
    "Line1":
        "0- عندما ترتفع سيعرف أصدقاؤك من أنت، ولكن عندما تسقط ستعرف أنت من أصدقاؤك.",
    "Line2": " ",
  },
  {
    "Line1":
        " 1- إن تعليم الناس وتثقيفهم في حدّ ذاته ثروة كبيرة نعتز بها، فالعلم ثروة ونحن نبني المستقبل على",
    "Line2": " ",
  },
  {
    "Line1": " 2- لا يحزنك أنك فشلت ما دمت تحاول الوقوف على قدميك من جديد ",
    "Line2": " ",
  },
  // {
  //   "Line1": " 3- لا تتكلم وأنت غاضب، حتى لا تقول حديث تندم عليه طوال حياتك ",
  //   "Line2": " ",
  // },
  // {
  //   "Line1":
  //       " 4- قليل من العلم مع العمل به أنفع من كثير من العلم مع قلة العمل به ",
  //   "Line2": " ",
  // },
  // {
  //   "Line1":
  //
  //   "Line2": " ",
  // },
];

int myIndex = 0;

// changeIndex(String dirction) {
//   if (dirction == "right") {
//     setState(() {
//       if (myIndex == verse.length - 1) {
//         myIndex = 0;
//       } else {
//         myIndex++;
//       }
//     });
//   } else if (dirction == "left") {
//     setState(() {
//       if (myIndex == 0) {
//         myIndex = verse.length - 1;
//       } else {
//         myIndex--;
//       }
//     });
//   }
// }
class _Project1State extends State<Project1> {
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
              voids[myIndex]["Line1"],
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              voids[myIndex]["Line2"],
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
                    setState(() {
                      if (myIndex == 0) {
                        myIndex = voids.length - 1;
                      } else {
                        myIndex--;
                      }
                    });
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
                    setState(() {
                      if (myIndex == voids.length - 1) {
                        myIndex = 0;
                      } else {
                        myIndex++;
                      }
                    });
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
