import 'package:flutter/material.dart';
import 'qoute.dart' ;
import 'qoute_card.dart' ;

void main() {
  runApp(MaterialApp(
    home: QouteList(),
  ));
}


class QouteList extends StatefulWidget {
  @override
  _QouteListState createState() => _QouteListState();
}

class _QouteListState extends State<QouteList> {

   List<Quote> qoutes = [
     Quote(author:'Oscar Wilde'  , text:'Be yourself , everyone else is already taken') ,
      Quote(author:"Oscar Wilde" , text:"I have nothing to declare  except my genius") ,
    Quote(author:"Oscar Wilde" , text:"The truth is rarely pure and never simple")
   ] ;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Qoutes' ,

         ),

        centerTitle: true ,
        backgroundColor: Colors.redAccent,
      ),

      body:Column(
        children:qoutes.map((qoute)=> QouteCard(
          quote:qoute,
          delete:(){
            setState(() {
              qoutes.remove(qoute);
            });
          }


        )).toList()


      ),
    );
  }
}






