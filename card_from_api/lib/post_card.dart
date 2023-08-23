import "package:card_from_api/post.dart";
import "package:flutter/material.dart";

class PostCard extends StatelessWidget {
  final Post child;

  const PostCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 20,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                const TextSpan(
                    text: "Id: ",
                    style: TextStyle(fontWeight: FontWeight.w600)),
                TextSpan(
                  text: "${child.id}",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                const TextSpan(
                    text: "UserId: ",
                    style: TextStyle(fontWeight: FontWeight.w600)),
                TextSpan(
                  text: "${child.userId}",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                const TextSpan(
                    text: "Title: ",
                    style: TextStyle(fontWeight: FontWeight.w600)),
                TextSpan(
                  text: child.title,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                const TextSpan(
                    text: "Description: ",
                    style: TextStyle(fontWeight: FontWeight.w600)),
                TextSpan(
                  text: child.body,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
