import 'package:flutter/material.dart';
import 'package:statueist/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  label: const Text('Enter the statue name or its part'),
                  filled: true,
                  fillColor: AppColors.color2,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  )
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      width: 170,
                      decoration: BoxDecoration(
                        color: AppColors.color4
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Icon(Icons.camera_alt, size: 50,),
                            SizedBox(height: 20,),
                            Text('SCAN STATUE', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      width: 170,
                      decoration: BoxDecoration(
                        color: AppColors.color5
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Icon(Icons.upload, size: 50,),
                            SizedBox(height: 20,),
                            Text('UPLOAD PHOTO', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('STATUES AROUND YOU', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                height: 320,
                width: 300,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 3.0
                    )
                  ),
                  child: Image.asset(
                    'assets/map_photo.png',
                  )
                )
              )
            ],
          )
        ),
      ),
    );
  }
}