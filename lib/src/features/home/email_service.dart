import 'dart:convert';

import 'package:http/http.dart';

class EmailService {
  final String recieverEmail;
  EmailService(this.recieverEmail);
  final _host = 'https://api.sendgrid.com';
  final _dio = Client();
  /*Dio(
     BaseOptions(
      baseUrl = 'https://api.sendgrid.com',
      headers = {
        'Authorization':
            'Bearer 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',
       "Access-Control-Allow-Origin": "*", 
     "Access-Control-Allow-Credentials": "true", 
     "Access-Control-Allow-Headers": "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
     "Access-Control-Allow-Methods": "POST, OPTIONS"
      },
    ),
  ); */

  Future sendBookingConfirmation({
    required String firstName,
    required String serviceName,
    required String clinic,
    required String startTime,
    required String rescheduleLink,
    required String cancelLink,
  }) async {
    final data = {
      "first_name": firstName,
      "service_name": serviceName,
      "clinic": clinic,
      "start_time": startTime,
      "reschedule_link": rescheduleLink,
      "cancel_link": cancelLink,
    };
    return _sendEmail(
        templateId: "d-75ff6f3c48ea4a25bf858b8ddc824d89", templateData: data);
  }

  Future _sendEmail({
    required String templateId,
    required Map<String, dynamic> templateData,
  }) async {
    return _dio.post(Uri.parse(_host + '/v3/mail/send'),
        headers: {
          'Authorization':
              'Bearer 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'
        },
        body: jsonEncode({
          "from": {
            "email": "support@curativum.se",
            "name": "Curativum Support"
          },
          "personalizations": [
            {
              "to": [
                {"email": recieverEmail}
              ],
              "dynamic_template_data": templateData,
            },
          ],
          "template_id": templateId,
        }));
  }
}
