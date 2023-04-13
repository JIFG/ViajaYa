import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ViajaYAFirebaseUser {
  ViajaYAFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ViajaYAFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ViajaYAFirebaseUser> viajaYAFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ViajaYAFirebaseUser>(
      (user) {
        currentUser = ViajaYAFirebaseUser(user);
        return currentUser!;
      },
    );
