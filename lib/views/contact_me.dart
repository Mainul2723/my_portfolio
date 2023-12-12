import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:my_portfolio/globals/app_button.dart';
import 'package:my_portfolio/globals/app_color.dart';
import 'package:my_portfolio/globals/app_text_styles.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({super.key});

  @override
  _ContactMeState createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController emailSubjectController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: AppColors.bgColor,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 1200),
            child: RichText(
              text: TextSpan(
                text: 'Contact',
                style: AppTextStyles.headingTextStyle(fontSize: 30),
                children: [
                  TextSpan(
                    text: 'Me!',
                    style: AppTextStyles.headingTextStyle(
                        fontSize: 30, color: AppColors.robinEdgeBlue),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(12),
                  elevation: 8,
                  color: Colors.transparent,
                  child: TextField(
                    controller: fullNameController,
                    cursorColor: Colors.white,
                    style: AppTextStyles.normalStyle(),
                    decoration: buildInputDecoration(hintText: 'Full Name'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(12),
                  elevation: 8,
                  color: Colors.transparent,
                  child: TextField(
                    controller: emailAddressController,
                    cursorColor: Colors.white,
                    style: AppTextStyles.normalStyle(),
                    decoration: buildInputDecoration(hintText: 'Email Address'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(12),
                  elevation: 8,
                  color: Colors.transparent,
                  child: TextField(
                    controller: mobileNumberController,
                    cursorColor: Colors.white,
                    style: AppTextStyles.normalStyle(),
                    decoration: buildInputDecoration(hintText: 'Mobile Number'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(12),
                  elevation: 8,
                  color: Colors.transparent,
                  child: TextField(
                    controller: emailSubjectController,
                    cursorColor: Colors.white,
                    style: AppTextStyles.normalStyle(),
                    decoration: buildInputDecoration(hintText: 'Email Subject'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(12),
                  elevation: 8,
                  color: Colors.transparent,
                  child: TextField(
                    controller: messageController,
                    maxLines: 10,
                    cursorColor: Colors.white,
                    style: AppTextStyles.normalStyle(),
                    decoration: buildInputDecoration(
                      hintText: 'Your Message',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          AppButton.buildMaterialButton(
            buttonName: 'Send Message',
            onTap: () async {
              bool success = await sendMessage();
              String message = success
                  ? 'Message sent successfully!'
                  : 'Failed to send message. Please try again.';
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  duration: const Duration(seconds: 3),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  InputDecoration buildInputDecoration({required String hintText}) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: AppTextStyles.headingTextStyle(color: Colors.blueGrey),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      filled: true,
      fillColor: AppColors.bgColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    );
  }

  Future<bool> sendMessage() async {
    final smtpServer = gmail('mainul.ifa@gmail.com', 'Mainul2723');

    final message = Message()
      ..from = Address(emailAddressController.text, fullNameController.text)
      ..recipients.add('mainul.ifa@gmail.com')
      ..subject = emailSubjectController.text
      ..text = messageController.text;

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
      return true;
    } catch (e) {
      print('Error sending message: $e');
      return false;
    }
  }

  @override
  void dispose() {
    fullNameController.dispose();
    emailAddressController.dispose();
    mobileNumberController.dispose();
    emailSubjectController.dispose();
    messageController.dispose();
    super.dispose();
  }
}
