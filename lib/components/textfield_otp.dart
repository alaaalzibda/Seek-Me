import '../general_exports.dart';

// ignore: must_be_immutable
class OtpTextField extends StatelessWidget {
  OtpTextField({required this.digitcontroller, super.key});
  TextEditingController digitcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DEVICE_HEIGHT * 0.07,
      width: DEVICE_WIDTH * 0.13,
      child: TextField(
        controller: digitcontroller,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        autofocus: true,
        showCursor: false,
        maxLength: 1,
        decoration: InputDecoration(
          counter: const Offstage(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.deepPurple[200]!,
            ),
            borderRadius: BorderRadius.circular(13),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.deepPurple,
            ),
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        onChanged: (String value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: DEVICE_WIDTH * 0.06,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
