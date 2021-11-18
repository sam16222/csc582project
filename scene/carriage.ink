=== carriage ===
You excitedly hurry your partner along as they get ready to head out. You keep checking your watch.
"Come on!! We're gonna be late!"

As you head downstairs to open the front door to your building,
"I hope you like this" you say

You open the door to reveal a posh horse carriage attached to one of the most majestic horses you've seen. The coachman is dressed in a classy suit with a top hat. He tips the hat to greet you.

"What is this? You really didn't have to do this", your partner says, overwhelmed by the gesture. You see their eyes watering up.

* "Of course I did!"
* "I wanted to!"
* "It wasn't a big deal."
- -> inside_carriage
//"You're right, I didn't 'have' to; I wanted to", you say with a smile as you hug your partner.

//<Open the door for them or let them open the door? - options>

=== inside_carriage ===
You settle in, sitting opposite each other.

You see that your partner is admiring the carriage itself.

* (signal) SIGNAL COACHMAN TO START THE RIDE
    -> signal_coachman
* [TAKE THEM TO SURPRISE PICNIC]
    -> picnic
* (carriage_choice) "Where would you like to go?"
    "Umm I don't know", they said, still getting aroudn the surprise.
    "Pick a number then!"
        ** (one) 1
        ** (two) 2
        ** (three) 3
        ** (four) 4
        -- -> signal_coachman



=== signal_coachman ===
You signal the coachman to start with the pre-planned tour you spent a month coming up with.

As you're moving through the city, you hold your partner's hand and talk about how you met them, and how your friendship turned into something as beautiful as this relationship. Your partner looks at you from time to time but mainly tries to avoid eye contact.

{inside_carriage.one or inside_carriage.three or inside_carriage.signal : You visit the street where you first bumped into each other. You remind them of how they felt so bad that you dropped your food because of them that they offered to buy the entire meal for you and how that turned out to be their first date.}


* [CONTINUE]
    {
        - inside_carriage.two or inside_carriage.four or inside_carriage.signal: 
            -> continue_tour
        -else : 
            -> picnic
    }


=== continue_tour ===

You head to the fountain in <some park> where you had proposed marriage to your partner. As you're recounting how nervous you were before popping the question, you see a teardrop rolling down your partner's cheeks.

"Heyy! Do you think saying 'yes' wasn't the right choice that day?! Too bad, you're stuck with me now :)"

You wipe the tear off their face. They smile and apologize.

* [HEAD TO PICNIC]
    -> picnic


=== picnic ===
{   - inside_carriage.carriage_choice :
    You finish with the tour and head to the surprise picnic.
    - else :
    You signal the coachman with a hand gesture to take them to the picnic you've setup in the <some park name>.
}

As you reach the spot, your partner begins to notice all the lighting you've setup.

"Did you do all this?", they ask.

"I had some help :)".

As the carriage comes to a halt, you jump out from the carriage and offer your hand to your partner to help them get down.

"My liege?..."

Your partner looks at you reluctantly.

"I... I don't wanna do this..."
"I'm so sorry"
"I know you put in a lot of effort for this; but I... I can't"

They start crying.

"Hey hey! It's okay! We can go someplace else", you try to console them.

"Can we just have some street food and go home?"

<Notice street food or not>
"Anything you want"

{n < 2}

You look at your watch. It's 7:15 pm. In 15 minutes, you've setup some fireworks for you to enjoy together.

"Actually... We can get the street food in a bit. Could you just hop on out for a while? I promise we won't go through with the whole thing. Just... wait for a bit."
-> END