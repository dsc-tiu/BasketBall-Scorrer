
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:Sam()
));
class Sam extends StatefulWidget {
  @override
  _SamState createState() => _SamState();
}

class _SamState extends State<Sam> {
  var sum=0,sum1=0;
  void a()
  {
    setState(() {
     sum=sum+5;
    });
  }
  void b()
  {
    setState(() {
      sum1=sum1+5;
    });
  }
  void c()
  {
    setState(() {
      sum=sum+3;
    });
  }
  void d()
  {
    setState(() {
      sum1=sum1+3;
    });
  }
  void e()
  {
    setState(() {
      sum=sum+2;
    });
  }
  void f()
  {
    setState(() {
      sum1=sum1+2;
    });
  }
  void g()
  {
    setState(() {
      sum=0;
      sum1=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Football',
        ),
      ) ,
      body:Column(


         children: <Widget>
         [
            Padding(
              padding: const EdgeInsets.only(bottom:20.0),
              child: Image(image:AssetImage('images/Basketball.jpeg'),
                width: 100,
                height: 100,
              ),
            ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'TEAM A',

                style: TextStyle(

                  fontSize: 20,
                 color: Colors.red
                ) ,
              ),

              Text('TEAM B',
                style: TextStyle(

                    fontSize: 20,
                    color: Colors.red
                ) ,
              )
            ],
          ),
             Padding(padding:EdgeInsets.fromLTRB(0, 5, 0, 5),
             child:Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget>[
                 FlatButton(onPressed:a,
                     color: Colors.green,
                   child:Text('5 points',
                     style: TextStyle(

                         fontSize: 20,
                         color: Colors.red
                     ) ,)
                 ),
                 FlatButton(onPressed: b,
                     color: Colors.green,
                     child:Text('5 points', style: TextStyle(

                     fontSize: 20,
                     color: Colors.red
                 ) ,)
                 ),
               ],
             ),
    ),
           Padding(padding:EdgeInsets.fromLTRB(0, 5, 0, 5),
             child:Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget>[
                 FlatButton(onPressed:c,
                     color: Colors.green,
                     child:Text('3 points',
                       style: TextStyle(

                           fontSize: 20,
                           color: Colors.red
                       ) ,)
                 ),
                 FlatButton(onPressed:d,
                     color: Colors.green,
                     child:Text('3 points', style: TextStyle(

                         fontSize: 20,
                         color: Colors.red
                     ) ,)
                 ),
               ],
             ),
           ),
           Padding(padding:EdgeInsets.fromLTRB(0, 5, 0, 5),
             child:Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget>[
                 FlatButton(onPressed:e,
                     color: Colors.green,
                     child:Text('2 points',
                       style: TextStyle(

                           fontSize: 20,
                           color: Colors.red
                       ) ,)
                 ),
                 FlatButton(onPressed:f,
                     color: Colors.green,
                     child:Text('2 points', style: TextStyle(

                         fontSize: 20,
                         color: Colors.red
                     ) ,)
                 ),
               ],
             ),
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[

               Text('$sum',
    style: TextStyle(

    fontSize: 20,
    color: Colors.red
    )),
               Text('$sum1',
                   style: TextStyle(

                       fontSize: 20,
                       color: Colors.red
                   )),
             ],
           ),
           Padding(
             padding: const EdgeInsets.only(top:16.0),
             child: Center(
               child: FlatButton(onPressed: g,
                   color: Colors.green,
                   child:Text('REFRESH',
                     style: TextStyle(

                         fontSize: 20,
                         color: Colors.red
                     ) ,)
               ),
             ),
           ),
        ],

      )
    );
  }
}


