import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toucan/widgets/app_buttons.dart';
import 'package:toucan/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/paris.jpg"),
                    fit: BoxFit.cover
                  ),
                ),
                ),
              ),
            Positioned(
              left: 20,
              top: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment :CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                    color: Colors.white,
                  ),
                  const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Positioned(
                top:320,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Yosemite', style: TextStyle(color: Colors.black54, fontSize: 25, fontWeight: FontWeight.bold),),
                          Text('\$250', style: TextStyle(color: Colors.indigoAccent, fontSize: 20, fontWeight: FontWeight.bold),)
                        ],
                      ),
                      const SizedBox(height: 10,),
                      const Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.indigoAccent, size: 12,),
                          Text("USA, California", style: TextStyle(color: Colors.black45, fontSize: 12),)
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index){
                                return const Icon(Icons.star, color: Colors.amber,);
                              }),
                          ),
                          Text("(5.0)", style: TextStyle(color: Colors.black45, fontSize: 12),)
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "People", style: TextStyle(color: Colors.black45, fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Number of people in your group", style: TextStyle(color: Colors.black45, fontSize: 12,),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Wrap(
                        children: List.generate(5, (index) {
                          return Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: AppButtons(
                                size: 50,
                                color: Colors.black45,
                                backgroundColor: Colors.blueGrey.shade50,
                                borderColor: Colors.blueGrey.shade50,
                                text:(index+1).toString(),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 20,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description", style: TextStyle(color: Colors.black45, fontSize: 20, fontWeight: FontWeight.bold),),
                          const SizedBox(height: 5,),
                          Text("Yosemite national park is located in central Sierra Nevada in the US state of California. It is located near the wild protected areas.",
                          style: TextStyle(color: Colors.black38, fontSize: 15),)
                        ],
                      ),
                      const SizedBox(height: 20,),

                    ],
                  ),
            ),
            ),
            Positioned(
              bottom: 15,
                left: 20,
                right: 20,
                child: Row(
              children: [
                AppButtons(
                    size: 50,
                    color: Colors.black45,
                    backgroundColor: Colors.white,
                    borderColor: Colors.black45,
                    isIcon: true,
                    icon:Icons.favorite_border
                ),
                SizedBox(width: 10,),
                ResponsiveButton(
                  isResponsive: true,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
