import 'package:flutter/material.dart';


class BasicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
    final subtitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              _createImage(),
              _rendertitle(titleStyle,subtitleStyle),
              _renderActions(),
              _renderInfo(),
              _renderInfo(),
              _renderInfo(),

            ],
          ),
        ),

    );
  }


  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
            image: NetworkImage('https://theusbport.com/wp-content/uploads/2019/08/lamborghini-aventator-for-rent-696x426.jpg'),
            height: 200.0,
            fit: BoxFit.cover,
        ),
    );
  }

  Widget _rendertitle(TextStyle titleStyle, TextStyle subtitleStyle ) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('lamborguini', style: titleStyle,),
                  SizedBox(height: 7.0),
                  Text('This car has a poweful...', style: subtitleStyle,),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0,),
            Text('41', style: TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }

  Widget _renderActions() {
    return Row(
      /*mainAxisAlignment inside a Row is the way how it can be sort horizontally*/
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _actions( Icons.call, 'CALL'),
        _actions( Icons.near_me, 'ROUTE'),
        _actions( Icons.share, 'SHARE'),
      ],
    );
  }


  Widget _actions(IconData icon, String text) {

    return   Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
    );

  }

  Widget _renderInfo() {
    return SafeArea(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 0.0),
          child:
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          textAlign: TextAlign.justify
          ),
      ),
    );
  }

}


