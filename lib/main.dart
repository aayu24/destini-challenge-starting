import 'package:destini_challenge_starting/story_brain.dart';
import 'package:flutter/material.dart';

//COMPLETED: Step 15 - Run the app and see if you can see the screen update with the first story. Delete this COMPLETED if it looks as you expected.

//TODO: Step 32 - Add soundtrack to the app
void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

//COMPLETED: Step 9 - Create a new storyBrain object from the StoryBrain class.
StoryBrain storyBrain = StoryBrain(); //have to instantiate

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //COMPLETED: Step 1 - Add background.png to this Container as a background image.
        //COMPLETED: Step 31 - Add own custom background image
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/mystery_background.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    //COMPLETED: Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.
                    storyBrain.getStory(),
                    //COMPLETED: Step 30 - style the text to make it look better
                    style: TextStyle(
                      fontFamily: 'MysteryQuest',
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {
                    //Choice 1 made by user.
                    //COMPLETED: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                    setState(() {
                      storyBrain.nextStory(
                          1); //have to call this inside setState so that app knows that this is changed and updates the UI
                    });
                  },
                  color: Colors.red,
                  child: Text(
                    //COMPLETED: Step 13 - Use the storyBrain to get the text for choice 1.
                    //'Choice 1',
                    storyBrain.getChoice1(),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                //COMPLETED: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                //COMPLETED: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible(),
                  child: FlatButton(
                    onPressed: () {
                      //Choice 2 made by user.
                      //COMPLETED: Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.
                      setState(() {
                        storyBrain.nextStory(
                            2); //have to call this inside setState so that app knows that this is changed and updates the UI
                      });
                    },
                    color: Colors.blue,
                    child: Text(
                      //COMPLETED: Step 14 - Use the storyBrain to get the text for choice 1.
                      //'Choice 2',
                      storyBrain.getChoice2(),
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//COMPLETED: Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons.

//COMPLETED: Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/
