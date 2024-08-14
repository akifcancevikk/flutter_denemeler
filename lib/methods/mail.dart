import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class EmailService {
 final smtpServer = SmtpServer(
  'mail.aktekweb.com',
  port: 587,
  username: 'web@aktekweb.com',
  password: '3@dB1de1@',
  ssl: false,
  ignoreBadCertificate: true,
);

  String _generateEmailContent(List<Map<String, dynamic>> items) {
    String itemRows = items.map((item) => '''
      <tr>
        <td><img src="${item['imageUrl']}" alt="" class="img-fluid d-block" height="70" /></td>
        <td>${item['stockCode']}</td>
        <td>${item['stockName']}</td>
        <td>${item['quantity']}</td>
        <td>${item['grossAmount']}</td>
        <td>${item['netAmount']}</td>
        <td>${item['discount']}</td>
      </tr>
    ''').join();

    String emailContent = '''
      <head>
        <meta http-equiv="Content-Language" content="tr">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <style>
          body { background: #fff; font-family: Tahoma; font-size: 13px; color: #333; }
          table { font-family: Tahoma; font-size: 13px; color: #333; }
        </style>
      </head>
      <body>
        <table border="0" width="100%" cellspacing="0" cellpadding="0" height="100%">
          <tr>
            <td valign="top">
              <div align="center">
                <table border="0" width="75%" id="table1" cellspacing="0" cellpadding="0" height="100%">
                  <tr>
                    <td valign="top">
                      <div style="background-color: #4c4a4a; color: #fff; padding: 10px; font-weight: bold; font-size: 12px; text-align:center"><img src="https://b2b.akdemirglobal.com/assets/images/logo.png" alt=""><br>Akdemir Global</div>
                      <div style="padding: 5px 10px 0px 10px;">
                        <div style="line-height: 18px;">
                          <table width="100%" border="0" cellspacing="0" cellpadding="0" style="padding:10px;">
                            <tr>
                              <td><strong>Cari Kodu</strong></td>
                              <td><strong>Cari İsim</strong></td>
                              <td><strong>Cari Adresi</strong></td>
                              <td><strong>Cari Telefon</strong></td>
                              <td><strong>Cari Yetkili</strong></td>
                            </tr>
                            <tr>
                              <td>B2BTest</td>
                              <td>B2B TEST CARISI</td>
                              <td>Merkez Cad. Merkez Sok. No:15 ISTANBUL/TURKIYE (34310)</td>
                              <td>+90 5326317083</td>
                              <td>Test Yetkilisi</td>
                            </tr> 
                            <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td><strong>Siparis Tarihi</strong></td>
                              <td><strong>Siparis Evrak No</strong></td>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td>2024-07-16</td>
                              <td>P001-1</td>
                              <td>&nbsp;</td>
                            </tr>
                          </table>
                          <br /><br /><div style="clear: both; height: 5px;"></div>
                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td><strong></strong></td>
                              <td><strong>Stok Kodu</strong></td>
                              <td><strong>Stok Adı</strong></td>
                              <td><strong>Miktar</strong></td>
                              <td><strong>Bürüt Tutar</strong></td>
                              <td><strong>Net Tutar</strong></td>
                              <td><strong>İskonto</strong></td>
                            </tr>
                            $itemRows
                          </table>
                          <br /><br />
                          <table class="table cart-total-table" style="float:right; text-align:right; font-weight:bold; background-color:#d90227; color:#fff; padding:10px">
                            <tbody>
                              <tr>
                                <td>Brüt Tutar  : </td>
                                <td class="text-end">897,12&nbsp;TL</td>
                              </tr> 
                              <tr>
                                <td>İskonto Toplamı :</td>
                                <td class="text-end">251,19&nbsp;TL</td>
                              </tr>                                                                
                              <tr>
                                <td>İskonto Oranı : </td>
                                <td class="text-end">% 28,00&nbsp;</td>
                              </tr>                                                                
                              <tr>
                                <td>Toplam Tutar :</td>
                                <td class="text-end">645,93&nbsp;TL</td>
                              </tr>
                              <tr>
                                <td>KDV Toplamı :</td>
                                <td class="text-end">129,19&nbsp;TL</td>
                              </tr>
                              <tr class="border-top border-top-dashed">
                                <th scope="row">GENEL TOPLAM :</th>
                                <th class="text-end">775,12&nbsp;TL</th>
                              </tr>
                            </tbody>
                          </table>
                          <div style="clear: both; height: 5px;"></div>
                          <br /><br />
                          Sipariş Ayrıntısı<div style="clear: both; height: 5px;"></div>
                          Saygılarımızla,<br />
                          b2b.akdemirglobal.com 
                        </div>
                        <div style="clear: both; height: 25px;"></div>
                        <div style="background-color: #d90227; height: 1px;"></div>
                        <div style="clear: both; height: 5px;"></div>
                        <div style="color: #999;">
                          İstoç 2416. Sok. No: 4/B Aktem Plaza Bağcılar -İstanbul / TÜRKİYE - 0212 659 23 48 
                        </div>
                      </div>
                    </td>
                  </tr>
                </table>
              </div>
            </td>
          </tr>
        </table>
      </body>
    ''';

    return emailContent;
  }

  Future<void> sendMail(String recipient, String subject, List<Map<String, dynamic>> items) async {
    final emailContent = _generateEmailContent(items);

    final message = Message()
      ..from = Address(dotenv.env["OUTLOOK_EMAIL"]!, 'Akdemir Global')
      ..recipients.add(recipient)
      ..subject = subject
      ..html = emailContent;

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
    } on MailerException catch (e) {
      print('Message not sent. + $e');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    }
  }
}
