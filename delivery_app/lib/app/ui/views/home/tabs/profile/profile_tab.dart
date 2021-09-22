import 'package:delivery_app/app/ui/global_widgets/dialogs/progress_dialog.dart';
import 'package:delivery_app/app/ui/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 20.0),
        const CircleAvatar(
          radius: 75,
          // ignore: unnecessary_null_comparison
          child: "user.photoURL" == null
              ? Text(
                  "letter",
                  style: TextStyle(fontSize: 65),
                )
              : null,
          // ignore: unnecessary_null_comparison
          backgroundImage: "user.photoURL" != null
              ? NetworkImage(
                  "https://masterdesignblog.com/wp-content/uploads/2020/09/14.png")
              : null,
        ),
        const SizedBox(height: 10.0),
        const Center(
          child: Text(
            "displayName",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Center(child: Text("")),
        const SizedBox(height: 20.0),
        LabelButton(
            label: "Display Name",
            value: "displayName",
            onPressed: () => () {}),
        const LabelButton(
          label: "User Email",
          value: '',
        ),
        const LabelButton(
          label: "Email verifiqued",
          value: 'YES',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Dark Mode"),
              CupertinoSwitch(value: true, onChanged: (_) {}),
            ],
          ),
        ),
        const SizedBox(height: 100),
        LabelButton(
          label: "Sign Out",
          value: "",
          onPressed: () async {
            ProgressDialog.show(context);
            await Future.delayed(const Duration(seconds: 1));
            Navigator.pop(context);

            Navigator.pushNamedAndRemoveUntil(
                context, Routes.login, (route) => false);
          },
        )
      ],
    );
  }
}

class LabelButton extends StatelessWidget {
  const LabelButton(
      {Key? key, required this.label, required this.value, this.onPressed})
      : super(key: key);
  final String label, value;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                value,
                style: const TextStyle(fontWeight: FontWeight.w300),
              ),
              const SizedBox(width: 5.0),
              if (onPressed != null)
                const Icon(Icons.chevron_right_rounded,
                    size: 22.0, color: Colors.black),
            ],
          ),
        ],
      ),
    );
  }
}
