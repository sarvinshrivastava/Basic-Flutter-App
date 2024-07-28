import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    var darkInd = const Color.fromARGB(255, 28, 132, 171);
    var textBlack = Color.fromARGB(255, 0, 0, 0);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Let's Connect",
            style: TextStyle(
              color: textBlack,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: darkInd,
        ),
        backgroundColor: darkInd,
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 75),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(95.0),
                  child: Image.asset(
                    'images/profile_photo.jpg',
                    width: 190,
                  ),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
              //   child: Text(
              //     "Hi, I'm a Unity-AR Developer!\nLearning Flutter now!",
              //     style: TextStyle(
              //       color: textBlack,
              //       fontSize: 25.0,
              //     ),
              //     textAlign: TextAlign.center,
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {
                          Clipboard.setData(
                              ClipboardData(text: "sarvin5124@gmail.com"));
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Email copied to clipboard!"),
                          ));
                        },
                        child: Image.asset("images/gmail.png", width: 50.0),
                      )),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () async {
                          if (await canLaunchUrl(
                              'https://www.linkedin.com/in/sarvin-shrivastava-493b20176/'
                                  as Uri)) {
                            await launchUrl(
                                'https://www.linkedin.com/in/sarvin-shrivastava-493b20176/'
                                    as Uri);
                          } else {
                            throw 'Could not launch!';
                          }
                        },
                        child: Image.asset("images/linkedin.png", width: 60.0),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
