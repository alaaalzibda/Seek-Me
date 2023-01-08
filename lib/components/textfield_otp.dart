import '../general_exports.dart';

class TextFieldOtp extends StatelessWidget {
  TextFieldOtp({
    required this.controller,
    required this.onChanged,
    this.focusNode,
    super.key,
  });
  Function(String value) onChanged;
  final TextEditingController controller;
  FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DEVICE_HEIGHT * 0.07,
      width: DEVICE_WIDTH * 0.13,
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        autofocus: true,
        showCursor: false,
        maxLength: 1,
        focusNode: focusNode,
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
        onChanged: onChanged,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: DEVICE_WIDTH * 0.06,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
