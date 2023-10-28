
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
      if (kDebugMode) {
        print('Background Message');
      }
      if (kDebugMode) {
        print(message.data.toString());
      }
      
}