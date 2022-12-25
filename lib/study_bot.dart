// import 'package:teledart/teledart.dart';
// import 'package:teledart/telegram.dart';
//
// void main() async{
//   var BOT_TOKEN = '5848706293:AAFfG0tOfypt9DV4ZGCYyLcN2nuWsDcWoNE';
//   final username = (await Telegram(BOT_TOKEN).getMe()).username;
//   var teledart = TeleDart(BOT_TOKEN, Event(username!));
//
//   teledart.onCommand('start').listen((event) {
//     event.reply('It\'s working!');
//   });
//
//   // teledart.onMessage().listen((event){
//   //   print(event.from?.id.toString());
//   //   print(event.from?.username);
//   // });
//
//   teledart.start();
// }