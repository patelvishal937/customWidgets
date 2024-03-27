import 'package:authexample/assignment_ui/screens/feedback_rating_screen.dart';
import 'package:authexample/assignment_ui/utils/app_textstyle.dart';
import 'package:authexample/assignment_ui/widgets/quest_lable_widget.dart';
import 'package:flutter/material.dart';

class FeedBackFormScreen extends StatelessWidget {
  const FeedBackFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
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
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => FeedBackRatingScreen()));
                            },
                            child: customListviewItem(
                                assetImage: 'assets/images/icon1.jpeg',
                                title: 'General feedback',
                                subTitle: 'Provide the required information'),
                          ),
                          customListviewItem(
                              assetImage: 'assets/images/icon2.jpeg',
                              title: 'Report a bug',
                              subTitle: 'Provide the required information'),
                          customListviewItem(
                              assetImage: 'assets/images/icon3.jpeg',
                              title: 'Feature request',
                              subTitle:
                                  'Select and image and upload your logo'),
                          customListviewItem(
                              assetImage: 'assets/images/icon4.jpeg',
                              title: 'Contact us',
                              subTitle: 'Invite other admins and moderators'),
                          const QuestLableWidget()
                        ],
                      ),
                    );
                  });
            },
            child: const Text("navigation")),
      ),
    );
  }

  Widget customListviewItem(
      {required String assetImage,
      required String title,
      required String subTitle}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            // D:\intersnhip\date 17 10\authexample\assets\images\icon1.jpeg
            backgroundImage: ExactAssetImage(assetImage),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyle.titleTextStyle,
                  ),
                  Text(
                    subTitle,
                    style: AppTextStyle.subTitleTextStyle,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
    //   ListTile(
    //   leading: CircleAvatar(
    //     // D:\intersnhip\date 17 10\authexample\assets\images\icon1.jpeg
    //     backgroundImage: ExactAssetImage(assetImage),
    //   ),
    //   title: Text(
    //     title,
    //     style: AppTextStyle.titleTextStyle,
    //   ),
    //   subtitle: Text(
    //     subTitle,
    //     style: AppTextStyle.subTitleTextStyle,
    //   ),
    // );
  }
}
