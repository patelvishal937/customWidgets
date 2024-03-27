import 'package:authexample/assignment_ui/screens/feedback_home_screen.dart';
import 'package:authexample/assignment_ui/utils/app_color.dart';

import 'package:authexample/assignment_ui/widgets/custom_container.dart';
import 'package:authexample/assignment_ui/widgets/custom_elevated_button.dart';
import 'package:authexample/assignment_ui/widgets/custom_rate_us_widget.dart';
import 'package:authexample/assignment_ui/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../utils/app_textstyle.dart';
import '../widgets/quest_lable_widget.dart';

class FeedBackRatingScreen extends StatefulWidget {
  const FeedBackRatingScreen({super.key});

  @override
  State<FeedBackRatingScreen> createState() => _FeedBackRatingScreenState();
}

class _FeedBackRatingScreenState extends State<FeedBackRatingScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController rateUsController = TextEditingController();
    String rateUsCharacter;
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xffFFFFFF),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(

              decoration: BoxDecoration(
                color: Colors.white, // Container background color
                borderRadius: BorderRadius.circular(12), // Container border radius
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 5, // How far the shadow should spread
                    blurRadius: 7, // Soften the shadow
                    offset: Offset(0, 3), // Shadow position, positive values are below the object
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customAppBarWidget(),
                    const Divider(thickness: 2, color: Color(0xffEFEFEF)),
                    CustomTextField(
                        titleOfTextField: 'Enter Full Name',
                        hitText: "e.g Mark Zuckerburg",
                        controller: nameController),
                    CustomTextField(
                        titleOfTextField: 'Email Address',
                        hitText: "e.g Product Manager",
                        controller: emailController),

                    CustomTextField(
                      titleOfTextField: 'Tell something about you',
                      hitText: "Write your message here...",
                      controller: rateUsController,
                      maxLines: 7,
                      padding: EdgeInsets.all(16),
                      onChanged: (val) {},
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 20),
                      child: Text(
                        "${rateUsController.text.length}/120 characters",
                        style: const TextStyle(
                            color: Color(0xffB9B9B9),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:  14.0,vertical: 6),
                      child: CustomRateUsWidget(),
                    ),
                   CustomElevatedButton
                     (buttonText: "Send Feedback", onTap: (){
                       print("heheh");
                     customDilogueBox();
                   }),

                  const Padding(
                     padding:  EdgeInsets.symmetric(horizontal: 16.0 ,vertical: 16),
                     child:  QuestLableWidget(),
                   )
                    // const  Expanded(child: )
                  ],
                ),
              ),
            ),
          )),
    );
  }


  // customAppbarWidget
  Widget customAppBarWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16).copyWith(bottom: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  "General Feedback",
                  style: TextStyle(
                      color: AppColor.appTitleTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Icon(Icons.close),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  " Welcome back, Please complete your details",
                  style: TextStyle(
                      color: Color(0xff939393),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


   // customDiloguebox
   customDilogueBox (){
   return showDialog(context: context, builder: (BuildContext context){
     return AlertDialog(
       // title: Text("Success"),
       // titleTextStyle: TextStyle(
       //     fontWeight: FontWeight.bold,
       //     color: Colors.black,
       //     fontSize: 20),
       backgroundColor: const Color(0xfffFFFFFF),
       shape: const RoundedRectangleBorder(
           borderRadius: BorderRadius.all(Radius.circular(20))),
       content: Column(
         mainAxisSize: MainAxisSize.min,
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               IconButton(onPressed: (){
                 Navigator.pop(context);
               }, icon:const Icon(Icons.close,size: 16,)),

             ],
           ),
          const Padding(
             padding:  EdgeInsets.symmetric(vertical: 20.0),
             child:  CircleAvatar(
               backgroundImage: ExactAssetImage('assets/images/submittedIcon.jpeg'),
               radius: 36,
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               children: [

                 Text(
                   "Feedback Submitted",
                   style: TextStyle(
                       color: AppColor.appTitleTextColor,
                       fontSize: 20,
                       fontWeight: FontWeight.w500),
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 8.0),
                   child: Text(
                     "Thanks for submitting your feedback with us. We appreciate your review and will assure you to surely consider them",
                     style: TextStyle(
                         color: AppColor.appSubTitleTextColor ,
                         fontSize: 12,
                         fontWeight: FontWeight.w400),
                   ),
                 ),
               ],
             ),
           ),

           Padding(
             padding: const EdgeInsets.symmetric(vertical: 8.0).copyWith(bottom: 16),
             child: CustomElevatedButton(
               buttonText: "Go to home!",
               onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const FeedBackFormScreen()));
               },
             )

           ),

          const Padding(
             padding: const EdgeInsets.symmetric(horizontal: 6.0),
             child: const QuestLableWidget(),
           )
         ],
       ),
     );
   });

  }

}
