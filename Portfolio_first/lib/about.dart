import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,

      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.55),
        child: Column(
          children: [
            Text("Hello I am ", style: TextStyle(
                color: Colors.white,fontSize: 30
            ),),
            SizedBox(
              height: 10,
            ),
            Text("Himalay Gupta", style: TextStyle(
                color: Colors.white,fontSize: 40, fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 10,
            ),
            Text("Software developer",style: TextStyle(
                color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold
            ), ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 120,
              child: TextButton(onPressed: (){}, child: Text("Hire me "), style: TextButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: Colors.white
              ),)),
            SizedBox(
              height:40 ,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon: Icon(
                  FontAwesomeIcons.instagram, color: Colors.white,
                )),
                IconButton(onPressed: (){}, icon: Icon(
                  FontAwesomeIcons.github, color: Colors.white,
                )),
                IconButton(onPressed: (){}, icon: Icon(
                  FontAwesomeIcons.twitter, color: Colors.white,
                )),
                IconButton(onPressed: (){}, icon: Icon(
                  FontAwesomeIcons.facebook, color: Colors.white,
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
