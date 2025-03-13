import 'package:flutter/material.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

import 'components/socal_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "Contact Me",
            subTitle: "For Project inquiry and information",
            color: Color(0xFF07E24A),
          ),
          ContactBox(),
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocalCard(
                color: Color(0xFFD9FFFC),
                iconSrc: "assets/images/skype.png",
                name: 'TheFlutterWay',
                press: () {},
              ),
              SocalCard(
                color: Color(0xFFE4FFC7),
                iconSrc: "assets/images/whatsapp.png",
                name: 'TheFlutterWay',
                press: () {},
              ),
              SocalCard(
                color: Color(0xFFE8F0F9),
                iconSrc: "assets/images/messanger.png",
                name: 'TheFlutterWay',
                press: () {},
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _projectTypeController = TextEditingController();
  final _budgetController = TextEditingController();
  final _descriptionController = TextEditingController();

  // void _sendEmail() async {
  //   if (!_formKey.currentState!.validate()) return;

  //   final smtpServer = SmtpServer(
  //     'smtp.zeptomail.com',
  //     port: 587,
  //     username: 'emailapikey',
  //     password:
  //         'wSsVR60g+Rf4X616lTyoIL9skFVcDlOnEEV40Qbwv3P5H/6QoMczxUfHBleiSvlOETNqFTAXor4hnhhR0DJfiogom19UCCiF9mqRe1U4J3x17qnvhDzDVm9akBuJLo0NwgtvkmZoE8kr+g==',
  //     ssl: false,
  //   );

  //   final message = Message()
  //     ..from = Address(_emailController.text, 'Portfolio Mail')
  //     ..recipients.add('sshibil379@gmail.com')
  //     ..subject = 'New Inquiry from ${_nameController.text}'
  //     ..text =
  //         'Name: ${_nameController.text}\nEmail: ${_emailController.text}\nProject Type: ${_projectTypeController.text}\nBudget: ${_budgetController.text}\nDescription: ${_descriptionController.text}'
  //     ..html =
  //         '<p><strong>Name:</strong> ${_nameController.text}</p><p><strong>Email:</strong> ${_emailController.text}</p><p><strong>Project Type:</strong> ${_projectTypeController.text}</p><p><strong>Budget:</strong> ${_budgetController.text}</p><p><strong>Description:</strong> ${_descriptionController.text}</p>';

  //   try {
  //     final sendReport = await send(message, smtpServer);
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text('Email sent successfully!')),
  //     );
  //   } catch (e) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text('Failed to send email: $e')),
  //     );
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              controller: _nameController,
              validator: (value) => value!.isEmpty ? 'Enter your name' : null,
              decoration: InputDecoration(
                labelText: "Your Name",
                hintText: "Enter Your Name",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              controller: _emailController,
              validator: (value) => value!.isEmpty || !value.contains('@')
                  ? 'Enter valid email'
                  : null,
              decoration: InputDecoration(
                labelText: "Email Address",
                hintText: "Enter your email address",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              controller: _projectTypeController,
              decoration: InputDecoration(
                labelText: "Project Type",
                hintText: "Enter Project Type",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              controller: _budgetController,
              decoration: InputDecoration(
                labelText: "Project Budget",
                hintText: "Enter Project Budget",
              ),
            ),
          ),
          SizedBox(
            child: TextFormField(
              controller: _descriptionController,
              decoration: InputDecoration(
                labelText: "Description",
                hintText: "Enter Description",
              ),
              maxLines: 5,
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: "assets/images/contact_icon.png",
                text: "Contact Me!",
                press: () {}
                //  _sendEmail
                ,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
