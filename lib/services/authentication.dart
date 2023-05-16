import 'package:local_auth/local_auth.dart';

class LocalAuth{

  static final LocalAuthentication auth = LocalAuthentication();
  static Future<bool> _canAuthenticate()async=>await auth.canCheckBiometrics|| await auth.isDeviceSupported();
 /* static Future<bool> authenticate()async{
    try{
       if(await _canAuthenticate()){
         return false;
       }
       return await auth.authenticate(
         authMessages:const [
         ],
           localizedReason: 'use face Id for authentication'
       );
    }
    catch(e){}
  }*/



}