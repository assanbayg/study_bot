import 'dart:io';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

void main() async {
  var BOT_TOKEN = '5934224886:AAE7vtrK-S6l7eo9VdgGKSH-IbtZzSoY9S8';
  final username = (await Telegram(BOT_TOKEN).getMe()).username;
  var teledart = TeleDart(BOT_TOKEN, Event(username!));

  teledart.onCommand('start').listen((event) {
    event.reply('It\'s working!');
  });

  teledart.onCommand('biology').listen((event) {
    event.replyDocument(File('bin/biology.docx'),
        caption: 'Биология оқу мақсаттары');
  });

  teledart.onCommand('ict').listen((event) {
    event.replyDocument(File('bin/ict.docx'));
  });

  teledart.onCommand('chemistry').listen((event) {
    event.replyDocument(File('bin/chemistry.docx'));
  });

  teledart.onCommand('physic').listen((event) {
    event.replyDocument(File('bin/physic.docx'));
  });

  teledart.onCommand('geography').listen((event) {
    event.replyDocument(File('bin/geography.docx'));
  });

  teledart.onCommand('worldHistory').listen((event) {
    event.replyDocument(File('bin/world_history.doc'));
  });

  teledart.onCommand('tarih').listen((event) {
    event.replyDocument(File('bin/tarih.docx'));
  });
  List<String> commands = [
    'biology',
    'chemistry',
    'ict',
    'physics',
    'worldHistory',
    'tarih',
    'geography',
    'literature'
  ];
  teledart.onMessage().listen((event) {
    event.reply('Кешіріңіз, мен бұл комманданы түсінбеймін');
    event.reply(commands.toString());
  });

  teledart.start();
}
