import 'package:flutter/material.dart';

const activeColor = Color(0xff3A0CA3);
const inactiveColor = Color(0xffFFFFFF);
enum sel { eng, arb }

class Second extends StatefulWidget {
  //const Second({ Key? key }) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  Color tap = Color(0xffFFFFFF);
  Color untap = Color(0xff000000);

  Color english = inactiveColor;
  Color arabic = inactiveColor;
  void isSelceted(sel selected) {
    if (selected == sel.eng) {
      english = activeColor;
      tap = Color(0xffFFFFFF);
      arabic = inactiveColor;
      untap = Color(0xff000000);
    } else {
      arabic = activeColor;
      untap = Color(0xffFFFFFF);
      english = inactiveColor;
      tap = Color(0xff000000);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xffF2F2F2), Color(0xffE4D9FC)])),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(children: [
              SizedBox(
                height: 176,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelceted(sel.eng);
                      });
                    },
                    child: Container(
                      width: 156,
                      height: 156,
                      decoration: BoxDecoration(
                          color: english,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          "English",
                          style: TextStyle(
                              color: tap,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelceted(sel.arb);
                      });
                    },
                    child: Container(
                      width: 156,
                      height: 156,
                      decoration: BoxDecoration(
                          color: arabic,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          "العربية",
                          style: TextStyle(
                              color: untap,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  width: 170,
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey[400])),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.wb_sunny,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text("Light Mode")
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 144,
              ),
              Text("this is light mode")
            ])),
      ),
    );
  }
}
