import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeChat extends StatefulWidget {
  const HomeChat({super.key});

  @override
  State<HomeChat> createState() => _HomeChatState();
}
class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;

   const Message({
    required this.text,
    required this.date,
    required this.isSentByMe,

  });
}
class _HomeChatState extends State<HomeChat> {
  List<Message> messages =[
    Message(text: "Doctor, I've been having these sudden shaking episodes",date: DateTime.now().subtract(const Duration(days:3,minutes: 3)),isSentByMe: true,),
    Message(text: "Tell me more about them, John. How do they feel?",date: DateTime.now().subtract(const Duration(days:3,minutes: 3)),isSentByMe: false,),
    Message(text: "It's like a sudden jolt, and then I'm lost for a moment",date: DateTime.now().subtract(const Duration(days:3,minutes: 3)),isSentByMe: true,),
    Message(text: "How often does this happen?",date: DateTime.now().subtract(const Duration(days:3,minutes: 3)),isSentByMe: false),
    Message(text: "Sometimes a few times a week, but it's unpredictable",date: DateTime.now().subtract(const Duration(days:3,minutes: 3)),isSentByMe: true),
    Message(text: "Stressful situations trigger them ?",date: DateTime.now().subtract(const Duration(days:3,minutes: 3)),isSentByMe: false),
    Message(text: "Sometimes, but not always",date: DateTime.now().subtract(const Duration(days:3,minutes: 3)),isSentByMe: true),
    Message(text: "Let's run some tests to understand this better",date: DateTime.now().subtract(const Duration(days:3,minutes: 3)),isSentByMe: false),
    Message(text: "Will I need medication?",date: DateTime.now().subtract(const Duration(days:3,minutes: 3)),isSentByMe: true),
    Message(text: "Possibly. We'll decide based on the results",date: DateTime.now().subtract(const Duration(days:3,minutes: 3)),isSentByMe: false),
    Message(text: "Thank you, doctor. I'm worried about this.",date: DateTime.now().subtract(const Duration(days:3,minutes: 3)),isSentByMe: true),
    Message(text: "Doctor, I've been having these sudden shaking episodes",date: DateTime.now().subtract(const Duration(days:3,minutes: 3)),isSentByMe: true,),
    Message(text: "Tell me more about them, John. How do they feel?",date: DateTime.now().subtract(const Duration(days:3,minutes: 3)),isSentByMe: false,),
    Message(text: "It's like a sudden jolt, and then I'm lost for a moment",date: DateTime.now().subtract(const Duration(days:3,minutes: 3)),isSentByMe: true,),
    Message(text: "How often does this happen?",date: DateTime.now().subtract(const Duration(days:3,minutes: 3)),isSentByMe: false),
    Message(text: "Sometimes a few times a week, but it's unpredictable",date: DateTime.now().subtract(const Duration(days:3,minutes: 3)),isSentByMe: true),
    Message(text: "Stressful situations trigger them ?",date: DateTime.now().subtract(const Duration(days:3,minutes: 3)),isSentByMe: false),
    Message(text: "Sometimes, but not always",date: DateTime.now().subtract(const Duration(days:3,minutes: 3)),isSentByMe: true),
  ];
  final _textController=TextEditingController();
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Expanded(child:ListView.builder(
        controller: _scrollController,
        itemCount: messages.length,
        itemBuilder: (BuildContext context, int index) {
          final item = messages[index];
          return Align(
            alignment: item.isSentByMe ? Alignment.centerRight:Alignment.centerLeft,
            child:Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),),
              color: item.isSentByMe ? Color(0xFFD5E2EB):Colors.grey.shade200,
              elevation: 8,
              margin: item.isSentByMe?EdgeInsets.fromLTRB(50, 0, 0, 20):EdgeInsets.fromLTRB(0, 0, 50, 20),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(item.text),
              ),
            ),
          )
          ; // Replace with your list item widget
        },
      ),),
      Container(
        color: Colors.grey.shade200,
        child:
          TextField(
            controller: _textController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.grey),
              ),
              contentPadding: EdgeInsets.all(12),
              hintText: 'Type your message here ...',
              suffixIcon: IconButton(
                onPressed: (){
                  final message =Message(text: _textController.text, date: DateTime.now(), isSentByMe: true);
                  setState(() {
                    messages.add(message);
                  });
                  _textController.clear();
                },
                icon: Icon(Icons.send),
              ),
            ),
          ),
        ),
      SizedBox(height: 30,)
    ],
    );
  }
}


