import 'package:flutter/material.dart';
import '../models/image_model.dart';


// The parent app state is responsible for changing and 
// maintaining the change of the list. This class would not change the list
class ImageList extends StatelessWidget {

  final List<ImageModel> images;

  ImageList(this.images);
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        // put logic of constructing each item
        return Container(
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.all(24.0),
          child: Image.network(images[index].url),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey)
          ),
          );
      },
    );
  }
}
