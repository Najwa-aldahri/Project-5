// import 'package:flutter/material.dart';
// import 'package:vlog_project/screens/Guest_Screens/full_page_news_screen.dart';
// import 'package:vlog_project/screens/User_Screens/user_blog_page_screen.dart';
// import 'package:vlog_project/widget/card_view_viedo.dart';

// class UserAiContntScreen extends StatelessWidget {
//   const UserAiContntScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xff111111),
//       body: SingleChildScrollView(
//         // Makes the content scrollable
//         child: Column(
//           children: [
//             const SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Stack(
//                   children: [
//                     Image.asset(
//                       "assets/drone_biger.png",
//                       width: 430,
//                     ),
//                     const Positioned(
//                         top: 160,
//                         child: Text(
//                           "  DJI • Jul 10, 2023",
//                           style: TextStyle(color: Colors.white),
//                         )),
//                     const Positioned(
//                         top: 190,
//                         child: Text(
//                           "  A month with DJI Mini 3 Pro",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.white),
//                         )),
//                     const Positioned(
//                         top: 180,
//                         right: 10,
//                         child: Icon(
//                           Icons.arrow_outward_sharp,
//                           color: Colors.white,
//                         ))
//                   ],
//                 )
//               ],
//             ),
//             const SizedBox(height: 10),
//             const SizedBox(
//               width: 450, // Set a fixed width for the divider
//               child: Divider(
//                 color: Colors.grey,
//                 thickness: 1,
//               ),
//             ),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Top Stories",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16),
//                 ),
//                 SizedBox(width: 300),
//                 Text(
//                   "See all",
//                   style: TextStyle(color: Colors.grey),
//                 )
//               ],
//             ),
//             const SizedBox(height: 10),
//             const CardView(
//               screentogo: UserBlogPage(),
//               title: "Kyle Barr",
//               subtitle:
//                   "Now Google’s Bard AI can talk\n& respond to visual prompts",
//               date: "Jul 13, 2023 • 2 min read",
//               imagePath: "assets/instagram.png",
//             ),
//             const SizedBox(height: 10),
//             const CardView(
//                 screentogo: UserBlogPage(),
//                 title: "Jeremy Morgan",
//                 subtitle: "WatchOS 10 preview: widgets\nall the way down",
//                 date: "Jul 10, 2023 • 4 min read",
//                 imagePath: "assets/desk.png"),
//             const SizedBox(height: 10),
//             const CardView(
//                 screentogo: UserBlogPage(),
//                 title: "Amber Israelsen",
//                 subtitle:
//                     "How Gen Z are disrupting the\ndefinition of ‘prestigious’ jobs",
//                 date: "Jul 24, 2023 • 8 min read",
//                 imagePath: "assets/bus.png"),
//             const SizedBox(height: 10),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:vlog_project/model/blog_model.dart';
// import 'package:vlog_project/screens/User_Screens/user_blog_page_screen.dart';
// import 'package:vlog_project/widget/user_card_view.dart'; // Make sure to import UserCardView

// class UserAiContentScreen extends StatelessWidget {
//   final List<Blog> blogs;

//   const UserAiContentScreen({Key? key, required this.blogs}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xff111111),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Stack(
//                   children: [
//                     Image.asset(
//                       "assets/drone_biger.png",
//                       width: 430,
//                     ),
//                     const Positioned(
//                       top: 160,
//                       child: Text(
//                         "  DJI • Jul 10, 2023",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                     const Positioned(
//                       top: 190,
//                       child: Text(
//                         "  A month with DJI Mini 3 Pro",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     const Positioned(
//                       top: 180,
//                       right: 10,
//                       child: Icon(
//                         Icons.arrow_outward_sharp,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             const SizedBox(height: 10),
//             const SizedBox(
//               width: 450,
//               child: Divider(
//                 color: Colors.grey,
//                 thickness: 1,
//               ),
//             ),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Top Stories",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16,
//                   ),
//                 ),
//                 SizedBox(width: 300),
//                 Text(
//                   "See all",
//                   style: TextStyle(color: Colors.grey),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 10),

//             // Dynamically generated list of UserCardViews based on blogs
//             for (var blog in blogs)
//               Column(
//                 children: [
//                   UserCardView(
//                     blog: blog,
//                     screentogo: UserBlogPage(blog: blog),
//                     title: blog.title,
//                     subtitle: blog.summary,
//                     date: "${blog.date.toLocal()} • ${blog.minutesToRead} min read",
//                     imagePath: blog.imageUrl,
//                   ),
//                   const SizedBox(height: 10),
//                 ],
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:vlog_project/model/blog_model.dart';
import 'package:vlog_project/screens/User_Screens/user_blog_page_screen.dart';
import 'package:vlog_project/widget/user_card_view.dart';

class UserAiContentScreen extends StatelessWidget {
  final List<Blog> blogs;
  final Function(Blog blog)? onSave;  // Add the onSave parameter

  const UserAiContentScreen({Key? key, required this.blogs, this.onSave}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff111111),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/drone_biger.png",
                      width: 430,
                    ),
                    const Positioned(
                      top: 160,
                      child: Text(
                        "  DJI • Jul 10, 2023",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Positioned(
                      top: 190,
                      child: Text(
                        "  A month with DJI Mini 3 Pro",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 180,
                      right: 10,
                      child: Icon(
                        Icons.arrow_outward_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            const SizedBox(
              width: 450,
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Top Stories",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 300),
                Text(
                  "See all",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 10),
            for (var blog in blogs)
              Column(
                children: [
                  UserCardView(
                    blog: blog,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserBlogPage(blog: blog),
                        ),
                      );
                    },
                    onSave: onSave != null ? () => onSave!(blog) : null,  // Pass the onSave callback
                  ),
                  const SizedBox(height: 10),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
