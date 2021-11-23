INCLUDE scene/suicide.ink
INCLUDE scene/dinner.ink
INCLUDE util/functions.ink
INCLUDE scene/carriage.ink
INCLUDE scene/endings.ink


#theme: dark



-> start_screen

// variables
VAR n = 0
VAR partner = 4
VAR self = 0
VAR evidence_found = false
VAR cheating_confirmed = false
VAR angry = false


=== start_screen ===
Chronic Dissonance is a dark story about your character's struggle with their partner's death. Throughout the story you will be faced with choices that will change the narrative... and the music. Aside from the narrative itself, the purpose of this project is to showcase the idea for music that seems to change along with your progress and choices in a way that reflects both of those. We hope you enjoy!

    Music and Research: Luke Knudsen
    Developer: Shreyash Mohatta
    Narrative Designer: Rahul Ramakrishnan
    Interaction Designer: Lin Dempsey
    
#IMAGE: images/Content-warning.jpg

* [CONTINUE] -> intro
* [NO THANKS] -> END

===intro===
~partner = 4
{ n:
- 0: 	It's 4 days until your 10th wedding anniversary and you've been planning to give your partner the best night of their life. Things have been a bit rocky between the two of you and you haven't been able to dedicate time to fixing things. 
        .
        .
        .
        However, the date does not go as planned. You hit a couple of rocky spots. At least it ended with a nice walk back home through some of your favorite spots. You think maybe that made up for the rest of the evening.
        -> choice
        
- 1: 	 You cannot get over how crazy your dream was. "How could I dream such an elaborate sequence?" However, it does get you thinking about your anniversary. While things haven't been going the best, surely nothing too serious is going on, right?

- else: You wake up in bed again. The note, the calendar, everything is the same as you remember. You really are going back in time. Resolving not to question how this is possible, you instead decide to focus on the matter at hand: Something is wrong with your partner, and it's up to you to find out what.
}
    
    +(choice_dinner)[TAKE THEM TO DINNER AT THE RESTAURANT OF YOUR FIRST DATE] 
        You decide to take them for dinner to La Diornos, where you had your first date! 
        
        {n < 2 : You've been looking forward to this for a while, and can't wait for it to finally happen.} 
            {positive(1)}
            -> dinner
            

    +(choice_carriage)[TAKE THEM ON A HORSE DRAWN CARRIAGE THROUGH CENTRAL PARK]
        You decide to take your partner through a romantic carriage ride through Central Park. It's your partner's favorite place in New York and you hope it makes them feel great.
        {n < 2 : You've been looking forward to this for a while, and can't wait for it to finally happen.} 
            {negative(1)}
            ->carriage
            
    //  unimplemented choice
    //  +(choice_balloon)[TAKE THEM ON A HOT AIR BALLOON RIDE OVER the MANHATTAN SKYLINE] 
    //  You decide to take your partner through a romantic balloom ride over the manhattan skyline.
            
    - -> choice

===choice===
{n < 2 : You've been looking forward to this for a while and can't wait for it to happen finally.} 
{   
    -n==0 : 
        .
        .
        .
        The date does not go as planned. You hit a couple of rocky spots. At least it ended with a nice walk back home through some of your favorite spots. You think maybe that made up for the rest of the evening.
        * [ADVANCE TIME] -> suicide_beginning
            
}

===enter_scene===
THIS SCENE IS THE DATE DESCRIPTION. THE SUBSEQUENT TIMES YOU GET HERE, YOU WILL HAVE TO CHOOSE YOUR BEHAVIOUR WHICH WILL HAVE AN EFFECT ON THE OUTCOME, AND THE MUSIC WILL CHANGE BASED ON YOUR CHOICES.
+ [GO TO SUICIDE]->intro