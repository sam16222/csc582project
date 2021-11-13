INCLUDE scene/suicide.ink
INCLUDE scene/dinner.ink



-> intro

// variables
VAR n = 0
VAR partner = 3
VAR self = 0
VAR evidence_found = false

===intro===
{!Your 10th wedding anniversary is coming up and you've been planning to give your wife the best night of her life. Things have been a bit rocky between the two of you and you haven't been able to dedicate time to fixing things.}
    You decide to ...
    +take her to dinner at the restaurant of your first date 
    -> dinner
    +take her on a hot air balloon ride over the Manhattan skyline 
    -> enter_scene
    +take her on a horse drawn carriage through Central Park 
    -> enter_scene


===enter_scene===
THIS SCENE IS THE DATE DESCRIPTION. THE SUBSEQUENT TIMES YOU GET HERE, YOU WILL HAVE TO CHOOSE YOUR BEHAVIOUR WHICH WILL HAVE AN EFFECT ON THE OUTCOME, AND THE MUSIC WILL CHANGE BASED ON YOUR CHOICES.
->suicide_beginning