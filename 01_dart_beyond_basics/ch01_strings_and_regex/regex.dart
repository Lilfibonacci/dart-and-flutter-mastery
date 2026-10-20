void main(List<String> args) {
  // استفاده از کلاس
  // RegExp
  // برای ایجاد یک الگوی تطبیق
  // regex
  // در زبان
  // Dart:

  final regex = RegExp('cat');
  print(regex.hasMatch('concatenation'));
  // خروجی:
  // true

  print(regex.hasMatch('dog'));
  // خروجی:
  // false

  print(regex.hasMatch('cats'));
  // خروجی:
  // true

  // hasMatch()
  // این تابع مقدار
  // true
  // را برمی‌گرداند اگر الگوی
  // regex
  // با رشته ورودی مطابقت داشته باشد.
  // در این حالت، هر دو رشته‌ی:
  // concatenation
  // و:
  // cats
  // شامل زیررشته‌ی:
  // cat
  // هستند، بنابراین این‌ها مقدار:
  // true
  // برمی‌گردانند،
  // در حالی که رشته‌ی:
  // dog
  // مقدار:
  // false
  // برمی‌گرداند زیرا با رشته صریح
  // cat
  // مطابقت ندارد.

  // contains()
  // یک روش جایگزین برای انجام همان کار
  // استفاده از این متد بر روی رشته است:
  print('concatenation'.contains(regex));
  // خروجی:
  // true

  print('dog'.contains(regex));
  // خروجی:
  // false

  print('cats'.contains(regex));
  // خروجی:
  // true

  // نتایج یکسان هستند.
  // مطابقت رشته‌های ثابت کاربرد محدودی دارد.
  // قدرت عبارات منظم در کاراکترهای ویژه است.

  // عبارات منظم از کاراکترهای ویژه‌ای استفاده می‌کنند
  // که به عنوان کاراکترهای عمومی عمل می‌کنند.
  // می‌توانید از آن‌ها برای مطابقت با بیش از فقط کاراکترهای واقعی استفاده کنید.
  // به عنوان مثال، کاراکتر نقطه:
  // .
  // با هر کاراکتر منفردی مطابقت خواهد داشت:

  final matchSingle = RegExp('c.t');
  print(matchSingle.hasMatch('cat'));
  // خروجی:
  // true

  print(matchSingle.hasMatch('cot'));
  // خروجی:
  // true

  print(matchSingle.hasMatch('cut'));
  // خروجی:
  // true

  print(matchSingle.hasMatch('ct'));
  // خروجی:
  // false

  // زیرا نقطه:
  // .
  // با هر کاراکتر تک مطابقت دارد،
  // با:
  // a
  // در:
  // cat
  // و با:
  // o
  // در:
  // cot
  // و با:
  // u
  // در:
  // cut
  // مطابقت خواهد داشت.
  // این به شما انعطاف‌پذیری زیادی در آنچه که مطابقت می‌دهید، می‌دهد.

  // الگوی:
  // c.t
  // با رشته:
  // ct
  // مطابقت نداشت زیرا نقطه:
  // .
  // همیشه دقیقاً با یک کاراکتر مطابقت می‌کند.

  // اگر می‌خواهید با:
  // ct
  // نیز مطابقت داشته باشید، از الگوی:
  // c.?t
  // استفاده کنید، که در آن علامت سؤال:
  // ?
  // یک کاراکتر ویژه در:
  // regex
  // است که به صورت اختیاری با کاراکتر قبل از خود مطابقت دارد.
  // زیرا کاراکتر قبلی نقطه:
  // .
  // است، بنابراین الگوی:
  // .?
  // با یک یا صفر نمونه از هر کاراکتری مطابقت دارد:

  final optionalSingle = RegExp('c.?t');
  print(optionalSingle.hasMatch('cat'));
  // خروجی:
  // true

  print(optionalSingle.hasMatch('cot'));
  // خروجی:
  // true

  print(optionalSingle.hasMatch('cut'));
  // خروجی:
  // true

  print(optionalSingle.hasMatch('ct'));
  // خروجی:
  // true
}
