import 'package:seek_me/general_exports.dart';

class ElevatedButtonDiv extends StatelessWidget {
  late String title;
  Color color = Colors.deepPurpleAccent;
  late bool isButtonEnabled;

  ElevatedButtonDiv({
    super.key,
    required this.title,
    required this.color,
    required this.isButtonEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(DEVICE_WIDTH * 0.04),
          ),
        ),
        backgroundColor: isButtonEnabled
            ? MaterialStateProperty.all(color)
            : MaterialStateProperty.all(Colors.grey),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: DEVICE_WIDTH * 0.01,
            vertical: DEVICE_HEIGHT * 0.02,
          ),
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(fontSize: 30),
        ),
      ),
      onPressed: isButtonEnabled ? () {} : null,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: DEVICE_WIDTH * 0.05,
          ),
        ),
      ),
    );
  }
}
