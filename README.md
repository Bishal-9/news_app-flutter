# flutter_news

A new Flutter News application where you can find top 10 news of India and different categories of news from all over the world.

## Getting Started

As you'll be launching the Application, you will see the Home Page where top 10 Indian News will be listed. Upon those news you will be getting more categories to get the news from all over the world. You can click on any news all over the app, you'll be shown more about that news from it's source page.

## How to Use

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/Bishal-9/news_app-flutter.git
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies:

```
flutter pub get
```

### Folder Structure
Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- ios
|- lib
```

Here is the folder structure we have been using in this project

```
lib/
|- helper/
|- models/
|- views/
|- main.dart
```

Now, lets dive into the lib folder which has the main code for the application.

```
1- helper - All the data fetched from API is supplied from this folder.
2- models - Contains all the different models of structural data used in this app.
3- views - Contains all the UI parts of your project.
```

### Main

This is the starting point of the application. All the application level configurations are defined in this file.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_news/views/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Home(),
    );
  }
}
```