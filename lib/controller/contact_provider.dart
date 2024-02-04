import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:using_objext_box/model/contact_model.dart';
import 'package:using_objext_box/services/contact_services.dart';

part 'contact_provider.g.dart';

@riverpod
class ContactProvider extends _$ContactProvider {
  @override
  List<ContactModel> build() {
    return ContactServices.mybox.getAll();
  }

  void addcontact(ContactModel ooo) {
    ContactServices.mybox.put(ooo);
    state = ContactServices.mybox.getAll();
  }

  void removecontact(int id) {
    ContactServices.mybox.remove(id);
    state = ContactServices.mybox.getAll();
  }
}