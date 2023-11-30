import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white.withOpacity(.1),
        //   title: Text('TikerSpace'),
        // ),
        body: Stack(children: [
      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/tinker.jpg'),
          ),
        ),
        foregroundDecoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5), // Adjust the opacity as needed
          backgroundBlendMode:
              BlendMode.darken, // Apply blending mode to darken the image
        ),
      ),
      Positioned(
          child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.black12.withOpacity(.25),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'TinkerSpace',
                    style: GoogleFonts.raleway(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70),
                  ),
                ],
              ))),
      Positioned(
        bottom: 120,
        left: 40,
        // child: Transform.rotate(
        // angle: 1.57079635 * 3,
        child: Container(
          height: _height * .2,
          width: _height * .4,
          child: Card(
            color: Colors.white.withOpacity(.45),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'TinkerSpace',
                  style: GoogleFonts.raleway(
                      fontSize: 26, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Please mark your attendance on each visit',
                  style: GoogleFonts.raleway(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 22,
                ),
                GestureDetector(
                  onTap: () {
                    print('clicked');
                    final url = Uri.parse(
                        'https://airtable.com/appbxmW5WpSo4JnAW/shr9Y1BbsZ8iVV3cg');
                    launchUrl(url);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Colors.black, width: 1.5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Mark your attendance',
                        style: GoogleFonts.raleway(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ]));
  }
}
