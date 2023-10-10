import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["slider-1.jpg", "slider-2.jpg", "slider-3.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: PageView.builder(
         scrollDirection: Axis.horizontal,
           itemCount: images.length,
           itemBuilder: (_, index){
           return Container(
             width: double.maxFinite,
             height: double.maxFinite,
             decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage("assets/images/" + images[index]),
                 fit: BoxFit.cover)),
             child: Container(
               margin: const EdgeInsets.only(top: 80, left: 20, right: 20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       const Text(
                         'Find New Places', style: TextStyle(color: Colors.black54, fontSize: 25, fontWeight: FontWeight.bold),
                       ),
                       const SizedBox(
                         height: 10,
                       ),
                       Container(
                           width: 250,
                           child: const Text(
                             "Mountain hikes give you an incredible sense of freedom along with endurance tests.", style: TextStyle(color: Colors.black54, fontSize: 15),
                           )),
                       const SizedBox(
                         height: 15,
                       ),
                       ResponsiveButton(
                         width: 125,
                       ),
                     ],
                   ),
                   const SizedBox(
                     height: 30,
                   ),
                   Row(
                     children: List.generate(3, (indexDots) {
                       return Container(
                         margin: const EdgeInsets.only(right: 8),
                         width:  index==indexDots?25:8,
                         height: 10,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(50),
                             color: index==indexDots?Colors.black54:Colors.black54.withOpacity(0.3)
                         ),
                       );
                     }),
                   ),
                 ],
               ),
             ),
           );
           }),
    );
  }
}
