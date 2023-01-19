import 'dart:math';

import 'package:flutter/material.dart';

void main()
{

  runApp(MaterialApp(home:demo() ,debugShowCheckedModeBanner: false,));
}
class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  List ans = ["", "", "", "", "", "", "", "", ""];
  int cnt = 0;
  String d="";
  List <bool> t = [true, true, true, true, true, true, true, true, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Tic Tac Toe", style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: Colors.white),),
      backgroundColor: Colors.black,
      centerTitle: true,),
        backgroundColor: Colors.brown,
        body: Container(child: Column(children: [
          Expanded(child: Container(child:
          Row(children: [
            Expanded(child: InkWell(onTap: () => (t[0] == true) ? fun(0) : null,
                child: Container(alignment: Alignment.center,
                  height: double.infinity,
                  child: Text("${ans[0]}", style: TextStyle(fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),),
                  decoration: BoxDecoration(gradient: (ans[0] == "0")
                      ? LinearGradient(colors: [
                    Color(0xFF0F2027),
                    Color(0xFF203A43),
                    Color(0xFF2C5364)
                  ])
                      : LinearGradient(colors: [
                    Color(0xFF0f0c29),
                    Color(0xFF302b63),
                    Color(0xFF24243e)
                  ]),
                      borderRadius: (ans[0] == "0")
                          ? BorderRadius.circular(3)
                          : BorderRadius.circular(10),
                      border: Border.all(width: 5,
                          color: (ans[0] == "0") ? Colors.black : Colors
                              .white)),)),),
            Expanded(child: InkWell(onTap: () => (t[1] == true) ? fun(1) : null,
                child: Container(alignment: Alignment.center,
                  height: double.infinity,
                  child: Text("${ans[1]}", style: TextStyle(fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
                  decoration: BoxDecoration(gradient: (ans[1] == "0")
                      ? LinearGradient(colors: [
                    Color(0xFF0F2027),
                    Color(0xFF203A43),
                    Color(0xFF2C5364)
                  ])
                      : LinearGradient(colors: [
                    Color(0xFF0f0c29),
                    Color(0xFF302b63),
                    Color(0xFF24243e)
                  ]),
                      borderRadius: (ans[1] == "0")
                          ? BorderRadius.circular(3)
                          : BorderRadius.circular(10),
                      border: Border.all(width: 5,
                          color: (ans[1] == "0") ? Colors.black : Colors
                              .white)),)),),
            Expanded(child: InkWell(onTap: () => (t[2] == true) ? fun(2) : null,
                child: Container(alignment: Alignment.center,
                  height: double.infinity,
                  child: Text("${ans[2]}", style: TextStyle(fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
                  decoration: BoxDecoration(gradient: (ans[2] == "0")
                      ? LinearGradient(colors: [
                    Color(0xFF0F2027),
                    Color(0xFF203A43),
                    Color(0xFF2C5364)
                  ])
                      : LinearGradient(colors: [
                    Color(0xFF0f0c29),
                    Color(0xFF302b63),
                    Color(0xFF24243e)
                  ]),
                    borderRadius: (ans[2] == "0")
                        ? BorderRadius.circular(3)
                        : BorderRadius.circular(10),
                    border: Border.all(width: 5,
                        color: (ans[2] == "0") ? Colors.black : Colors.white),),
                )),),

          ]),)),
          Expanded(child: Container(child:
          Row(children: [
            Expanded(child: InkWell(onTap: () => (t[3] == true) ? fun(3) : null,
                child: Container(alignment: Alignment.center,
                  height: double.infinity,
                  child: Text("${ans[3]}", style: TextStyle(fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),),
                  decoration: BoxDecoration(gradient: (ans[3] == "0")
                      ? LinearGradient(colors: [
                    Color(0xFF0F2027),
                    Color(0xFF203A43),
                    Color(0xFF2C5364)
                  ])
                      : LinearGradient(colors: [
                    Color(0xFF0f0c29),
                    Color(0xFF302b63),
                    Color(0xFF24243e)
                  ]),
                      borderRadius: (ans[3] == "0")
                          ? BorderRadius.circular(3)
                          : BorderRadius.circular(10),
                      border: Border.all(width: 5,
                          color: (ans[3] == "0") ? Colors.black : Colors
                              .white)),
                )),),
            Expanded(child: InkWell(onTap: () => (t[4] == true) ? fun(4) : null,
                child: Container(alignment: Alignment.center,
                  height: double.infinity,
                  child: Text("${ans[4]}", style: TextStyle(fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
                  decoration: BoxDecoration(gradient: (ans[4] == "0")
                      ? LinearGradient(colors: [
                    Color(0xFF0F2027),
                    Color(0xFF203A43),
                    Color(0xFF2C5364)
                  ])
                      : LinearGradient(colors: [
                    Color(0xFF0f0c29),
                    Color(0xFF302b63),
                    Color(0xFF24243e)
                  ]),
                      borderRadius: (ans[4] == "0")
                          ? BorderRadius.circular(3)
                          : BorderRadius.circular(10),
                      border: Border.all(width: 5,
                          color: (ans[4] == "0") ? Colors.black : Colors
                              .white)),
                )),),
            Expanded(child: InkWell(onTap: () => (t[5] == true) ? fun(5) : null,
                child: Container(alignment: Alignment.center,
                  height: double.infinity,
                  child: Text("${ans[5]}", style: TextStyle(fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
                  decoration: BoxDecoration(gradient: (ans[5] == "0")
                      ? LinearGradient(colors: [
                    Color(0xFF0F2027),
                    Color(0xFF203A43),
                    Color(0xFF2C5364)
                  ])
                      : LinearGradient(colors: [
                    Color(0xFF0f0c29),
                    Color(0xFF302b63),
                    Color(0xFF24243e)
                  ]),
                      borderRadius: (ans[5] == "0")
                          ? BorderRadius.circular(3)
                          : BorderRadius.circular(10),
                      border: Border.all(width: 5,
                          color: (ans[5] == "0") ? Colors.black : Colors
                              .white)),)),),

          ]),)),
          Expanded(child: Container(child:
          Row(children: [
            Expanded(child: InkWell(onTap: () => (t[6] == true) ? fun(6) : null,
                child: Container(alignment: Alignment.center,
                  height: double.infinity,
                  child: Text("${ans[6]}", style: TextStyle(fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),),
                  decoration: BoxDecoration(gradient: (ans[6] == "0")
                      ? LinearGradient(colors: [
                    Color(0xFF0F2027),
                    Color(0xFF203A43),
                    Color(0xFF2C5364)
                  ])
                      : LinearGradient(colors: [
                    Color(0xFF0f0c29),
                    Color(0xFF302b63),
                    Color(0xFF24243e)
                  ]),
                      borderRadius: (ans[6] == "0")
                          ? BorderRadius.circular(3)
                          : BorderRadius.circular(10),
                      border: Border.all(width: 5,
                          color: (ans[6] == "0") ? Colors.black : Colors
                              .white)),
                )),),
            Expanded(child: InkWell(onTap: () => (t[7] == true) ? fun(7) : null,
                child: Container(alignment: Alignment.center,
                  height: double.infinity,
                  child: Text("${ans[7]}", style: TextStyle(fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
                  decoration: BoxDecoration(gradient: (ans[7] == "0")
                      ? LinearGradient(colors: [
                    Color(0xFF0F2027),
                    Color(0xFF203A43),
                    Color(0xFF2C5364)
                  ])
                      : LinearGradient(colors: [
                    Color(0xFF0f0c29),
                    Color(0xFF302b63),
                    Color(0xFF24243e)
                  ]),
                      borderRadius: (ans[7] == "0")
                          ? BorderRadius.circular(3)
                          : BorderRadius.circular(10),

                      border: Border.all(width: 5,
                          color: (ans[7] == "0") ? Colors.black : Colors
                              .white
                      )),
                )),),
            Expanded(child: InkWell(onTap: () => (t[8] == true) ? fun(8) : null,
                child: Container(alignment: Alignment.center,

                  height: double.infinity,

                  child: Text("${ans[8]}", style: TextStyle(fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
                  decoration: BoxDecoration(gradient: (ans[8] == "0")
                      ? LinearGradient(colors: [
                    Color(0xFF0F2027),
                    Color(0xFF203A43),
                    Color(0xFF2C5364)
                  ])
                      : LinearGradient(colors: [
                    Color(0xFF0f0c29),
                    Color(0xFF302b63),
                    Color(0xFF24243e)
                  ]),
                      borderRadius: (ans[8] == "0")
                          ? BorderRadius.circular(3)
                          : BorderRadius.circular(10),
                      border: Border.all(width: 5,
                          color: (ans[8] == "0") ? Colors.black : Colors
                              .white)),
                )),),

          ]),)),
        ]),)
    );
  }

  fun(int a) {
    setState(() {
      t[a] = false;

      while(true)
        {
          int r=Random().nextInt(9);
          if(ans[r]=="")
            {
              ans[r]="X";
              cnt++;
              break;
            }
        }
        ans[a]="0";
      cnt++;
      // if (cnt % 2 == 0) {
      //   ans[a] = "0";
      // }
      // else {
      //   ans[a] = "X";
      // }
      // cnt++;
      checkwin(ans[0], ans[1], ans[2], "0");
      checkwin(ans[0], ans[1], ans[2], "X");
      checkwin(ans[0], ans[3], ans[6], "0");
      checkwin(ans[0], ans[3], ans[6], "X");
      checkwin(ans[3], ans[4], ans[5], "0");
      checkwin(ans[3], ans[4], ans[5], "X");
      checkwin(ans[6], ans[7], ans[8], "0");
      checkwin(ans[6], ans[7], ans[8], "X");
      checkwin(ans[1], ans[4], ans[7], "0");
      checkwin(ans[1], ans[4], ans[7], "X");
      checkwin(ans[2], ans[5], ans[8], "0");
      checkwin(ans[2], ans[5], ans[8], "X");
      checkwin(ans[3], ans[4], ans[5], "0");
      checkwin(ans[3], ans[4], ans[5], "X");
      checkwin(ans[0], ans[4], ans[8], "0");
      checkwin(ans[0], ans[4], ans[8], "X");
      checkwin(ans[2], ans[4], ans[7], "0");
      checkwin(ans[2], ans[4], ans[7], "X");




    });
  }

  checkwin(String a,String b,String c,d)
  {
    setState(() {
      if(a==d && b==d && c==d)
        {
          print("player $d is win");
          t[0]=false;
          t[1]=false;
          t[2]=false;
          t[3]=false;
          t[4]=false;
          t[5]=false;
          t[6]=false;
          t[7]=false;
          t[8]=false;
        }
    });
  }

}
