import 'package:AquaScapeBali/datamodels/gallery_details_model.dart';
import 'package:AquaScapeBali/widgets/gallery_details/gallery_details.dart';
import 'package:flutter/material.dart';
import 'image_description.dart';
import 'show_image.dart';

class ImageContent {
  final String title;
  final String url;
  final String description;
  ImageContent(this.title, this.url, this.description);
}

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // resizeToAvoidBottomPadding: false,
        Column(
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
        GalleryDetails(
          details: GalleryDetailsModel(
            title: 'Gallery',
            description:
                "Here's some samples that we've created and also sold to our customers",
          ),
        ),
        SizedBox(
          height: 75,
        ),
        Expanded(
          child: GridView.count(
            // primary: false,
            // padding: const EdgeInsets.all(0),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 5,
            children: <Widget>[
              InkWell(
                child: Stack(
                  children: <Widget>[
                    ShowImage(
                      url: "assets/images/image1.jpg",
                      description: "Style description",
                      title: "Sample 1",
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ImageDescription(
                        image: ImageContent('Sample 1',
                            'assets/images/image1.jpg', "Style description"),
                      ),
                    ),
                  );
                },
              ),
              InkWell(
                child: Stack(
                  children: <Widget>[
                    ShowImage(
                      url: "assets/images/image2.jpg",
                      description: "Style description",
                      title: "Sample 2",
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ImageDescription(
                        image: ImageContent('Sample 2',
                            'assets/images/image2.jpg', "Style description"),
                      ),
                    ),
                  );
                },
              ),
              InkWell(
                  child: Stack(
                    children: <Widget>[
                      ShowImage(
                        url: "assets/images/image3.jpg",
                        description: "Style description",
                        title: "Sample 3",
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageDescription(
                          image: ImageContent('Sample 3',
                              'assets/images/image3.jpg', "Style description"),
                        ),
                      ),
                    );
                  }),
              InkWell(
                  child: Stack(
                    children: <Widget>[
                      ShowImage(
                        url: "assets/images/image4.jpg",
                        description: "Style description",
                        title: "Sample 4",
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageDescription(
                          image: ImageContent('Sample 4',
                              'assets/images/image4.jpg', "Style description"),
                        ),
                      ),
                    );
                  }),
              InkWell(
                  child: Stack(
                    children: <Widget>[
                      ShowImage(
                        url: "assets/images/image5.jpg",
                        description: "Style description",
                        title: "Sample 5",
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageDescription(
                          image: ImageContent('Sample 5',
                              'assets/images/image5.jpg', "Style description"),
                        ),
                      ),
                    );
                  }),
              InkWell(
                  child: Stack(
                    children: <Widget>[
                      ShowImage(
                        url: "assets/images/image6.jpg",
                        description: "Style description",
                        title: "Sample 6",
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageDescription(
                          image: ImageContent('Sample 6',
                              'assets/images/image6.jpg', "Style description"),
                        ),
                      ),
                    );
                  }),
              InkWell(
                  child: Stack(
                    children: <Widget>[
                      ShowImage(
                        url: "assets/images/image7.jpg",
                        description: "Style description",
                        title: "Sample 7",
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageDescription(
                          image: ImageContent('Sample 7',
                              'assets/images/image7.jpg', "Style description"),
                        ),
                      ),
                    );
                  }),
              InkWell(
                  child: Stack(
                    children: <Widget>[
                      ShowImage(
                        url: "assets/images/image8.jpg",
                        description: "Style description",
                        title: "Sample 8",
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageDescription(
                          image: ImageContent('Sample 8',
                              'assets/images/image8.jpg', "Style description"),
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ],
    );
  }
}
