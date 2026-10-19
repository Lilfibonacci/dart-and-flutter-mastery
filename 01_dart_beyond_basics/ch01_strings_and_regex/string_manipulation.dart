void main(List<String> args) {
  // تعریف متغیر متنی با حروف بزرگ و کوچک نامرتب
  String userInput = "ToWhiD@GmaIl.com";

  // تبدیل تمام حروف متن به حروف کوچک انگلیسی
  // نکته: رشته‌ها در دارت تغییرناپذیر هستند
  // یعنی متغیر اصلی دست‌نخورده باقی می‌ماند و یک متن جدید تولید می‌شود
  // کاربرد: یکسان‌سازی ورودی‌های کاربر مانند ایمیل قبل از ذخیره یا جستجو
  print(userInput.toLowerCase());
  // خروجی:
  // towhid@gmail.com

  // تبدیل تمام حروف متن به حروف بزرگ انگلیسی
  String userInput2 = "ToWhiD@GmaIl.com";
  print(userInput2.toUpperCase());
  // خروجی:
  // TOWHID@GMAIL.COM

  // تعریف متغیر متنی همراه با فاصله‌های اضافه در ابتدا و انتها
  String userInput3 = "  221b Baker St.  ";

  // حذف فاصله‌های خالی از هر دو طرف یعنی ابتدا و انتهای متن
  // فاصله‌های بین کلمات بدون تغییر باقی می‌مانند
  print(userInput3.trim());
  // خروجی:
  // 221b Baker St.

  // حذف فاصله‌های خالی فقط از سمت راست یعنی انتهای متن
  print(userInput3.trimRight());
  // خروجی:
  //   221b Baker St.

  // حذف فاصله‌های خالی فقط از سمت چپ یعنی ابتدای متن
  print(userInput3.trimLeft());
  // خروجی:
  // 221b Baker St.

  // قالب‌بندی زمان - روش اول (رویکرد اشتباه)
  // ویژگی‌های این کلاس کل مدت زمان را تبدیل می‌کنند نه فقط باقیمانده را
  final time = Duration(hours: 1, minutes: 32, seconds: 10);
  final hours = time.inHours;
  final minutes = time.inMinutes;
  final seconds = time.inSeconds;
  final timeString = "$hours:$minutes:$seconds";
  print(timeString);
  // خروجی غیرمنتظره:
  // 1:92:5530

  // قالب‌بندی زمان - روش دوم (رویکرد صحیح و حرفه‌ای)
  // ۱. استفاده از عملگر باقیمانده برای دریافت دقیقه و ثانیه بین صفر تا ۵۹
  // ۲. استفاده از دستور پر کردن متن از چپ برای دو رقمی نگه داشتن اعداد
  final time1 = Duration(hours: 1, minutes: 32, seconds: 10);
  final hours1 = time1.inHours;
  final minutes1 = '${time1.inMinutes % 60}'.padLeft(2, '0');
  final seconds1 = '${time1.inSeconds % 60}'.padLeft(2, '0');
  final timeString1 = "$hours1:$minutes1:$seconds1";
  print(timeString1);
  // خروجی صحیح ساعت دیجیتال:
  // 1:32:10
  // تجزیه یک رشته به لیستی از بخش‌ها
  // فرض کنید یک خط از یک فایل داریم که اطلاعات با کاما از هم جدا شده‌اند
  final csvFileLine = 'Martin,Emma,122,Paris,France';

  // رشته را از محل کاراکتر مشخص‌شده برش می‌دهد
  // نتیجه یک لیست از رشته‌هاست
  // در اینجا هر جا کاما باشد یک برش ایجاد می‌شود
  final parts = csvFileLine.split(',');
  print(parts);
  // خروجی:
  // [Martin, Emma, 122, Paris, France]

  // عملکرد برعکس تجزیه: اتصال اجزای یک لیست با جداکننده دلخواه
  // اجزای لیست را به هم می‌چسباند و یک رشته واحد تولید می‌کند
  // در اینجا بین هر دو عنصر لیست یک علامت جداکننده قرار می‌گیرد
  final newCsvLine = parts.join(' | ');
  print(newCsvLine);
  // خروجی:
  // Martin | Emma | 122 | Paris | France

  // جایگزینی تمام رخدادهای یک عبارت با عبارت دیگر در رشته
  // این متد رشته را جستجو می‌کند و هر جا عبارت مورد نظر را پیدا کند جایگزین می‌کند
  // نکته: اگر عبارت مورد جستجو در رشته وجود نداشته باشد هیچ تغییری رخ نمی‌دهد
  // در اینجا کلمه مورد جستجو در متن وجود ندارد پس خروجی بدون تغییر خواهد بود
  const pharse = 'Practice makes perfect';
  final withUnderScore = pharse.replaceAll(' ', '_');
  print(withUnderScore);
  // Practice_makes_perfect
}
