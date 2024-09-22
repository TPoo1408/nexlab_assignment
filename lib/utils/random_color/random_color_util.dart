import 'dart:math';
import 'dart:ui';

class RandomColorUtil {

  // Get Random Color
  static Color randomColor() {
    final random = Random();
    return Color(
      int.parse(
        '0xFF${(random.nextDouble() * 0xFFFFFF).toInt().toRadixString(16).padLeft(6, '0')}',
      ),
    );
  }
}
