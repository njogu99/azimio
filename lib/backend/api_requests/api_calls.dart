import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class MpesaDonateCall {
  static Future<ApiCallResponse> call({
    String amount = '',
    String partyA = '',
    String phoneNumber = '',
  }) {
    final body = '''
{
  "BusinessShortCode": 174379,
  "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMjIwNTEyMTU0NDE5",
  "Timestamp": "20220512154419",
  "TransactionType": "CustomerPayBillOnline",
  "Amount": "${amount}",
  "PartyA": "${partyA}",
  "PartyB": 174379,
  "PhoneNumber": "${phoneNumber}",
  "CallBackURL": "https://mydomain.com/path",
  "AccountReference": "Azimio Donations",
  "TransactionDesc": "Payment of Donation"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'MpesaDonate',
      apiUrl: 'https://sandbox.safaricom.co.ke/mpesa/stkpush/v1/processrequest',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer 7mpZvDPGKlYHJtm8OA3UA1V60aFD',
        'Content-Type': 'application/json',
      },
      params: {
        'Amount': amount,
        'PartyA': partyA,
        'PhoneNumber': phoneNumber,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
