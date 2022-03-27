import 'package:flutter/material.dart';
import 'package:flutter_instagram/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kBlackColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kBlackColor),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      appBar: appBar(),
      body: body(),
      bottomNavigationBar: bottomNavBar(),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      backgroundColor: kBlackColor,
      title: SizedBox(
        width: 103,
        height: 30,
        child: Image.asset('assets/icons/icon_logo.png'),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('assets/icons/icon_add.png'),
          ),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        IconButton(
          onPressed: () {},
          icon: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('assets/icons/icon_love.png')
          ),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        IconButton(
          onPressed: () {},
          icon: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('assets/icons/icon_send.png')
          ),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
      ],
    );
  }

  Widget body() {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              StoryItem(
                imageUrl: 'assets/images/image_story1.png',
                title: 'Your story',
                seen: false
              ),
              StoryItem(
                imageUrl: 'assets/images/image_story2.png',
                title: 'andri.fanky',
                seen: false
              ),
              StoryItem(
                imageUrl: 'assets/images/image_story3.png',
                title: 'buildwith...',
                seen: false
              ),
              StoryItem(
                imageUrl: 'assets/images/image_story4.png',
                title: 'dicoding',
                seen: false
              ),
              StoryItem(
                imageUrl: 'assets/images/image_story5.png',
                title: 'duniacod...',
                seen: false
              ),
              StoryItem(
                imageUrl: 'assets/images/image_story6.png',
                title: 'lukanana...',
                seen: true
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: kLineColor,
        ),
        const PostItem(postImageUrl: 'assets/images/image_post1.png', description: '[Free Source Code] - WhatsApp App UI using Flutter', postDate: 'March 7'),
        const PostItem(postImageUrl: 'assets/images/image_post2.png', description: '[Free Source Code] - Telegram App UI using Flutter', postDate: 'March 14'),
      ],
    );
  }

  BottomNavigationBar bottomNavBar() {
    return BottomNavigationBar(
      backgroundColor: kBlackColor,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: 'home',
          tooltip: '',
          icon: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('assets/icons/icon_home.png')
          ),
        ),
        BottomNavigationBarItem(
          label: 'search',
          tooltip: '',
          icon: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('assets/icons/icon_search.png')
          ),
        ),
        BottomNavigationBarItem(
          label: 'reels',
          tooltip: '',
          icon: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('assets/icons/icon_reels.png')
          ),
        ),
        BottomNavigationBarItem(
          label: 'shop',
          tooltip: '',
          icon: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('assets/icons/icon_shop.png')
          ),
        ),
        BottomNavigationBarItem(
          label: 'profile',
          tooltip: '',
          icon: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('assets/icons/icon_profile.png')
          ),
        ),
      ]
    );
  }
}

class StoryItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final bool seen;

  const StoryItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.seen
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultMargin),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.only(bottom: 5),
            decoration: title == 'Your story' ?
            BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
            ) : 
            BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              border: seen ?
              Border.all(
                color: kGreyColor,
                width: 1,
              ) :
              Border.all(
                color: Colors.red.shade400,
                width: 2,
              ),
            ),
          ),
          Text(title, style: const TextStyle(color: kWhiteColor, fontSize: 13)),
        ],
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  final String postImageUrl;
  final String description;
  final String postDate;

  const PostItem({
    Key? key,
    required this.postImageUrl,
    required this.description,
    required this.postDate
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 10,
          ),
          child: Row(
            children: [
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/image_story2.png'),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  border: Border.all(
                    color: Colors.red.shade400,
                    width: 2,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                'andri.fanky',
                style: TextStyle(color: kWhiteColor, fontWeight: medium),
              ),
              const Spacer(),
              const Icon(
                Icons.more_vert,
                color: kWhiteColor,
              ),
            ],
          ),
        ),
        Image.asset(
          postImageUrl,
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/icons/icon_love.png',
                width: 24,
              ),
              const SizedBox(
                width: 18,
              ),
              Image.asset(
                'assets/icons/icon_comment.png',
                width: 24,
              ),
              const SizedBox(
                width: 18,
              ),
              Image.asset(
                'assets/icons/icon_send.png',
                width: 24,
              ),
              const Spacer(),
              Image.asset(
                'assets/icons/icon_save.png',
                width: 24,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/image_like.png',
                    width: 32,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Liked by ',
                    style: TextStyle(color: kWhiteColor, fontWeight: medium),
                  ),
                  Text(
                    'andri.fanky and 999 others',
                    style: TextStyle(color: kWhiteColor,fontWeight: semiBold),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    'andri.fanky',
                    style: TextStyle(color: kWhiteColor, fontWeight: semiBold),
                  ),
                  Flexible(
                    child: Text(
                      '  $description',
                      style: TextStyle(color: kWhiteColor, fontWeight: light),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                'View all 82 comments',
                style: TextStyle(color: kGreyColor),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/icon_profile.png',
                    width: 26,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Add a comment...',
                    style: TextStyle(color: kGreyColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                postDate,
                style: const TextStyle(color: kGreyColor, fontSize: 11),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
