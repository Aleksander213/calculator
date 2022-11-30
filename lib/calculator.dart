
import 'package:calculator/var.dart';
import 'package:flutter/material.dart';

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
            Text(question, style: const TextStyle(fontSize: 28, color:Colors.orange)),
            Text(equation, style: const TextStyle(fontSize: 28, color:Colors.orange)),
            Text(question2, style: const TextStyle(fontSize: 28, color:Colors.orange)),
            const SizedBox(height: 20),
            Text(answer, style: const TextStyle(fontSize: 48, color: Colors.orange)),
          ],),),
          const SizedBox(height: 220),
          Container( alignment: Alignment.centerRight, child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30)), onPressed: () {
                setState(() {
                  equation='';
                });
              }, child: const Text('')),
              TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30)), onPressed: () {
                setState(() {
                  question='';
                  question2='';
                  equation='';
                });
              }, child: const Text('C')),
              TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30)), onPressed: () {
                setState(() {
                  equation='/';
                });
              }, child: const Text('/')),
            ],),),
          Container(child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30)), onPressed: () {
                setState(() {
                  if (equation != '') {
                    question2+='7';
                  }
                  else {
                    question+='7';
                  }
                });
              }, child: const Text('7')),
              TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30)), onPressed: () {
                setState(() {
                  if (equation != '') {
                    question2+='8';
                  }
                  else {
                    question+='8';
                  }
                });
              }, child: const Text('8')),
              TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30)), onPressed: () {
                setState(() {
                  if (equation != '') {
                    question2+='9';
                  }
                  else {
                    question+='9';
                  }
                });
              }, child: const Text('9')),
              TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30)), onPressed: () {
                setState(() {
                  equation='X';
                });
              }, child: const Text('X')),
            ],),),
          Container(child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30)), onPressed: () {
              setState(() {
                if (equation != '') {
                  question2+='4';
                }
                else {
                  question+='4';
                }
              });
            }, child: const Text('4')),
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30)), onPressed: () {
              setState(() {
                if (equation != '') {
                  question2+='5';
                }
                else {
                  question+='5';
                }
              });
            }, child: const Text('5')),
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30)), onPressed: () {
              setState(() {
                if (equation != '') {
                  question2+='6';
                }
                else {
                  question+='6';
                }
              });
            }, child: const Text('6')),
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30)), onPressed: () {
              setState(() {
                equation='-';
              });
            }, child: const Text('-')),
          ],),),
          Container(child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30)), onPressed: () {
              setState(() {
                if (equation != '') {
                  question2+='1';
                }
                else {
                  question+='1';
                }
              });
            }, child: const Text('1')),
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30)), onPressed: () {
              setState(() {
                if (equation != '') {
                  question2+='2';
                }
                else {
                  question+='2';
                }
              });
            }, child: const Text('2')),
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30)), onPressed: () {
              setState(() {
                if (equation != '') {
                  question2+='3';
                }
                else {
                  question+='3';
                }
              });
            }, child: const Text('3')),
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30)), onPressed: () {
              setState(() {
                equation='+';
              });
            }, child: const Text('+')),
          ],),),
          Container(child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30)), onPressed: () {}, child: const Text('')),
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30)), onPressed: () {
              setState(() {
                if (equation != '') {
                  question2+='0';
                }
                else {
                  question+='0';
                }
              });
            }, child: const Text('0')),
            TextButton(style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 30,)), onPressed: () {
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
              else if (equation == 'X') {
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
            }, child: const Text('=')),

          ],),),
        ],),),);
  }
}