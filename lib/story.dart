//COMPLETED: Step 2 - Create a new class called Story.

//COMPLETED: Step 3 - Create 3 properties for this class, A. storyTitle to store the story text. B. choice1 to store the text for choice 1, C. choice2 to store the text for choice 2.

//COMPLETED: Step 4 - Create a Constructor for this class to be able to initialise the properties created in step 3.
class Story {
  String _storyTitle;
  String _choice1, _choice2;

  Story(title, ch1, ch2) {
    _storyTitle = title;
    _choice1 = ch1;
    _choice2 = ch2;
  }
}
