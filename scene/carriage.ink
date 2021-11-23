
=== carriage ===
You excitedly hurry your partner along as they get ready to head out. You keep checking your watch.
"Come on!! We're gonna be late!"

As you head downstairs to open the front door to your building,
"I hope you like this" you say

You open the door to reveal a posh horse carriage attached to one of the most majestic horses you've seen. The coachman is dressed in a classy suit with a top hat. He tips the hat to greet you.

"What is this? You really didn't have to do this", your partner says, overwhelmed by the gesture. You see their eyes watering up.

+ "Of course I did!"
    {positive(1)}
+ "I wanted to!"
    {negative(1)}
+ "It wasn't a big deal."
    {negative(1)}
- -> inside_carriage
//"You're right, I didn't 'have' to; I wanted to", you say with a smile as you hug your partner.

//<Open the door for them or let them open the door? - options>

=== inside_carriage ===
You settle in, sitting opposite each other.

You see that your partner is admiring the carriage itself.

+ (signal) SIGNAL COACHMAN TO START THE RIDE
    {negative(1)}
    -> signal_coachman
+ [TAKE THEM TO SURPRISE PICNIC]
    {negative(1)}
    -> picnic
+ (carriage_choice) "Where would you like to go?"
    {positive(1)}
    "Umm I don't know", they said, the surprise still setting in.
    "Pick a number then!"
        ++ (one) 1
        ++ (two) 2
        ++ (three) 3
        ++ (four) 4
        -- -> signal_coachman



=== signal_coachman ===
{inside_carriage.signal : You signal the coachman to start with the pre-planned tour you spent a month coming up with. }
{inside_carriage.one or inside_carriage.two or inside_carriage.three or inside_carriage.four : "You heard them! let's go", you say to the coachman. }

