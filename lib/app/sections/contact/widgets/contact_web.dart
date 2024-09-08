import 'package:egorcpr/app/changes/strings.dart';
import 'package:egorcpr/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  bool isHover = false;
  List<bool> isTab = List.generate(3, (index) => false);
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus,
      child: Container(
        color: bgColor,
        padding:
            EdgeInsets.only(top: 10.h, bottom: 10.h, left: 13.w, right: 13.w),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                "Got any question?\nContact Organizer",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textColor,
                    fontFamily: "JosefinSans",
                    fontSize: screenWidth < 1500 ? 40 : 50,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Container(
                    height: screenWidth < 1300 ? 40.h : 60.h,
                    width: 23.w,
                    padding: EdgeInsets.symmetric(
                        horizontal: 2.w,
                        vertical: screenWidth < 1300 ? 5.h : 10.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(33),
                        color: secondaryColor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: screenWidth < 1300 ? 6.h : 10.h,
                              width: screenWidth < 1300 ? 6.h : 10.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: primaryColor),
                              child: Center(
                                child: Icon(
                                  Icons.email_outlined,
                                  size: screenWidth < 1300 ? 20 : 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {
                                launchEmailSubmission();
                              },
                              child: Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Email:',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'JosefinSans',
                                        fontSize: screenWidth < 1300 ? 18 : 30,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    emailAddress,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'JosefinSans',
                                        fontSize: screenWidth < 1300 ? 14 : 18,
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              )),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: screenWidth < 1300 ? 6.h : 10.h,
                              width: screenWidth < 1300 ? 6.h : 10.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: primaryColor),
                              child: Center(
                                child: Icon(
                                  Icons.phone_outlined,
                                  size: screenWidth < 1300 ? 20 : 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Phone Number:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'JosefinSans',
                                      fontSize: screenWidth < 1300 ? 18 : 30,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  phoneNumber,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'JosefinSans',
                                      fontSize: screenWidth < 1300 ? 14 : 18,
                                      fontWeight: FontWeight.w300),
                                )
                              ],
                            ))
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: screenWidth < 1300 ? 6.h : 10.h,
                              width: screenWidth < 1300 ? 6.h : 10.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: primaryColor),
                              child: Center(
                                child: Icon(
                                  Icons.alternate_email_outlined,
                                  size: screenWidth < 1300 ? 20 : 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {
                                launch("https://x.com/UgonnaJibunoh");
                              },
                              child: Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Twitter:',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'JosefinSans',
                                        fontSize: screenWidth < 1300 ? 18 : 30,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    twitter,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'JosefinSans',
                                        fontSize: screenWidth < 1300 ? 14 : 18,
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  SizedBox(
                      height: screenWidth < 1300 ? 40.h : 60.h,
                      width: 47.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  height: screenWidth < 1300 ? 6.h : 6.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2,
                                          color: isTab[0]
                                              ? secondaryColor
                                              : Colors.white),
                                      color: Colors.white54,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: TextFormField(
                                    controller: _nameController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your name';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      errorBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      hintText: "Name",
                                      hintStyle: TextStyle(
                                          color: textColor.withOpacity(.6),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                      enabledBorder: InputBorder.none,
                                    ),
                                    onTap: () {
                                      setState(() {
                                        for (int i = 0; i < isTab.length; i++) {
                                          i == 0
                                              ? isTab[0] = true
                                              : isTab[i] = false;
                                        }
                                      });
                                    },
                                    onTapOutside: (event) {
                                      setState(() {
                                        isTab[0] = false;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  height: screenWidth < 1300 ? 6.h : 6.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2,
                                          color: isTab[1]
                                              ? secondaryColor
                                              : Colors.white),
                                      color: Colors.white54,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: TextFormField(
                                    controller: _phoneController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter phone number';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      errorBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      hintText: "Phone",
                                      hintStyle: TextStyle(
                                          color: textColor.withOpacity(.6),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                      enabledBorder: InputBorder.none,
                                    ),
                                    onTap: () {
                                      setState(() {
                                        for (int i = 0; i < isTab.length; i++) {
                                          i == 1
                                              ? isTab[1] = true
                                              : isTab[i] = false;
                                        }
                                      });
                                    },
                                    onTapOutside: (event) {
                                      setState(() {
                                        isTab[1] = false;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              height: screenWidth < 1300 ? 10.h : 15.h,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2,
                                      color: isTab[2]
                                          ? secondaryColor
                                          : Colors.white),
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(20)),
                              child: TextFormField(
                                controller: _messageController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter message';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.multiline,
                                maxLines: 5,
                                decoration: InputDecoration(
                                  errorBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  hintText: "Message",
                                  hintStyle: TextStyle(
                                      color: textColor.withOpacity(.6),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                  enabledBorder: InputBorder.none,
                                ),
                                onTap: () {
                                  setState(() {
                                    for (int i = 0; i < isTab.length; i++) {
                                      i == 2
                                          ? isTab[2] = true
                                          : isTab[i] = false;
                                    }
                                  });
                                },
                                onTapOutside: (event) {
                                  setState(() {
                                    isTab[1] = false;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            transform: Matrix4.translationValues(
                                0, isHover ? -20 : 0, 0),
                            child: InkWell(
                              onHover: (value) {
                                setState(() {
                                  isHover = value;
                                });
                              },
                              onTap: () {
                                if (!_formKey.currentState!.validate()) {
                                  return;
                                }
                                launchEmailSubmission(
                                    body: _messageController.text,
                                    subject:
                                        "${_nameController.text}is trying to connect with you.");
                              },
                              child: Container(
                                height: 60,
                                width: 230,
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  color:
                                      isHover ? secondaryColor : primaryColor,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

void launchEmailSubmission({String? subject, String? body}) async {
  final Uri params = Uri(
      scheme: 'mailto',
      path: 'ugojibs@gmail.com',
      queryParameters: {
        'subject': subject ?? 'Default Subject',
        'body': body ?? 'Default body'
      });
  String url = params.toString();
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Could not launch $url');
  }
}
