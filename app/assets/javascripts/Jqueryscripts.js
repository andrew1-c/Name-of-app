var name = ""
var count = 0;
var sex = ""
var health = 10
var blood = 1
/*The above are variables I plan on using in the game NOTE only count is actually being used*/

/*Onclick trigger to empty out current array and replace it with array[indexnumber] depending on clicks*/
$(document).on("click", "#gobutton", function() {
    $("#playersmessage").empty().append(storyArray[count]);
    ++count
    console.log(count)

});
/*Main story array */
storyArray = ['After what Ive done theres no going back',
    'I have no way of knowing if she survived or not..',
    'the only thing I do know is I have to get out of here.',
    'But where should I go now...',
    'AND THATS A Wrap, Im sorry if you was just getting into it , but I have alot more to learn in order to implement various features I had in mind for example at this scene the image should change to one of you the player however I havent yet got into changing image src asset pipelines yet so ^_^ stay tuned for more'
];

/* Old function and array in one
var story = (function() {
  var storyArray = ['Thats right Im a guy I remember now',
  'Rut what was my name though?',
  'Right now I remember'];

  return storyArray[count]
});
*/