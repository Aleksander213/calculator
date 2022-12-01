
import 'package:calculator/var.dart';
import 'package:flutter/material.dart';

const TextStyle atb = TextStyle(color: Colors.deepOrange);
const TextStyle btb = TextStyle(color: Colors.deepOrangeAccent);
class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);
  @override
  State<Calculator> createState() => _CalculatorState();

}
class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Container(alignment:Alignment.centerRight, child:
          Column(children:
          [
            const SizedBox(height: 30),
            Text(question + equation + question2, style: const TextStyle(fontSize: 28, color:Colors.orange)),
            const SizedBox(height: 20),
            Text(answer, style: const TextStyle(fontSize: 48, color: Colors.orange)),
          ],),),
          const SizedBox(height: 195),
          Container( alignment: Alignment.centerRight, child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30 ), padding: const EdgeInsets.fromLTRB(35, 25, 35, 25)), onPressed: () {
                setState(() {
                  question='';
                  question2='';
                  equation='';
                });
              }, child: const Text(style: atb,'C')),
              TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30), padding: const EdgeInsets.fromLTRB(35, 25, 35, 25)), onPressed: () {
                setState(() {
                  equation='/';
                });
              }, child: const Text(style: atb,'/')),
            ],),),
          Container(child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30), padding: const EdgeInsets.fromLTRB(35, 25, 35, 25)), onPressed: () {
                setState(() {
                  if (equation != '') {
                    question2+='7';
                  }
                  else {
                    question+='7';
                  }
                });
              }, child: const Text(style: btb,'7')),
              TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30), padding: const EdgeInsets.fromLTRB(35, 25, 35, 25)), onPressed: () {
                setState(() {
                  if (equation != '') {
                    question2+='8';
                  }
                  else {
                    question+='8';
                  }
                });
              }, child: const Text(style: btb,'8')),
              TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30), padding: const EdgeInsets.fromLTRB(35, 25, 35, 25)), onPressed: () {
                setState(() {
                  if (equation != '') {
                    question2+='9';
                  }
                  else {
                    question+='9';
                  }
                });
              }, child: const Text(style: btb,'9')),
              TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30), padding: const EdgeInsets.fromLTRB(35, 25, 35, 25)), onPressed: () {
                setState(() {
                  equation='x';
                });
              }, child: const Text(style: atb,'x')),
            ],),),
          Container(child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30), padding: const EdgeInsets.fromLTRB(35, 25, 35, 25)), onPressed: () {
              setState(() {
                if (equation != '') {
                  question2+='4';
                }
                else {
                  question+='4';
                }
              });
            }, child: const Text(style: btb,'4')),
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30), padding: const EdgeInsets.fromLTRB(35, 25, 35, 25)), onPressed: () {
              setState(() {
                if (equation != '') {
                  question2+='5';
                }
                else {
                  question+='5';
                }
              });
            }, child: const Text(style: btb,'5')),
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30), padding: const EdgeInsets.fromLTRB(35, 25, 35, 25)), onPressed: () {
              setState(() {
                if (equation != '') {
                  question2+='6';
                }
                else {
                  question+='6';
                }
              });
            }, child: const Text(style: btb,'6')),
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30), padding: const EdgeInsets.fromLTRB(35, 25, 35, 25)), onPressed: () {
              setState(() {
                equation='-';
              });
            }, child: const Text(style: atb,'-')),
          ],),),
          Container(child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30), padding: const EdgeInsets.fromLTRB(35, 25, 35, 25)), onPressed: () {
              setState(() {
                if (equation != '') {
                  question2+='1';
                }
                else {
                  question+='1';
                }
              });
            }, child: const Text(style: btb,'1')),
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30), padding: const EdgeInsets.fromLTRB(35, 25, 35, 25)), onPressed: () {
              setState(() {
                if (equation != '') {
                  question2+='2';
                }
                else {
                  question+='2';
                }
              });
            }, child: const Text(style: btb,'2')),
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30), padding: const EdgeInsets.fromLTRB(35, 25, 35, 25)), onPressed: () {
              setState(() {
                if (equation != '') {
                  question2+='3';
                }
                else {
                  question+='3';
                }
              });
            }, child: const Text(style: btb,'3')),
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30), padding: const EdgeInsets.fromLTRB(35, 25, 35, 25)), onPressed: () {
              setState(() {
                equation='+';
              });
            }, child: const Text(style: atb,'+')),
          ],),),
          Container(child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30), padding: const EdgeInsets.fromLTRB(45, 25, 45, 25)), onPressed: () {}, child: const Text('')),
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30), padding: const EdgeInsets.fromLTRB(35, 25, 35, 25)), onPressed: () {
              setState(() {
                if (equation != '') {
                  question2+='0';
                }
                else {
                  question+='0';
                }
              });
            }, child: const Text(style: btb,'0')),
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30), padding: const EdgeInsets.fromLTRB(45, 25, 45, 25)), onPressed: () {}, child: const Text('')),
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30), padding: const EdgeInsets.fromLTRB(35, 25, 35, 25)), onPressed: () {
              if (equation.contains('+')) {
                setState(() {
                  var a = int.parse(question);
                  var b = int.parse(question2);
                  answer = (a + b).toString();
                });
              }
              else if (equation == '-') {
                setState(() {
                  var a = int.parse(question);
                  var b = int.parse(question2);
                answer = (a - b).toString();
                });
              }
              else if (equation == 'x') {
                setState(() {
                  var a = int.parse(question);
                  var b = int.parse(question2);
                  answer = (a * b).toString();
                });
              }
              else if (equation == '/') {
                setState(() {
                  var a = int.parse(question);
                  var b = int.parse(question2);
                  answer = (a / b).toString();
                });
              }
            }, child: const Text(style: atb,'=')),

          ],),),
        ],),),);
  }
}