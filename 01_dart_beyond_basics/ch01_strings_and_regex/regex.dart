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
}

