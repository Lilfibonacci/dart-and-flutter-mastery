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

  // تطبیق چندین کاراکتر:
  // دو کاراکتر ویژه به شما امکان می‌دهند
  // با بیش از یک کاراکتر مطابقت داشته باشید:

  // کاراکتر:
  // +
  // علامت مثبت به این معنی است که کاراکتر قبل از آن
  // می‌تواند یک یا چند بار تکرار شود.

  // کاراکتر:
  // *
  // علامت ستاره به این معنی است که کاراکتر قبل از آن
  // می‌تواند صفر یا چند بار تکرار شود.

  // مثال‌های زیر را برای دیدن نحوه کارکرد آن‌ها بنویسید:

  final oneOrMore = RegExp('wo+w');
  print(oneOrMore.hasMatch('ww'));
  // خروجی:
  // false

  print(oneOrMore.hasMatch('wow'));
  // خروجی:
  // true

  print(oneOrMore.hasMatch('wooow'));
  // خروجی:
  // true

  print(oneOrMore.hasMatch('wooooooow'));
  // خروجی:
  // true

  final zeroOrMore = RegExp('wo*w');
  print(zeroOrMore.hasMatch('ww'));
  // خروجی:
  // true

  print(zeroOrMore.hasMatch('wow'));
  // خروجی:
  // true

  print(zeroOrMore.hasMatch('wooow'));
  // خروجی:
  // true

  print(zeroOrMore.hasMatch('wooooooow'));
  // خروجی:
  // true

  // الگوی:
  // o+
  // با:
  // o
  // و:
  // ooo
  // و:
  // ooooooo
  // مطابقت داشت، اما با فضای خالی بین:
  // w
  // ها در:
  // ww
  // مطابقت نداشت.
  // از طرف دیگر:
  // o*
  // با همه‌چیز، حتی با فضای خالی مطابقت داشت.

  // اگر می‌خواهید چندین نمونه از هر کاراکتری را مجاز کنید،
  // نقطه:
  // .
  // را با:
  // +
  // یا:
  // *
  // ترکیب کنید.
  // مثال زیر را بنویسید:

  final anyOneOrMore = RegExp('w.+w');

  print(anyOneOrMore.hasMatch('ww'));
  // خروجی:
  // false

  print(anyOneOrMore.hasMatch('wow'));
  // خروجی:
  // true

  print(anyOneOrMore.hasMatch('w123w'));
  // خروجی:
  // true

  print(anyOneOrMore.hasMatch('wABCDEFGw'));
  // خروجی:
  // true

  // در اینجا شما از ترکیب:
  // .+
  // برای مطابقت با:
  // o
  // و:
  // 123
  // و:
  // ABCDEFG
  // استفاده می‌کنید.

  // تطبیق مجموعه‌ای از کاراکترها:
  // کاراکتر نقطه:
  // .
  // با هر کاراکتری مطابقت پیدا می‌کند،
  // اما اغلب مفید است که با یک مجموعه یا محدوده مشخص از کاراکترها مطابقت داشته باشید.
  // می‌توانید این کار را با استفاده از براکت‌های کروشه:
  // []
  // انجام دهید.
  // فقط کاراکترهایی که داخل کروشه قرار می‌دهید
  // برای یافتن مطابقت استفاده می‌شوند:

  final set = RegExp('b[oa]t');

  print(set.hasMatch('bat'));
  // خروجی:
  // true

  print(set.hasMatch('bot'));
  // خروجی:
  // true

  print(set.hasMatch('but'));
  // خروجی:
  // false

  print(set.hasMatch('boat'));
  // خروجی:
  // false

  print(set.hasMatch('bt'));
  // خروجی:
  // false

  // مجموعه:
  // [oa]
  // با یک:
  // a
  // یا یک:
  // o
  // مطابقت دارد، اما نه با هر دو.

  // همچنین اگر از کاراکتر خط تیره:
  // -
  // استفاده کنید، می‌توانید دامنه‌ها را درون براکت‌ها مشخص کنید:

  final letters = RegExp('[a-zA-Z]');

  print(letters.hasMatch('a'));
  // خروجی:
  // true

  print(letters.hasMatch('H'));
  // خروجی:
  // true

  print(letters.hasMatch('3z'));
  // خروجی:
  // true

  print(letters.hasMatch('2'));
  // خروجی:
  // false

  // الگوی:
  // [a-zA-Z]
  // شامل دو محدوده است:
  // تمام حروف کوچک از:
  // a
  // تا:
  // z
  // و تمام حروف بزرگ از:
  // A
  // تا:
  // Z
  // تا زمانی که رشته ورودی حداقل یک حرف بزرگ یا کوچک داشته باشد،
  // تطبیق برقرار خواهد بود.

  // اگر می‌خواهید مشخص کنید که کدام کاراکترها نباید مطابقت داشته باشند،
  // علامت:
  // ^
  // را دقیقاً بعد از براکت باز قرار دهید:

  final excluded = RegExp('b[^ao]t');

  print(excluded.hasMatch('bat'));
  // خروجی:
  // false

  print(excluded.hasMatch('bot'));
  // خروجی:
  // false

  print(excluded.hasMatch('but'));
  // خروجی:
  // true

  print(excluded.hasMatch('boat'));
  // خروجی:
  // false

  print(excluded.hasMatch('bt'));
  // خروجی:
  // false

  // الگوی:
  // [^ao]
  // با یک کاراکتر از هر نوع مطابقت دارد،
  // به جز:
  // a
  // یا:
  // o

  // گریز از کاراکترهای ویژه (Escaping Special Characters):
  // اگر بخواهید خود یک کاراکتر ویژه را مطابقت دهید چه؟
  // می‌توانید با قرار دادن یک بک‌اسلش:
  // \
  // قبل از کاراکتر ویژه، از آن گریز کنید.
  // با این حال، چون بک‌اسلش خود یک کاراکتر ویژه در رشته‌های
  // Dart
  // است، معمولاً بهتر است هنگام ایجاد عبارات منظم از رشته‌های خام:
  // raw strings
  // استفاده کنید.
  // برای ایجاد رشته‌های خام، حرف:
  // r
  // را قبل از رشته قرار دهید که مخفف:
  // raw
  // است:

  final escaped = RegExp(r'c\.t');

  print(escaped.hasMatch('c.t'));
  // خروجی:
  // true

  print(escaped.hasMatch('cat'));
  // خروجی:
  // false

  // اگر پیشوند:
  // r
  // را اضافه نمی‌کردید، باید دو بک‌اسلش می‌نوشتید تا یکی برای زبان:
  // Dart
  // و دیگری برای:
  // regex
  // عمل گریز را انجام دهد.

  // تطبیق ابتدا و انتهای رشته (Matching the Beginning and End):
  // اگر بخواهید اعتبارسنجی کنید که یک شماره فقط شامل ارقام است:

  final numbers = RegExp(r'[0-9]');

  print(numbers.hasMatch('5552021'));
  // خروجی:
  // true

  print(numbers.hasMatch('abcefg2'));
  // خروجی:
  // true

  // مورد دوم نباید یک شماره معتبر باشد،
  // اما بررسی موفق شد زیرا شامل رقم:
  // 2
  // است.
  // آنچه می‌خواهید این است که هر کاراکتر یک عدد باشد و تمام رشته را پوشش دهد:

  final onlyNumbers = RegExp(r'^[0-9]+$');

  print(onlyNumbers.hasMatch('5552021'));
  // خروجی:
  // true

  print(onlyNumbers.hasMatch('abcefg2'));
  // خروجی:
  // false

  // توضیح الگوی:
  // ^[0-9]+$
  // علامت:
  // ^
  // ابتدای رشته را مطابقت می‌دهد.
  // الگوی:
  // [0-9]
  // با یک رقم بین:
  // 0
  // تا:
  // 9
  // مطابقت دارد.
  // علامت:
  // +
  // نشان‌دهنده یک یا چند بار تکرار است.
  // علامت:
  // $
  // انتهای رشته را مطابقت می‌دهد.
  // بنابراین فقط رشته‌هایی که از ابتدا تا انتها رقم هستند مطابقت دارند.

  // اعتبارسنجی گذرواژه (Validating a Password):
  // بررسی اینکه رمز عبور شامل حداقل یک حرف کوچک، یک حرف بزرگ و یک عدد باشد:

  const password = 'Password1234';

  final lowercase = RegExp(r'[a-z]');
  final uppercase = RegExp(r'[A-Z]');
  final number = RegExp(r'[0-9]');

  if (!password.contains(lowercase)) {
    print('Your password must have a lowercase letter!');
  } else if (!password.contains(uppercase)) {
    print('Your password must have an uppercase letter!');
  } else if (!password.contains(number)) {
    print('Your password must have a number!');
  } else {
    print('Your password is OK.');
  }
  // خروجی:
  // Your password is OK.

  // بررسی حداقل طول رمز عبور:
  // می‌توان از متد:
  // length
  // رشته استفاده کرد:
  if (password.length < 12) {
    print('Your password must be at least 12 characters long!');
  }

  // یا می‌توان از یک الگوی:
  // regex
  // استفاده کرد:
  final goodLength = RegExp(r'^.{12,}$');

  if (!password.contains(goodLength)) {
    print('Your password must be at least 12 characters long!');
  }

  // استخراج متن:
  // Extracting Text
  // در بخش‌های قبل از
  // regex
  // برای اعتبارسنجی استفاده کردیم.
  // اما عبارات منظم برای پیدا کردن و استخراج بخش‌های خاصی از یک متن طولانی نیز بسیار کاربردی هستند.

  // ۱. استخراج دستی متن با متدهای رشته:
  // فرض کنید یک متن شامل تگ‌های
  // HTML
  // دارید و می‌خواهید متن داخل تگ:
  // <h1>
  // را استخراج کنید:

  const htmlText = '''
<!DOCTYPE html>
<html>
<body>
<h1>Dart Tutorial</h1>
<p>Dart is my favorite language.</p>
</body>
</html>
''';

  // روش دستی با استفاده از:
  // indexOf()
  // و:
  // substring()

  // پیدا کردن محل شروع متن داخل تگ:
  final headingStart = htmlText.indexOf('<h1>') + '<h1>'.length;

  // پیدا کردن محل پایان متن داخل تگ:
  final headingEnd = htmlText.indexOf('</h1>');

  // استخراج متن بین دو شاخص:
  final heading = htmlText.substring(headingStart, headingEnd);
  print(heading);
  // خروجی:
  // Dart Tutorial

  // این روش دستی در صورتی که چندین تگ وجود داشته باشد
  // یا ساختار متن کمی تغییر کند بسیار شکننده خواهد بود.

  // ۲. استخراج متن با عبارات منظم و گروه‌ها:
  // Regex Groups
  // برای استخراج بخش مشخصی از الگو، آن بخش را درون پرانتز:
  // ()
  // قرار می‌دهیم که به آن یک گروه تطبیق یا:
  // Capture Group
  // می‌گویند:

  final headings = RegExp(r'<h1>(.+)</h1>');

  // متد:
  // allMatches()
  // تمام نمونه‌های مطابق با الگو را در کل متن برمی‌گرداند:
  final matches = headings.allMatches(htmlText);

  for (final match in matches) {
    // متد:
    // group(0)
    // کل عبارت منطبق (شامل تگ‌های باز و بسته) را برمی‌گرداند:
    print(match.group(0));
    // خروجی:
    // <h1>Dart Tutorial</h1>

    // متد:
    // group(1)
    // متن استخراج‌شده درون اولین جفت پرانتز یعنی:
    // (.+)
    // را برمی‌گرداند:
    print(match.group(1));
    // خروجی:
    // Dart Tutorial
  }

  // تطبیق حریصانه در برابر تنبل:
  // Greedy vs. Lazy Matching
  // به صورت پیش‌فرض، عملگرهای تکرار مانند:
  // +
  // یا:
  // *
  // به شکل حریصانه عمل می‌کنند و تا جای ممکن بیشترین کاراکتر را مطابقت می‌دهند.

  const multipleHeadings = '<h1>Dart</h1><h1>Flutter</h1><h1>Language</h1>';

  // در الگوی حریصانه زیر:
  final greedyRegex = RegExp(r'<h1>.+</h1>');
  final greedyMatch = greedyRegex.firstMatch(multipleHeadings);
  print(greedyMatch?.group(0));
  // خروجی:
  // <h1>Dart</h1><h1>Flutter</h1><h1>Language</h1>
  // همان‌طور که می‌بینید، از اولین:
  // <h1>
  // تا آخرین:
  // </h1>
  // همگی به عنوان یک تطابق واحد در نظر گرفته شدند.

  // برای تبدیل به تطبیق تنبل یا:
  // lazy
  // کافی است یک علامت سوال:
  // ?
  // بلافاصله بعد از عملگر تکرار قرار گیرد:

  final lazyRegex = RegExp(r'<h1>(.+?)</h1>');
  final lazyMatches = lazyRegex.allMatches(multipleHeadings);

  for (final match in lazyMatches) {
    print(match.group(1));
  }
  // خروجی:
  // Dart
  // Flutter
  // Language

  // چالش‌ها:
  // Challenges

  // چالش ۱: اعتبارسنجی ایمیل:
  // Challenge 1: Email Validation
  // نوشتن یک الگوی:
  // regex
  // برای بررسی معتبر بودن قالب یک آدرس ایمیل:

  final emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  const validEmail = 'test.user@example.com';
  const invalidEmail = 'test.user@com';

  print(emailRegex.hasMatch(validEmail));
  // خروجی:
  // true

  print(emailRegex.hasMatch(invalidEmail));
  // خروجی:
  // false

  // چالش ۲: کلمات کارائوکه:
  // Challenge 2: Karaoke Words
  // فایل‌های:
  // LRC
  // شامل برچسب زمان و متن ترانه هستند.
  // خط زیر را در نظر بگیرید:
  const line = '[00:12.34]Row, row, row your boat.';

  // هدف: استخراج دقیقه، ثانیه، صدم ثانیه و متن ترانه و چاپ با قالب زیر:
  // minutes: 00 seconds: 12 hundredths: 34 lyrics: Row, row, row your boat.

  // حل چالش ۲ با روش ۱ (استفاده از متد substring):
  final minutes1 = line.substring(1, 3);
  final seconds1 = line.substring(4, 6);
  final hundredths1 = line.substring(7, 9);
  final lyrics1 = line.substring(10);

  print(
    'minutes: $minutes1 seconds: $seconds1 hundredths: $hundredths1 lyrics: $lyrics1',
  );
  // خروجی:
  // minutes: 00 seconds: 12 hundredths: 34 lyrics: Row, row, row your boat.

  // حل چالش ۲ با روش ۲ (استفاده از گروه‌های RegExp):
  final lrcRegex = RegExp(r'\[(\d{2}):(\d{2})\.(\d{2})\](.+)');
  final lrcMatch = lrcRegex.firstMatch(line);

  if (lrcMatch != null) {
    final minutes2 = lrcMatch.group(1);
    final seconds2 = lrcMatch.group(2);
    final hundredths2 = lrcMatch.group(3);
    final lyrics2 = lrcMatch.group(4);

    print(
      'minutes: $minutes2 seconds: $seconds2 hundredths: $hundredths2 lyrics: $lyrics2',
    );
  }
  // خروجی:
  // minutes: 00 seconds: 12 hundredths: 34 lyrics: Row, row, row your boat.
}

