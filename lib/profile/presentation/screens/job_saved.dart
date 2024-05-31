import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jobee/core/core.dart';
import 'package:jobee/core/widgets/my_app_bar.dart';

class CreateJobSaved extends StatelessWidget {
  const CreateJobSaved({super.key});

  static const String id = 'CreateJobSaved ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context: context, title: 'Job Saved'),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              onTap: () {},
              title: Row(
                  //  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsetsDirectional.all(10),
                      //color: Colors.blue,
                      height: 60,
                      width: 60,
                      child: const CircleAvatar(
                        // backgroundColor:Colors.cyan ,
                        backgroundImage: AssetImage(
                          AssetsPath.finalcv,
                          // height:700,width:200
                        ),
                      ),
                    ),
                    //SizedBox(height: 30,),

                    const Column(
                      children: [
                        // SizedBox(height: 5,),
                        Text(
                          "Junior UI/UX Designer",
                          style: TextStyle(
                              fontSize: 16,
                              height: 1.5,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Montserrat',
                              color: Color(0xFF000000)),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          "Synopsys Software House",
                          style: TextStyle(
                              fontSize: 15,
                              height: 1.5,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              color: Color(0xFF000000)),
                        ),
                      ],
                    ),

                    const Spacer(),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.add_box)),
                  ]),
            ),
            const Column(
              children: [
                Text(
                  "Cairo, Egypt, (on site), Part Time",
                  style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                      color: Color(0xFF000000)),
                ),
                SizedBox(
                  height: 1,
                ),
                Divider(
                  color: Color(0xFF848484),
                  thickness: .3,
                ),
                Text(
                  "3 weeks ago • Over 100 applicants . 8 connections",
                  style: TextStyle(
                    fontSize: 12,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                    color: Color(0xFF000000),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      // SizedBox(width: 20,),

      //leading: ,
    );
  }
}
