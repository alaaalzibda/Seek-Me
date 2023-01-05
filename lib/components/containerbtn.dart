import '../general_exports.dart';

class ContainerButton extends StatelessWidget {
  String image;
  String title;

  ContainerButton({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: DEVICE_HEIGHT,
        padding: EdgeInsets.symmetric(
          horizontal: DEVICE_WIDTH * 0.01,
          vertical: DEVICE_HEIGHT * 0.02,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: DEVICE_WIDTH * 0.001,
          ),
          borderRadius: BorderRadius.circular(DEVICE_WIDTH * 0.04),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: DEVICE_WIDTH * 0.03),
              child: Image.asset(image),
            ),
            Padding(
              padding: EdgeInsets.only(left: DEVICE_WIDTH * 0.06),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: DEVICE_WIDTH * 0.04,
                  letterSpacing: DEVICE_WIDTH * 0.002,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
