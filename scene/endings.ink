===time_ending===
.
.
.
{   
    - n <= 2 :
        -> random
    - else : 
        {
            - (partner >= 8 and cheating_confirmed) or (cheating_confirmed and angry):
                -> save_or_sunder
            - n>=5 : 
                -> death_loop
            - else : 
                -> random
        }
}

// need a way to gett to "let die" and "save separate" without partner > 8
===save_or_sunder===
You're coming back home the next day. You see the lights are switched off.
{ shuffle:
	- 	You break through the window and run to your bedroom. 
	    The room is empty. A strange feeling of comfort overtakes you temporarily, but then you hear the water running. 
	    You run to the bathroom.
	    It pitch black. 
	    + [SWITCH ON THE LIGHTS]
	    You turn on the lights
	   // # LIGHTS: on
	    .
	    .
	    .
	    You find your partner sitting in a pool of blood.
	    -> save_or_sunder_ending
	- 	You're a few steps away from the front door when you hear a sudden and loud thud right behind you. You turn around.
	    .
	    .
	    . 
	    You see your partner's body on the ground.
	    -> save_or_sunder_ending
	-   You break through the window and run to your bedroom. 
	    The room is empty. A strange feeling of comfort overtakes you.
	    .
	    .
	    .
	    Just then you hear a car honking and a loud screeching sound. You run downstairs and you see that your partner has run into the oncoming traffic and have been badly hit by an SUV.
	    -> save_or_sunder_ending
	-   You break through the window and run to your bedroom. 
	    You find your parner lying on the bed. A strange feeling of comfort overtakes you.
	    As you walk closer though, you realize they are not responding. You call out but there is no answer. 
	    + [SWITCH ON THE LIGHTS]
	    You turn on the lights.
	   // # LIGHTS: on
	    When you get next to them, you see a bottle of pills next to them.
	    -> save_or_sunder_ending
	-   You break through the window and run to your bedroom. 
	    You find your parner lying on the bed. A strange feeling of comfort overtakes you.
	    As you walk closer though, you realize they are not responding. You call out but there is no answer. 
	    + [SWITCH ON THE LIGHTS]
	    You turn on the lights. 
	   // # LIGHTS: on
	    When you get next to them, you see a bottle of poison next to them. 
	    -> save_or_sunder_ending
}

===save_or_sunder_ending
You run to your partner and call out their name. You grab their shoulders and try to get them to respond with all you've got. You hear a faint whisper of a breath coming out of them.
"They're alive!", you think to yourself
* [SAVE THEM]
// shouldn't be able to get here unless this conditional works, according to conditional on line 9-16
    {
        - angry == true:
            -> save_seperate
        - partner >= 8 :
            -> save_forgive
    }
* {cheating_confirmed and angry} [LET THEM DIE]
    -> let_die


===let_die===
#AUDIO: audio/5-5.mp3
// # LIGHTS: off
You are unable to deal with the betrayal. You want to see the person that hurt you, who you no longer can trust, suffer.

You let them down on the floor slowly.

You turn around and start walking in the other direction. 

You don't care if they live or die.

END - Condemn
-> END

===save_forgive===
#AUDIO: audio/1-1.mp3

You start crying as you try and call 911 for help.

"It's okay... It's all gonna be okay... Stay with me"

You try and keep your partner responsive.

As the ambulance arrives, you feel a sense of relief come over you.

"It's finally over... I saved them... "

* [ADVANCE TIME]

    As the days go by, your partner gets better.
    
    While you're coming home from the hospital after their discharge, you hold their hand.
    
    "It's okay sweetheart.... I forgive you. You don't need to hold this guilt over you. You're only human. Anyone can make a mistake."
    
    Your partner starts crying and hugs you. You hold them tightly.
    
    END - Save and Redress
    ->END


===save_seperate===
#AUDIO: audio/2-2.mp3
You start crying as you try and call 911 for help.

"It's okay... It's all gonna be okay... Stay with me"

You try and keep your partner responsive.

As the ambulance arrives, you feel a sense of relief come over you.

"It's finally over... I saved them... "

