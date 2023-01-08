import 'package:carousel_slider/carousel_slider.dart';

import '../../components/gridview.dart';
import '../../general_exports.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentindex = 0;
  List<Widget> pages = <Widget>[
    const HomePage(),
    const Center(child: Text('Bookings Page')),
    const Center(child: Text('Wallet Page')),
    const Center(child: Text('Profile Page'))
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.deepPurpleAccent,
          currentIndex: currentindex,
          onTap: (int value) {
            setState(
              () {
                currentindex = value;
              },
            );
          },
          items: const [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 6),
                child: Icon(Icons.grid_view_rounded),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 6),
                child: Icon(Icons.view_timeline_rounded),
              ),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 6),
                child: Icon(Icons.account_balance_wallet_rounded),
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 6),
                child: Icon(Icons.person_rounded),
              ),
              label: 'Profile',
            ),
          ],
        ),
        body: pages[currentindex],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (HomeController controller) {
        return SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: DEVICE_HEIGHT * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: DEVICE_WIDTH * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius:
                                BorderRadius.circular(DEVICE_WIDTH * 0.04),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(DEVICE_WIDTH * 0.02),
                            child: Image.asset(imagePerson),
                          ),
                        ),
                        SizedBox(width: DEVICE_WIDTH * 0.03),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Hi, Harry',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: DEVICE_WIDTH * 0.06,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                const Icon(
                                  Icons.location_on,
                                ),
                                SizedBox(
                                  width: DEVICE_WIDTH * 0.01,
                                ),
                                Text(
                                  'Ayodhya Nagar, Bhopal',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: DEVICE_WIDTH * 0.03,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius:
                            BorderRadius.circular(DEVICE_WIDTH * 0.02),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(DEVICE_WIDTH * 0.02),
                        child: const Icon(
                          Icons.notifications_rounded,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: DEVICE_HEIGHT * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: DEVICE_HEIGHT * 0.03),
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: 'Search for services',
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(DEVICE_WIDTH * 0.05),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(DEVICE_WIDTH * 0.05),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: DEVICE_HEIGHT * 0.01,
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                  onPageChanged: controller.onPageUpdated,
                  aspectRatio: 16 / 8,
                  disableCenter: true,
                  initialPage: 1,
                ),
                itemCount: controller.list.length,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Container(
                    margin: EdgeInsets.all(DEVICE_WIDTH * 0.02),
                    decoration: BoxDecoration(
                      color: controller.list[index][keyColor],
                      borderRadius: BorderRadius.circular(DEVICE_WIDTH * 0.05),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: DEVICE_WIDTH * 0.04,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding:
                                        EdgeInsets.all(DEVICE_WIDTH * 0.02),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                          DEVICE_WIDTH * 0.05),
                                    ),
                                    child: Text(
                                      'NEW USERS',
                                      style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: DEVICE_WIDTH * 0.04,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          text: 'Get Discount upto ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: DEVICE_WIDTH * 0.06,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '25%',
                                              style: TextStyle(
                                                fontSize: DEVICE_WIDTH * 0.08,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.amber,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'For every cleaning services',
                                    style: TextStyle(
                                      fontSize: DEVICE_WIDTH * 0.03,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(DEVICE_WIDTH * 0.05),
                            ),
                            child: Image.asset(
                              controller.list[index][keyImage],
                              width: DEVICE_WIDTH * 0.35,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                carouselController: CarouselController(),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  controller.list.length,
                  (int index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    height: DEVICE_HEIGHT * 0.01,
                    width: controller.current == index
                        ? DEVICE_WIDTH * 0.07
                        : DEVICE_WIDTH * 0.02,
                    margin: EdgeInsets.only(right: DEVICE_WIDTH * 0.01),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(DEVICE_WIDTH * 0.02),
                      color: controller.current == index
                          ? Colors.deepPurpleAccent
                          : Colors.grey,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: DEVICE_WIDTH * 0.07),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Categories ',
                      style: TextStyle(
                        fontSize: DEVICE_WIDTH * 0.06,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(DEVICE_WIDTH * 0.05),
                child: GridView.builder(
                  itemCount: controller.categories.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: DEVICE_WIDTH * 0.3,
                    mainAxisExtent: DEVICE_WIDTH * 0.3,
                    mainAxisSpacing: DEVICE_WIDTH * 0.03,
                    crossAxisSpacing: DEVICE_WIDTH * 0.03,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GridViewContainer(
                      title: controller.categories[index][keyCategory],
                      path: controller.categories[index][keyImage],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
