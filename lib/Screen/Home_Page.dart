import 'package:ecommerce_app_design/Widgets/items_stagered_gridview.dart';
import 'package:flutter/material.dart';
import '../SearchForm.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Container(
              height: 60,
              width: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  "assets/Rakibull.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Canada, Ottawa",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.expand_more_sharp,
                ),
                color: Colors.black,
                iconSize: 30,
              ),
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Container(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.dashboard_outlined,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img_bg_1.webp'),
                colorFilter: ColorFilter.mode(
                  Colors.white70,
                  BlendMode.screen,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SearchForm(),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/img_bg_2.webp"),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Stack(
                    children: const [
                      Positioned(
                        top: 50,
                        left: 30,
                        child: Text(
                          "15% for all items",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 70,
                        left: 30,
                        child: Text(
                          "for our regular",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 90,
                        left: 30,
                        child: Text(
                          "Coustomer",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    left: 30,
                  ),
                  child: Container(
                    child: Text(
                      "Popular Items",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                ItemsStaggeredGridView(),
                // ItemsCard(
                //   buttonText: '1000 TK',
                //   imageUrl: 'assets/img1.webp',
                //   title: 'Thanksful T-Shirt',
                //   height: 200,
                // ),
                // ItemsCard(
                //   buttonText: '',
                //   imageUrl: 'assets/img2.jpeg',
                //   title: '',
                //   height: 250,
                // ),
                // ItemsCard(
                //   buttonText: '',
                //   imageUrl: 'assets/img3.webp',
                //   title: '',
                //   height: 200,
                // ),
                // ItemsCard(
                //   buttonText: '',
                //   imageUrl: 'assets/img4.webp',
                //   title: '',
                //   height: 240,
                // ),
                // ItemsCard(
                //   buttonText: '',
                //   imageUrl: 'assets/img5.webp',
                //   title: '',
                //   height: 200,
                // ),
                // ItemsCard(
                //   buttonText: '',
                //   imageUrl: 'assets/img6.webp',
                //   title: '',
                //   height: 240,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
