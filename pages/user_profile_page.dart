import 'package:app_19b2/pages/latih1_page.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 60),
                  width: double.infinity,
                  height: 250,
                  child: Image.asset(
                    'assets/images/jpg/bg.jpg',
                    fit: BoxFit.cover,
                  )),
              Positioned(
                top: 190,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 5),
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage('assets/images/jpg/user.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Text(
                'Shakira',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Text(
                'Singer and Actor',
                style: TextStyle(fontSize: 24, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/images/png/facebook.png'),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/images/png/instagram.png'),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/images/png/twitter.png'),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/images/png/youtube.png'),
              ),
            ],
          ),
          Column(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Latih1Page();
                  }));
                },
                child: Text(
                  'Latih-1',
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),
              )
            ],
          )
        ],
      ),
    );
  }
}