* [ADVANCE TIME]
    As the days go by, your partner gets better.
    
    While you're coming home from the hospital after their discharge, you hold their hand.
    
    "It's okay sweetheart... You don't need to hold this guilt over you. You're only human. Anyone can make a mistake."
    
    A few days later, when you're sure that your partner is getting the help they need and that they're mentally stronger, you sit down and have a long talk with them.
    
    "I'm sorry but I don't think I can be with you anymore. I sincerely wish you the best in the world. But.... this is it...", you tell them as you see the disappointed acceptance in their eyes.
    
    END - Save and Separate
    ->END

===give_up===
// # LIGHTS: off
#AUDIO: audio/3-3.mp3
You're tired of the same loop everytime. 
You decide to give up on saving your partner by trying to jump back in time.

You're an empty shell.

You have accepted your hell.

END - Give Up
->END

===death_loop===
#AUDIO: audio/4-4.mp3
// # LIGHTS: off
As you try again and again to save your partner, and fail, it takes a toll on you.

Watching your partner die multiple times... each time a different way... breaks you.

Your mental state is in so many pieces you don't even know if you can ever be the person you once were.

You try to kill yourself, but you wake up 4 days before your anniversary no matter what you do.

You're an empty shell.

You have accepted your hell and continue to try and save your partner, knowing you'll fail.

END - Hell Without End
-> END

===random===
//select ending music
You're coming back home the next day. You see the lights are switched off.
{ shuffle:
	- 	You break through the window and run to your bedroom. 
	    The room is empty. A strange feeling of comfort overtakes you temporarily, but then you hear the water running. 
	    You run to the bathroom.
	    It pitch black. 
	    + [SWITCH ON THE LIGHTS]
    	    You turn on the lights
    	   // # LIGHTS: on
    	    .
    	    .
    	    .
    	    You find your partner sitting in a pool of blood. They died by bleeding out.
    	    -> loop
	- 	You break through the window and run to your bedroom. 
	    The room is empty. A strange feeling of comfort overtakes you temporarily, but then you hear the water running. 
	    You run to the bathroom.
	    It pitch black and there is a smell of burnt flesh in the air. 
    	    + [SWITCH ON THE LIGHTS]
    	    You turn on the lights
    	   // # LIGHTS: on
    	    .
    	    .
    	    .
    	    You find your partner in the bathtub, their body bent in a peculiar manner.
    	    You then witness a toaster submerged into the water. They died of an electrocution.
    	    -> loop
	- 	You're a few steps away from the front door when you hear a sudden and loud thud right behind you. You turn around.
	    .
	    .
	    . 
	    You see your partner's body on the ground. A large pool of blood starts forming around your partner. You fall down on your knees. 
	    -> loop
	-   You break through the window and run to your bedroom. 
	    The room is empty. A strange feeling of comfort overtakes you.
	    .
	    .
	    .
	    Just then you get a call from the cops. Your partner ran into oncoming traffic while leaving work. They had been rushed to the hospital but passed away on the operation table.
	    -> loop
	-   You break through the window and run to your bedroom. 
	    You find your parner lying on the bed. A strange feeling of comfort overtakes you.
	    As you walk closer though, you realize they are not responding. You call out but there is no answer. 
    	    + [SWITCH ON THE LIGHTS]
    	    You turn on the lights.
    	   // # LIGHTS: on
    	    When you get next to them, you see a bottle of pills next to them. They have died of an overdose.
    	    -> loop
	-   You break through the window and run to your bedroom. 
	    You find your parner lying on the bed. A strange feeling of comfort overtakes you.
	    As you walk closer though, you realize they are not responding. You call out but there is no answer. 
	    + [SWITCH ON THE LIGHTS]
    	    You turn on the lights. 
    	   // # LIGHTS: on
    	    When you get next to them, you see a bottle of poison next to them. They have ingested poison and aren't breathing anymore.
    	    -> loop
}

===loop===

{n==1: You think of how things were similar to your dream. You remember how you jumped into the water and then woke up in your bed having gone back in time.}
// # LIGHTS: off
+ [TRAVEL BACK IN TIME]
    ~n++
    You run to the vortex with everything you have.
    You arrive at the bridge and then dive straight into the water. The lightning vortex forms around you.
    You wake up in bed again. It's 4 days until to your anniversary.
    .
    .
    .
    -> intro
+ {n>1}[ACCEPT YOUR FATE]
    -> give_up