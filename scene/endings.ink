===save_forgive===
->END


===save_seperate===
->END

===give_up===
You're tired of the same loop everytime. 
You decide to give up on saving your partner by trying to jump back in time.
You're an empty shell.
You have accepted your hell.
->END

===death_loop===
As you try again and again to save your partner, and fail, it takes a toll on you.

Watching your partner die multiple times... each time a different way... breaks you.

Your mental state is in so many pieces you don't even know if you can ever be the person you once was.

You try to kill yourself, but you wake up 4 days before your anniversary no matter what you do.

You're an empty shell.

You have accepted your hell.
-> END

===random===
You're coming back home the next day. You see the lights are switched off.
{ shuffle:
	- 	You break through the window and run to your bedroom. 
	    .
	    .
	    .
	    You find your partner hanging from the ceiling, lifeless.
	- 	You break through the window and run to your bedroom. 
	    The room is empty. A strange feeling of comfort overtakes you temporarily, but then you hear water running. 
	    You run to the bathroom.
	    It pitch black. You turn on lights
	    .
	    .
	    .
	    You find your partner sitting in a pool of blood.
	- 	You break through the window and run to your bedroom. 
	    The room is empty. A strange feeling of comfort overtakes you temporarily, but then you hear water running. 
	    You run to the bathroom.
	    It pitch black and there is a smell of burnt flesh in the air. You turn on lights
	    .
	    .
	    .
	    You find your partner in the bathtub, their body bent in peculiar manner.
	    You then witness a toaster submerged into the water. They died of an electrocution.
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
	    Just then you get a call from the cops. Your partner ran into oncoming traffic while leaving work. They had been rushed to the hospital but died on the operation table.
	-   You break through the window and run to your bedroom. 
	    You find your parner lying on the bed. A strange feeling of comfort overtakes you.
	    As you walk closer though, you realize they are not responsind. You call out but there is no answer. When you get next to them, you see a bottle of pills next to them. They have died of an overdose.
	-   You break through the window and run to your bedroom. 
	    You find your parner lying on the bed. A strange feeling of comfort overtakes you.
	    As you walk closer though, you realize they are not responsind. You call out but there is no answer. When you get next to them, you see a bottle of rat poison next to them. They have ingested poison and aren't breathing anymore.
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
+ {n>1}[GIVE UP]
    -> give_up