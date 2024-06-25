import 'package:flutter/material.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  myAchiev(num, type) {
    return Row(
      children: [
        Text(num, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            type,
          ),
        )
      ],
    );
  }

  mySpec(icon, text) {
    return Container(
      width: 105,
      height: 115,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          color: Colors.black,
          icon: Icon(Icons.menu),
          itemBuilder: (context) => [
            PopupMenuItem(
                child: TextButton(
                  child:
                      Text("Projects", style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.pushNamed(context, "projects");
                  },
                ),
                value: 1),
            PopupMenuItem(
                child: TextButton(
                  child: Text(
                    "About Me",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "about");
                  },
                ),
                value: 2),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          alignment: Alignment.center,
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.49),
          child: Column(
            children: [
              Text(
                "Himalay Gupta",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Software developer",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            height: 500,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myAchiev('78', 'Projects'),
                  myAchiev('68', 'Client'),
                  myAchiev('98', 'Messages'),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Specialized In',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySpec(Icons.android, 'Android'),
                      mySpec(Icons.android, 'Android'),
                      mySpec(Icons.android, 'Android'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySpec(Icons.android, 'Android'),
                      mySpec(Icons.android, 'Android'),
                      mySpec(Icons.android, 'Android'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySpec(Icons.android, 'Android'),
                      mySpec(Icons.android, 'Android'),
                      mySpec(Icons.android, 'Android'),
                    ],
                  )
                ],
              )
            ]),
          );
        },
      ),
    );
  }
}
