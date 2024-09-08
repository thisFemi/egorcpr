import 'package:egorcpr/app/changes/strings.dart';
import 'package:egorcpr/app/sections/contact/widgets/contact_web.dart';
import 'package:egorcpr/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactTab extends StatefulWidget {
  const ContactTab({super.key});

  @override
  State<ContactTab> createState() => _ContactTabState();
}

class _ContactTabState extends State<ContactTab> {
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
        padding: EdgeInsets.only(top: 5.h, bottom: 5.h, left: 5.w, right: 5.w),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                "Got any question?\nContact Organizers",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textColor,
                    fontFamily: "JosefinSans",
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: secondaryColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              launchEmailSubmission();
                            },
                            child: Row(
                              children: [
                                Container(
                                  height: 4.h,
                                  width: 4.h,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: primaryColor),
                                  child: Center(
                                    child: Icon(
                                      Icons.email_outlined,
                                      size: 15,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Email:',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'JosefinSans',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      emailAddress,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'JosefinSans',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 4.h,
                                width: 4.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: primaryColor),
                                child: Center(
                                  child: Icon(
                                    Icons.phone_outlined,
                                    size: 15,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Phone Number:',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'JosefinSans',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    phoneNumber,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'JosefinSans',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              ))
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          InkWell(
                            onTap: () {
                              launch("https://x.com/UgonnaJibunoh");
                            },
                            child: Row(
                              children: [
                                Container(
                                  height: 4.h,
                                  width: 4.h,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: primaryColor),
                                  child: Center(
                                    child: Icon(
                                      Icons.alternate_email_outlined,
                                      size: 14,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Twitter:',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'JosefinSans',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      twitter,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'JosefinSans',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  height: 60,
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
                                  height: 60,
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
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            height: 130,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2,
                                    color: isTab[2]
                                        ? secondaryColor
                                        : Colors.white),
                                color: Colors.white54,
                                borderRadius: BorderRadius.circular(20)),
                            child: TextFormField(
                              maxLines: 3,
                              controller: _messageController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter message';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
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
                                    i == 2 ? isTab[2] = true : isTab[i] = false;
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
                          SizedBox(
                            height: 2.h,
                          ),
                          InkWell(
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
                              height: 40,
                              width: 130,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: isHover ? secondaryColor : primaryColor,
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
