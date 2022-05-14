// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackit3/screens/HomePage.dart';
import 'package:hackit3/screens/Signup.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

class AddChild extends StatelessWidget {
  const AddChild({Key? key}) : super(key: key);


  openBrowserTab() async {
    FlutterWebBrowser.openWebPage(
      url: "https://widget.tryterra.co/session/xxxx-xxxx-xxxx-xxxx-xxxx",
      customTabsOptions: const CustomTabsOptions(
        colorScheme: CustomTabsColorScheme.dark,
        toolbarColor: Colors.deepPurple,
        secondaryToolbarColor: Colors.green,
        navigationBarColor: Colors.amber,
        shareState: CustomTabsShareState.on,
        instantAppsEnabled: true,
        showTitle: true,
        urlBarHidingEnabled: true,
      ),
      safariVCOptions: const SafariViewControllerOptions(
        barCollapsingEnabled: true,
        preferredBarTintColor: Colors.green,
        preferredControlTintColor: Colors.amber,
        dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
        modalPresentationCapturesStatusBarAppearance: true,
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.transparent,
          //remove shadows
          elevation: 0,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          backgroundColor: const Color(0xFFFAFCFB),
          elevation: 0,
        ),
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Add new Child",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    color: Color(0Xff0A2342),
                    fontSize: 29,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'assets/avatar.png',
                      scale: 0.6,
                      // color: Color(0xff0A2342),
                    ),
                  ),
                ),
                
                Center(
                  child:Text(
                    "Choose an avatar",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      color: Color(0Xff0A2342),
                      fontSize: 18,
                      
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              filled: true,
                              fillColor: Color(0xffF6F6F6),
                              hintText: "Name",
                              hintStyle: const TextStyle(
                                  color: Color(0xff908E8E),
                                  fontFamily: 'Inter'),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color: Color(0xff2CA58D).withOpacity(0.5)),
                                borderRadius: BorderRadius.circular(25),
                              )),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 40,
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              filled: true,

                              fillColor: Color(0xffF6F6F6),
                              hintText: "Age",
                              hintStyle: const TextStyle(
                                  color: Color(0xff908E8E),
                                  fontFamily: 'Inter'),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color: Color(0xff2CA58D).withOpacity(0.5)),
                                borderRadius: BorderRadius.circular(25),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                  ),
                ),
                Column(
                  children: [
                    Center(
                        child: Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextButton(
                        onPressed: () => openBrowserTab(),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          )),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xff8ABFCB)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "NEXT",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  fontFamily: 'Lato',
                                  color: Colors.white),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                          ],
                        ),
                      ),
                    )),
                    SizedBox(
                      height: 30,
                    )
                   
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
