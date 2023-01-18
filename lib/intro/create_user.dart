import 'package:flutter/material.dart';
import 'package:music_app/datas/user_data.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({super.key});

  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  final nameInput = TextEditingController();
  final ageInput = TextEditingController();

  OutlineInputBorder input() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: const BorderSide(
        color: Color(0xffeaeaea),
        width: 1,
      ),
    );
  }

  void addName() {
    final String name = nameInput.text;
    UserPreference user = UserPreference();
    user.addName(name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "Hello",
              style: TextStyle(fontSize: 80),
            ),
            Column(
              children: [
                TextField(
                  controller: nameInput,
                  decoration: InputDecoration(
                    hintText: "Name",
                    border: input(),
                    enabledBorder: input(),
                  ),
                ),
                const SizedBox(height: 24),
                TextField(
                  controller: ageInput,
                  decoration: InputDecoration(
                    hintText: "Name",
                    border: input(),
                    enabledBorder: input(),
                  ),
                ),
              ],
            ),
            //button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: InkWell(
                  onTap: () {
                    if (nameInput.text != "") {
                      addName();
                    }
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
