INCLUDE scene/suicide.ink
INCLUDE scene/dinner.ink
INCLUDE util/functions.ink
INCLUDE scene/carriage.ink
INCLUDE scene/endings.ink


#theme: dark



-> warning

// variables
VAR n = 0
VAR partner = 3
VAR self = 0
VAR evidence_found = false
VAR cheating_confirmed = false
VAR angry = false


=== warning ===
#IMAGE: images/Content-warning.jpg

* [CONTINUE] -> intro
* [NO THANKS] -> END

===intro===
~partner = 3
{ n:
- 0: 	It's 4 days to your 10th wedding anniversary and you've been planning to give your partner the best night of their life. Things have been a bit rocky between the two of you and you haven't been able to dedicate time to fixing things. 
- 1: 	 You cannot get over how crazy your dream was. "How could I dream such an elaborate sequence?" You start thinking about taking your partner on an anniversary date.
- else: You want to give your partner the best night of their lives, hoping to change the future and save your partner. //CHANGE THIS LINE FFS
}
    
    +(choice_dinner)[TAKE THEM TO DINNER AT THE RESTAURANT OF YOUR FIRST DATE] 
        You decide to take them for dinner to La Diornos, where you had your first date! 
    // +(choice_balloon)[TAKE THEM ON A HOT AIR BALLOON RIDE OVER the MANHATTAN SKYLINE] 
    //     You decide to take your partner through a romantic balloom ride over the manhattan skyline.
    +(choice_carriage)[TAKE THEM ON A HORSE DRAWN CARRIAGE THROUGH CENTRAL PARK]
        You decide to take your partner through a romantic carriage ride through Central Park. It's your partner's favorite place in New York and you hope it makes them feel great.
    - -> choice

===choice===
{n < 2 : You been looking forward to this for a while and can't wait for it to happen finally.} 
{   
    -n==0 : 
        .
        .
        .
        The date does not go as planned. You hit a couple of rocky spots, but it ended with a nice walk back home, through some of your favorite spots and you think maybe that fixed the rest of the evening.
        * [ADVANCE TIME] -> suicide_beginning
    -intro.choice_dinner:
        {positive(1)}
        -> dinner
    -intro.choice_carriage:
        {negative(1)}
        -> carriage
            
}

===enter_scene===
THIS SCENE IS THE DATE DESCRIPTION. THE SUBSEQUENT TIMES YOU GET HERE, YOU WILL HAVE TO CHOOSE YOUR BEHAVIOUR WHICH WILL HAVE AN EFFECT ON THE OUTCOME, AND THE MUSIC WILL CHANGE BASED ON YOUR CHOICES.
+ [GO TO SUICIDE]->suicide_beginning