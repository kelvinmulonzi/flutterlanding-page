import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap: (){
          Get.back();
        },child: const Icon(Icons.arrow_back)),

        title: const Text('Landing Page'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/titlename.png'),
              Image.asset('assets/hero.png'),
              Text(
                "Team up with your friends ",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text(
                "Create a room and invite your friends to play games together",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),

              SizedBox(
                width: 300,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: const Text('Next'),
                  backgroundColor: Colors.cyanAccent
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 300,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: const Text('Skip'),
                    backgroundColor: Colors.cyanAccent,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}