+ [HOLD PARTNER'S HANDS]
    {positive(1)}
    As you're moving through the city, you hold your partner's hand and talk about how you met them, and how your friendship turned into something as beautiful as this relationship. Your partner looks at you from time to time but mainly tries to avoid eye contact. 
    -> hold_hand_continue
+ [CHECK A PHONE CALL YOU'RE GETTING] 
    -> take_phone_call


=== take_phone_call ===
{negative(2)}
Your work phone rings.
You check who's calling.

"I'm so sorry honey, but I gotta take this call. It's a very important client."

You talk on the phone for about 20 minutes, while your partner looks out the window.

-> continue

=== hold_hand_continue ===
{inside_carriage.one or inside_carriage.three or inside_carriage.signal : You visit the street where you first bumped into each other. You remind them of how they felt so bad that you dropped your food because of them that they offered to buy the entire meal for you and how that turned out to be their first date.}

->continue

=== continue ===
+ [CONTINUE]
    {
        - inside_carriage.one or inside_carriage.two or inside_carriage.three or inside_carriage.four or inside_carriage.signal: 
            -> continue_tour
        -else : 
            -> picnic
    }

=== continue_tour ===

You head to the bethesda Fountain where you had proposed marriage to your partner. As you're recounting how nervous you were before popping the question, you see a teardrop rolling down your partner's cheeks.

"Hey! Do you think saying 'yes' that day was the right choice? Too bad, you're stuck with me now!", you say, grinning.

You wipe the tear off their face. They smile and apologize.

+ [HEAD TO PICNIC]
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

As the carriage comes to a halt, you jump out from the carriage.

+ [OFFER HAND]
    "My liege?..."
    
    Your partner looks at you reluctantly.
    
    "I... I don't wanna do this..."
    "I'm so sorry"
    "I know you put in a lot of effort for this; but I... I can't"
    
    They start crying.
    
    "Hey hey! It's okay! We can go someplace else", you try to console them.
    
    "Can we just have some street food and go home?"
    
    {n > 2: 
        ++ [SOMETHING IS UP, THEY DON'T LIKE STREET FOOD] -> street_food 
        ++ [CONVINCE THEM TO STAY A WHILE] -> convince
    
    }
    
    "Anything you want, hon."
    ++ [FINISH DATE]
        -> go_home


=== go_home ===
{negative(2)}
You end up eating some hot-dogs for dinner. You get a weird feeling in your stomach as you finish your food.

"This was probably a mistake", you think to yourself.

You head home. Your partner says nothing on the way back.

When you get back, your partner changes their clothes and without saying a word, go to bed.
{ 
    - n<2 : 
    Things feel very disconnected and you keep on wondering what you could have done to help them. 
    - else : 
    You go to bed praying that things don't turn out the same way this time. You keep on replaying the night in your head, thinking of what could be done differently. 
}

-> time_ending

=== convince ===
{negative(2)}
You look at your watch. It's 7:15 pm. In 15 minutes, you've setup some fireworks for you to enjoy together.

"Actually... We can get the street food in a bit. Could you just hop on out for a while? I promise we won't go through with the whole thing. Just... wait for a bit."

"Sure", your partner says reluctantly.
You are positive this will cheer them up.

+ [START FIREWORKS]
    The fireworks show you had set up starts. Your partner does not seem any fascinated by the fireworks.
    After the show, your partner requests you to head back home. You give in.
    
    You head back home with your partner. You try to talk to them during the ride back home, but to no avail.
    Your partner goes straight to bed after reaching home, and you keep on wondering about what went wrong. 
-> time_ending


=== street_food ===
{positive(1)}
"They don't like street food", you think to yourself

"Are you sure you're okay? I know you really aren't a fan of street food", you ask them with concern

They look at you, trying to hold in their tears.

They break down, crying while saying "I'm so sorry" repeatedly.

+ {!cheating_confirmed} "What is up with you? Tell me what I'm doing wrong please." 
                            -> annoyed
+ {!cheating_confirmed} "Is everything okay? You know you can talk to me right?" 
                            -> console
+ {cheating_confirmed} "It's okay. It'll be alright." 
                            "Hey come on now! You didn't do anything wrong", you try and make them feel better.
                            (Still crying) "I have.. I have done a horribe thing"
                            -> console2



=== annoyed ===
{negative(3)}
"Oh come on", you exclaim.
"Not this again. You've been saying "I'm Sorry" since we started this evening. There's nothing to be sorry about. Even if there is something, I forgive you. There. That should lift that guilt you have. I put in a lot of my time and effort into this. Please. Can we just... just enjoy the night..."
You partner nods silently. 
.
.
They don't say much through the rest of the night. They quietly sit through the rest of your plan.
-> go_home

=== console2 ===
{(positive(2))}
You stay quiet for a while.
"Whatever happened is in the past. I don't care about it anymore. I just want to focus on us. On our future." you said, reassuringly.
"So I would like for you to let go of whatever guilt you are clinging on to, and toast to many more years of hearing me snore."

They breakdown crying and bury their face in your chest. 
You stroke their back and let them know you're there for them.

+ [CONTINUE] 
    The rest of the evening goes better than before. 
    You walk through all your favorite spots around Central Park. You talk about everything you've been neglecting to tell them in the recent past. 
    Your partner has a smile on their face. You haven't seen them smile like this for a while now.
    
    You finish the date watching fireworks you'd set up in advance, and head back home together.
    .
    .
    .
    You kiss your partner good night. They haven't kissed you back like this in the longest time you think.
    You both are exhausted and go back to sleep.
    You keep on replaying the night in your head, hoping something has changed this time.
    -> time_ending

=== console ===
{positive(2)}
"Hey come on now! You didn't do anything wrong", you try and make them feel better.
(Still crying) "I have.. I have done a horribe thing"

"What can be so bad that you're carrying so much guilt? It's just an anniversary", you ask.

(Still crying) "You... You were constantly busy with work... going for meetings to different cities..."

You keep looking at them, as you absorb what your partner is saying.

"Blake came over to visit one night. I wasn't in the right state of mind... "

They start crying uncontrollably. Nothing else needs to be said anymore.

~ cheating_confirmed = true
+ "HOW COULD YOU DO THIS TO ME!? 
    {positive(1)}
    You lash out at your partner. You scream at them for their unfaithfulness. You ask what went wrong. They stand there silently with tears rolling down their eyes. 
    You stop after a while. Tears roll down your cheeks.
+ [STAY SILENT]
    {negative(1)}
    You both stay silent for a while. They are unable to look into your eyes. You keep on thinking about why it all went so wrong.
- You wonder if this has anything to do with your partner committing suicide. You are conflicted with the emotions in your head.
    "What should I do?", you think to yourself.
    + [TAKE A CAB HOME]
    -> carriage_home
    + [GO HOME SEPERATELY]
    -> seperately
    
===carriage_home===    
Both of you stay silent the whole way. You think hard about what to do. You think about how big the betrayal is, and whether you can forgive them for it. 
You go to your room. Your partner has been crying the whole way, her face covered in her mascara.
+ [GO TO SLEEP WITHOUT SAYING ANYTHING]
    {(negative(3))}
    ~angry = true
+ [PUT A HAND ON THEIR HEAD]
    ~angry = false
    "We'll talk about this tomorrow. I'm not there yet, but I think I can forgive you. Please stop crying. It's late and we should go to bed."
    "I love you", you whisper to her.
    
    She gives you a surprised look initially, which turns into a slight smile.
    
    You go to bed praying that things don't turn out the same way this time.
-   -> time_ending