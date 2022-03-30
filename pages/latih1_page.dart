import 'package:flutter/material.dart';

class Latih1Page extends StatelessWidget {
  const Latih1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Program pertamaku'),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton.icon(
              label: Text(
                'Back to',
              ),
              icon: Icon(Icons.arrow_back),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const Text('Ini bagian body scaffold'),
            const Text('Ini bagian body scaffold kedua'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Fera'),
                Text('Renaldy'),
              ],
            ),
            Image.network(
              'https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg',
              height: 100,
              width: 100,
            ),
            const CircleAvatar(
              backgroundColor: Colors.blueAccent,
              backgroundImage: NetworkImage(
                  'https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg'),
            ),
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              child: Text('isi content'),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(width: 4, color: Colors.amber),
                  borderRadius: BorderRadius.circular(30)),
            ),
            Stack(
              children: <Widget>[
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.red,
                  height: 400.0,
                  width: 300.0,
                ),
                Container(
                  color: Colors.deepPurple,
                  height: 200.0,
                  width: 200.0,
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
