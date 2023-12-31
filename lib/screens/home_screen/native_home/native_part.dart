import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../models/feed_model.dart';
import '../../../utils/loading_indicator.dart';
import '../components/tweet_body.dart';

class NativeHome extends StatelessWidget {
  static String roteName = './native_part';
  const NativeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: StreamBuilder<dynamic>(
            stream: FirebaseFirestore.instance.collection('tweet').snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const LoadingIndicator();
              }
              return ListView.builder(
                  physics: const PageScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: ((context, index) {
                    FeedModel tweetdata =
                        FeedModel.fromMap(snapshot.data.docs[index].data());
                    return Column(
                      children: [
                        TweetBody(
                          tweet: tweetdata.description,
                          userName: 'FireFighter',
                          place: 'Nims',
                        ),
                      ],
                    );
                  }));
            }));
  }
}
