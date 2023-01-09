import '../../general_exports.dart';
import 'bottomNavigation_controller.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<BottomNavigationWidget>(
        init: BottomNavigationWidget(),
        builder: (BottomNavigationWidget controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: true,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.deepPurpleAccent,
              currentIndex: controller.currentindex,
              onTap: controller.onTap,
              items: const <BottomNavigationBarItem>[
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
            body: controller.pages[controller.currentindex],
          );
        },
      ),
    );
  }
}
