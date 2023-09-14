import 'package:flutter/material.dart';
import 'package:task2_icthub/screens/screen2_screen.dart';

import '../widgets/activity_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    'Choose Activity',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 500,
              margin: const EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: activityList.length,
                  itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: ListTile(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                          builder: (context) => Screen2(txt: activityList[index].name),
                        )
                        );
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      iconColor: Colors.deepPurple,
                      leading: Icon(activityList[index].icon),
                      title: Text(activityList[index].name),
                      subtitle: Text(activityList[index].description),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      tileColor: Colors.grey,
                    ),
                  );
                  },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

