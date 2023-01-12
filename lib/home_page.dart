import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> profileImages = [
    "images1.jpg",
    "images2.jpg",
    "images3.jpg",
    "images4.jpg",
    "images5.jpg",
    "images6.jpg",
    "images7.jpg",
    "images8.jpg",
  ];
  List<String> posts =[
    "images1.jpg",
    "images2.jpg",
    "images3.jpg",
    "images4.jpg",
    "images5.jpg",
    "images6.jpg",
    "images7.jpg",
    "images8.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/2560px-Instagram_logo.svg.png",
        // title: Image.asset("assets/logo.png"),
        height: 50,
        // width: 130,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.messenger_outline_sharp),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: (){},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: (
                Row(
                  children: List.generate(8,
                   (index) => Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                        backgroundColor: Colors.pink,
                        child: CircleAvatar(
                          radius: 32,
                          backgroundImage: AssetImage(profileImages[index],
                        ),
                        ),    
                        ),
                        SizedBox(height: 10,),
                        Text("profile Name",
                        style: TextStyle(fontSize: 12,
                        color: Colors.black),),
                      ],
                    ),
                   ),
                   ),
                )
              ),
            ),
            Divider(),
            Column(
              children: List.generate(8, (index) => 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child:CircleAvatar(
                          radius: 12,
                        backgroundColor: Colors.pink,
                        child: CircleAvatar(
                          radius: 32,
                          backgroundImage: AssetImage(profileImages[index],
                        ),
                        ),    
                        ),
                  ),
                  Text("Profile Name"),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                  onPressed: (){},
                  ),
                ],
                ),
                Image.asset(posts[index]),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite_border),onPressed: (){},
                    ),
                     IconButton(
                      icon: Icon(Icons.share),onPressed: (){},
                    ),
                     IconButton(
                      icon: Icon(Icons.messenger_outline),onPressed: (){},
                    ),
                    Spacer(),
                     IconButton(
                      icon: Icon(Icons.bookmark_border),onPressed: (){},
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: "liked by"),
                              TextSpan(text: "profile Name",
                               style: TextStyle(fontWeight: FontWeight.bold,
                              )
                              ),
                              TextSpan(text: "and"),
                              TextSpan(
                              text: ""),
                              TextSpan(text: "Others",
                               style: TextStyle(fontWeight: FontWeight.bold,
                              )
                              ),
                          ],
                        ),
                        
                      )
                    ],
                  ),
                )
              ],
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}