class User {
  String email;

  User(this.email);
}

mixin MailSystem on User {
  String getMailSystem(email) {
    return email.split('@')[1];
  }
}

class AdminUser extends User with MailSystem {
  AdminUser(super.email);
}

class GeneralUser extends User {
  GeneralUser(super.email);
}

class UserManager<T extends User> {
  List<T> users = [];

  void addUser(T user) {
    users.add(user);
  }

  void removeUser(T user) {
    users.remove(user);
  }

  List displayUserEmails(List<T> users) {
    var usersEmail = [];
    for (T user in users) {
      if (user is AdminUser) {
        usersEmail.add(user.getMailSystem(user.email));
      } else {
        usersEmail.add(user.email);
      }
    }
    return usersEmail;
  }
}
