import 'package:flutter/material.dart';
import 'package:jobee/cubits/chat_cubit/chat_cubit.dart';
import 'package:jobee/models/message_model.dart';
import 'package:jobee/widgets/bottom_nav_bar.dart';
import 'package:jobee/widgets/chat_widgets/chat_buble.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatPage extends StatelessWidget {
  static String id = 'ChatPage';

  TextEditingController messageController = TextEditingController();
  final scrollController = ScrollController();

  List<Message> messagesList = [];
  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Chat',
            style: TextStyle(
              color: Color(0xFF090F24),
              fontSize: 22,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ),
        leading: GestureDetector(
          onTap: () => Navigator.pushNamed(context, BottomNavBar.id),
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xFF072AC8),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<ChatCubit, ChatState>(
                builder: (context, state) {
                  var messagesList =
                      BlocProvider.of<ChatCubit>(context).messagesList;
                  return ListView.builder(
                      reverse: true,
                      controller: scrollController,
                      physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics(),
                      ),
                      itemCount: messagesList.length,
                      itemBuilder: (context, index) {
                        return messagesList[index].id == email
                            ? ChatBuble(
                                message: messagesList[index],
                              )
                            : ChatBubleForFriend(
                                message: messagesList[index],
                              );
                      });
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(color: Color(0xffBDBDBD)),
                ),
              ),
              child: TextField(
                controller: messageController,
                onSubmitted: (data) {
                  BlocProvider.of<ChatCubit>(context)
                      .sendMessages(message: data, email: email);
                  messageController.clear();
                  scrollController.animateTo(
                    0,
                    duration: const Duration(microseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
                decoration: const InputDecoration(
                  hintText: 'Send Message',
                  suffixIcon: Icon(
                    Icons.send_rounded,
                    color: Color(0xff848484),
                  ),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
