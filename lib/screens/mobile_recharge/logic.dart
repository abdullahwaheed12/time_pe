import 'package:contacts_service/contacts_service.dart';
import 'package:get/get.dart';

class MobileRechargeController extends GetxController {
  List<Contact> contacts = [];
   getAllContacts() async {
    List<Contact> _contacts =
        await ContactsService.getContacts(withThumbnails: false);
    contacts = _contacts;
    print('contacts ${contacts}');
  }
}