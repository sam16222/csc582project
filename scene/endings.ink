===time_ending===
.
.
.
{   
    - n <= 2 :
        -> random
    - else : 
        {
            - n>=5 : 
                -> death_loop
            - partner <= 8 :
                -> random
            - else : 
                -> save
        }
}

===save===
You're coming back home the next day. You see the lights are switched off.
{ shuffle:
	- 	You break through the window and run to your bedroom. 
	    The room is empty. A strange feeling of comfort overtakes you temporarily, but then you hear the water running. 
	    You run to the bathroom.
	    It pitch black. You turn on the lights
	    .
	    .
	    .
	    You find your partner sitting in a pool of blood.
	- 	You're a few steps away from the front door when you hear a sudden and loud thud right behind you. You turn around.
	    .
	    .
	    . 
	    You see your partner's body on the ground.
	-   You break through the window and run to your bedroom. 
	    The room is empty. A strange feeling of comfort overtakes you.
	    .
	    .
	    .
	    Just then you hear a car honking and a loud screeching sound. You run downstairs and you see that your partner has run into the oncoming traffic and have been badly hit by an SUV.
	-   You break through the window and run to your bedroom. 
	    You find your parner lying on the bed. A strange feeling of comfort overtakes you.
	    As you walk closer though, you realize they are not responding. You call out but there is no answer. When you get next to them, you see a bottle of pills next to them.
	-   You break through the window and run to your bedroom. 
	    You find your parner lying on the bed. A strange feeling of comfort overtakes you.
	    As you walk closer though, you realize they are not responding. You call out but there is no answer. When you get next to them, you see a bottle of poison next to them. 
}
You run to your partner and call out their name. You grab their shoulders and try to get them to respond with all you've got. You hear a faint whisper of a breath coming out of them.
"They're alive!", you think to yourself
* [SAVE THEM]
    {
        - angry :
            -> save_seperate
        - else :
            -> save_forgive
    }
* {cheating_confirmed and angry} [LET THEM DIE]
    -> let_die


===let_die===
//select ending music
You are unable to deal with the betrayal. You don't want to spend your life with such a person.

You let them down on the floor slowly.

You turn around and start walking in the other direction. 

You don't care if they live or die.
-> END

===save_forgive===
//select ending music
You save your partner and forgive them. PLEASE WRITE THIS ENDING
->END


===save_seperate===
//select ending music
You save your partner but seperate from them. PLEASE WRITE THIS ENDING
->END

===give_up===
//select ending music
You're tired of the same loop everytime. 
You decide to give up on saving your partner by trying to jump back in time.

You're an empty shell.

You have accepted your hell.
->END

===death_loop===
//select ending music
As you try again and again to save your partner, and fail, it takes a toll on you.

Watching your partner die multiple times... each time a different way... breaks you.

Your mental state is in so many pieces you don't even know if you can ever be the person you once was.

You try to kill yourself, but you wake up 4 days before your anniversary no matter what you do.

You're an empty shell.

You have accepted your hell and continue to try and save your partner, knowing you'll fail.
-> END

===random===
//select ending music
You're coming back home the next day. You see the lights are switched off.
{ shuffle:
	- 	You break through the window and run to your bedroom. 
	    The room is empty. A strange feeling of comfort overtakes you temporarily, but then you hear the water running. 
	    You run to the bathroom.
	    It pitch black. You turn on the lights
	    .
	    .
	    .
	    You find your partner sitting in a pool of blood. They died by bleeding out.
	- 	You break through the window and run to your bedroom. 
	    The room is empty. A strange feeling of comfort overtakes you temporarily, but then you hear the water running. 
	    You run to the bathroom.
	    It pitch black and there is a smell of burnt flesh in the air. You turn on lights
	    .
	    .
	    .
	    You find your partner in the bathtub, their body bent in a peculiar manner.
	    You then witness a toaster submerged into the water. They died of an electrocution.
	- 	You're a few steps away from the front door when you hear a sudden and loud thud right behind you. You turn around.
	    .
	    .
	    . 
	    You see your partner's body on the ground. 
	    //Write a better description
	-   You break through the window and run to your bedroom. 
	    The room is empty. A strange feeling of comfort overtakes you.
	    .
	    .
	    .
	    Just then you get a call from the cops. Your partner ran into oncoming traffic while leaving work. They had been rushed to the hospital but passed away on the operation table.
	-   You break through the window and run to your bedroom. 
	    You find your parner lying on the bed. A strange feeling of comfort overtakes you.
	    As you walk closer though, you realize they are not responding. You call out but there is no answer. When you get next to them, you see a bottle of pills next to them. They have died of an overdose.
	-   You break through the window and run to your bedroom. 
	    You find your parner lying on the bed. A strange feeling of comfort overtakes you.
	    As you walk closer though, you realize they are not responding. You call out but there is no answer. When you get next to them, you see a bottle of poison next to them. They have ingested poison and aren't breathing anymore.
}

{n==1: You think of how things were similar to your dream. You remember how you jumped into the water and then woke up in your bed having gone back in time.}
+ [TRAVEL BACK IN TIME]
    ~n++
    You run to the vortex with all you got.
    You arrive at the bridge and then dive straight into the water. The lightning vortex forms around you.
    You wake up in bed again. It's 4 days to go to your anniversary.
    .
    .
    .
    -> intro
+ {n>1}[ACCEPT YOUR FATE]
    -> give_up