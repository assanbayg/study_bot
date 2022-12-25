import 'dart:io';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';
import 'package:test/expect.dart';

void main() async {
  var BOT_TOKEN = '5934224886:AAE7vtrK-S6l7eo9VdgGKSH-IbtZzSoY9S8';
  final username = (await Telegram(BOT_TOKEN).getMe()).username;
  var teledart = TeleDart(BOT_TOKEN, Event(username!));

  teledart.onCommand('start').listen((event) {
    event.reply(
        "Available commands: \n/biology\n/chemistry\n/ict\n/physics\n/worldHistory\n/tarih\n/geography\n/info");
  });

  teledart.onCommand('info').listen((event) {
    event.reply(
        'Автор: Асанбай Гауһар. Егер ақаулар бар болса, немесе маған қолдау көрсеткіңіз келсе - сіз менің нөмерімді білесіз.');
  });

  teledart.onCommand('biology').listen((event) {
    event.replyDocument(File('bin/biology.docx'),
        caption: 'Биология оқу мақсаттары');
    event.reply(
        'Оқулық https://drive.google.com/file/d/1LUrX8t5brkiHAQbokhDKaYhabvwuaS8_/view?usp=sharing');
  });

  teledart.onCommand('ict').listen((event) {
    event.replyDocument(File('bin/ict.docx'));
    event.reply(
        'https://drive.google.com/file/d/1xx7byg_nl4_EwYEnKW82yarZbSMSDB1q/view?usp=share_link');
  });

  teledart.onCommand('chemistry').listen((event) {
    event.replyDocument(File('bin/chemistry.docx'));
    event.reply(
        'https://drive.google.com/file/d/1vBdDfNoUOuXwTdr82jhrfw-1UIJmirTx/view?usp=share_link');
  });

  teledart.onCommand('physics').listen((event) {
    event.replyDocument(File('bin/physic.docx'));
    event.reply(
        'https://drive.google.com/file/d/1ua0L5MVm_KCuFf9rq_w0T55NbBN6dRby/view?usp=sharing');
  });

  teledart.onCommand('geography').listen((event) {
    //event.replyDocument(File('bin/geography.docx'));
    event.reply(
        'https://drive.google.com/file/d/1AU21H4H6vWofdqq-ndfxV2-pQazPT0Hy/view?usp=share_link');
  });

  teledart.onCommand('worldHistory').listen((event) {
    event.replyDocument(File('bin/world_history.doc'));
    event.reply(
        'https://drive.google.com/file/d/1607s0Cm5wCSsJ8A28uzscytgVHLNsI8t/view?usp=share_link');
  });

  teledart.onCommand('tarih').listen((event) {
    //event.replyDocument(File('bin/tarih.docx'));
    event.reply(
        'https://drive.google.com/file/d/1ibwrKWDbBNd9iojL5z0a2tZ60hHghd7x/view?usp=share_link');
  });

  teledart.onMessage().listen((event) {
    event.reply('Кешіріңіз, пәрменді түсінбеймін');
    event.reply(
        "Available commands: \n/biology\n/chemistry\n/ict\n/physics\n/worldHistory\n/tarih\n/geography\n/info");
  });

  teledart.start();
}
