import 'package:flutter/material.dart';
import 'secondPage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String buttonText = 'Elevated Button';
  int index = 0;
  var listName = ['Hi,', 'how', 'are', 'U', '?'];

  var darkInd = const Color.fromARGB(255, 28, 132, 171);
  var textBlack = Color.fromARGB(255, 0, 0, 0);
  var iceBlue = const Color.fromARGB(255, 148, 226, 255);
  var greyedOut = const Color.fromARGB(125, 0, 00, 00);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Test App',
          style: TextStyle(
            color: textBlack,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: darkInd,
      ),
      body: Center(
        child: index == 0
            ? Stack(
          children: [
            Container(
              width: double.infinity,
              color: darkInd,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 140.0),
                    child: Text(
                      "(～￣▽￣)～",
                      style: TextStyle(
                        color: textBlack,
                        fontSize: 35.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        backgroundColor: iceBlue,
                        foregroundColor: textBlack,
                      ),
                      onPressed: () {
                        setState(() {
                          buttonText = (listName..shuffle()).first;
                        });
                      },
                      child: Text(
                        buttonText,
                        style: const TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: ClipOval(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(15),
                    backgroundColor: iceBlue,
                    foregroundColor: textBlack,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const SecondPage();
                        }));
                  },
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    size: 30.0,
                  ),
                ),
              ),
            ),
          ],
        )
            : SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image.asset(
                        'images/Gemini_Generated_Image.jpeg',
                        width: 250,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: Image.asset(
                      'images/a-futuristic-bike-parked-in-a-20-car-garage-882134212.png',
                      width: 250,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: Image.asset(
                      'images/all-the-generations-of-mustang-parked-in-a-parking-lot-525229005.png',
                      width: 250,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: Image.asset(
                      'images/Gemini_Generated_Image_discord bot logo3.jpeg',
                      width: 250,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: iceBlue,
          selectedItemColor: textBlack,
          unselectedItemColor: greyedOut,
          selectedIconTheme: IconThemeData(size: 25),
          unselectedIconTheme: IconThemeData(size: 23),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 24.0,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.image,
                size: 24.0,
              ),
              label: 'Images',
            )
          ],
          currentIndex: index,
          onTap: (int indx) {
            setState(() {
              index = indx;
            });
          },
        ),
    );
  }
}