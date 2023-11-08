import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tvos_example/utils/app_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff09090C),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(
                "assets/svg/logo.svg",
              ),
            ),
          ),
          Stack(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/svg/search.svg",
                            color: const Color(0xffBABABA), width: 40),
                        SvgPicture.asset("assets/svg/home.svg",
                            color: const Color(0xffBABABA), width: 40),
                        SvgPicture.asset("assets/svg/movies.svg",
                            color: const Color(0xffBABABA), width: 40),
                        SvgPicture.asset("assets/svg/tv.svg",
                            color: const Color(0xffBABABA), width: 40),
                        SvgPicture.asset("assets/svg/favourite.svg",
                            color: const Color(0xffBABABA), width: 40),
                        SvgPicture.asset("assets/svg/profile.svg",
                            color: const Color(0xffBABABA), width: 40),
                        const SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(width: 50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 80),
                            child: Image.asset(
                              AppImages.johnWickTextImage,
                              width: 220,
                            ),
                          ),
                          const SizedBox(
                            width: 200,
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 36),
                              child: Text(
                                "Чтобы обрести свободу, киллер-изгой бросает вызов Правлению кланов. Самая зрелищная часть стильной экшен-саги",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                softWrap: true,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text("Смотреть"),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text("О фильме"),
                              ),
                            ],
                          )
                        ],
                      ),
                      Image.asset(
                        AppImages.johnWickImage,
                        height: 400,
                        width: 650,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
