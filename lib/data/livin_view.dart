import 'package:flutter/material.dart';

class LivinView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/logo_livin.jpg"),
          fit: BoxFit.fitWidth,
        ),
      ),
      padding: EdgeInsets.only(left: 50.8, right: 58.0),
      child: Column(
        children: [
          SizedBox(height: 500),
          basicButton("Login", Icons.fingerprint),
          SizedBox(height: 25),
          buildFooter()
        ],
      ),
    );
  }
  Widget basicButton(String text, IconData icon){
    return Material(
      elevation: 3.0,
      borderRadius: BorderRadius.circular(45.0),
      color: Color(0xFF2881FF),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 28.0, 15.0),
        onPressed: () { },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.fingerprint, color: Colors.white, size: 27,),
            SizedBox(width: 5.0),
            buildText(text),
          ],
        ),
      ),
    );
  }
  Widget buildFooter(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildFooterButtom(
            "Tarik Tunai",
            Icon(Icons.credit_card, color: Colors.white),
            Colors.purple
        ),
        buildFooterButtom(
            "Tarik Tunai",
            Icon(Icons.stop_circle, color: Colors.white),
            Colors.orange
        ),
        buildFooterButtom(
            "Tarik Tunai",
            Icon(Icons.bolt_outlined, color: Colors.white),
            Colors.yellow
        ),
        buildFooterButtom(
            "Tarik Tunai",
            Icon(Icons.qr_code_outlined, color: Colors.white),
            Colors.blue
        ),
      ],
    );
  }
  Widget buildFooterButtom(String text, Icon icon, Color color){
    return Column(
      children: [
        circleButton(
          icon,
          color,
        ),
        SizedBox(height: 10.0),
        buildText(text)
      ],
    );
  }

  Widget circleButton(Icon icon, Color color){
    return RawMaterialButton(onPressed: (){},
        elevation: 2.0,
        fillColor: color,
        child: icon,
        padding: EdgeInsets.all(12.0),
        shape: CircleBorder());
  }

  Widget buildText(String text){
    return Text(text,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 12.0, color: Colors.black,
            fontWeight: FontWeight.bold
        ));
  }
}