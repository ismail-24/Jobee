import 'package:flutter/material.dart';
import 'package:jobee/widgets/chat_widgets/chat_tile.dart';
import 'package:jobee/widgets/chat_widgets/chats_list_appBar.dart';
import 'package:jobee/widgets/chat_widgets/custom_search_bar.dart';

class ChatsListPage extends StatelessWidget {
  ChatsListPage({super.key});
  static String id = 'ChatsList';

  List<Widget> chatsList = const [
    CustomSearchBar(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile(),
    ChatTile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        title: const ChatsListAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
          itemCount: chatsList.length,
          itemBuilder: (context, value) {
            return chatsList[value];
          },
        ),
      ),
    );
  }
}
