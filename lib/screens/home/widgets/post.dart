import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/dp2.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .57,
                        width: 2,
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Username & Verification
                    const Row(
                      children: [
                        Text(
                          "codewithdallah",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.verified,
                          color: Colors.blue,
                          size: 16,
                        )
                      ],
                    ),
                    // Post
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .7,
                      child: const Text(
                          "This place is called “Sealand” it is 4 KM off the coast of the UK. It was a military structure that was later abandoned."),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .5,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/13.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/like.svg",
                          colorFilter: const ColorFilter.mode(
                              Colors.black, BlendMode.srcIn),
                        ),
                        const SizedBox(width: 15),
                        SvgPicture.asset(
                          "assets/icons/comment.svg",
                          colorFilter: const ColorFilter.mode(
                              Colors.black, BlendMode.srcIn),
                        ),
                        const SizedBox(width: 15),
                        SvgPicture.asset(
                          "assets/icons/repeat.svg",
                          colorFilter: const ColorFilter.mode(
                              Colors.black, BlendMode.srcIn),
                        ),
                        const SizedBox(width: 15),
                        SvgPicture.asset(
                          "assets/icons/share.svg",
                          colorFilter: const ColorFilter.mode(
                              Colors.black, BlendMode.srcIn),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "15h",
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.more_horiz),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 38,
                  height: 32,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: const Stack(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundImage: AssetImage("assets/images/17.jpg"),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                          radius: 7,
                          backgroundImage: AssetImage("assets/images/15.jpg"),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: CircleAvatar(
                          radius: 6,
                          backgroundImage: AssetImage("assets/images/11.jpg"),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "40 replies",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(width: 3),
                const Text("•",
                    style: TextStyle(color: Colors.grey)), // Dot divider
                const SizedBox(width: 3),
                const Text(
                  "396 likes",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Divider(
              color: Colors.grey.shade200,
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
