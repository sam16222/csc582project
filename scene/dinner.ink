===dinner===
{n>2:You notice your partner is extremely quiet today. They haven't spoken a word ever since you've gotten into the cab.}
You reach La Diornos.

You're greeted at the reception.
"Buono Sera signore! How can we help you?"
"Hey! We have a reservation for two?"

You're led to the table beside the window with the most amazing view of the Manhattan skyline.

You pull the chair back for your partner and they take a seat. You sit across from them.

    + "How was your day["]?", you asked sincerely 
        Your partner smiles and says they didn't do much. "Just took care of some small errands"
        "Ah so it was a relaxing day for you then"
        (faintly) "Yeah"
        
        ++ [CALL FOR SOME SERVICE] -> call_server
            
        ++ {n>1} [ASK WHAT'S WRONG] -> whats_wrong
        
    + "How is your sister doing? I remember she was going through a tough time at work["].".
        "I don't know... I haven't talked to her in a while."
        {positive(1)}
        "Oh.. I thought you might've checked up on her. Anyway, I'm sure she's doing better else she would've called you"
    + "I've had a pretty hectic day today. Can't wait to relax and have a good time"
        {negative(1)}
        "The intern working under me is an absolute idiot. He does the exact opposite of what I tell him to do. I've never been one for firing someone but this kid needs to go. He alone has managed to increase my workload three fold."
        
    - -> call_server

=== call_server ===
You look around for the server. You make eye contact with one and signal them to come over.
{   
    -whats_wrong : ->food_2
    -else : -> food
}


===whats_wrong===
{positive(1)}
You look at your partner and see that they're showing disinterest in everything. You decide to do something about it.

"Hey... what's wrong? You don't seem... yourself", you ask with concern.

Your partner looks at you and as soon as you make eye contact, they start tearing up.

You immedietly get up from your seat and kneel down beside your partner. You put a reassuring arm around her and try to console her.

"It's okay... Everything's fine."

You take the napkin placed on the table and try to wipe away your partner's tears.

// "You know you can tell me anything right? It's okay if you don't want to right now. Just know I'm here whenever you need me."

// Hearing this, your partner feels a bit better. They look at you and smile a little.

// You realize this might be the first time you're seeing them smile in quite a while.

// "Come on now... Who's going to devour your favorite Risotto?"

// They chuckle.

-> call_server

===food===
The waiter comes along to ask you about your order. Your partner orders Pan-fried potatoes with a side of veggies. You wonder why they didn't order what they usually have.
    + [ORDER YOUR FOOD]
        "I'll have a Ragu alla Bolognese with a side of steamed carrots and french beans"
        {negative(1)}
        -> conversation
        // Write some subsequent dialogue
    + [ASK THEM IF SOMETHING IS WRONG]
        "What happened? Why aren't you ordering your usual Risotto Alla Milanese?"
        -> whats_wrong_from_food
        // Write some subsequent dialogue


===whats_wrong_from_food===
{positive(1)}
You look at your partner and see that they're showing disinterest in everything. You decide to do something about it.

"Hey... what's wrong? You don't seem... yourself", you ask with concern.

Your partner looks at you and as soon as you make eye contact, they start tearing up.

You immedietly get up from your seat and kneel down beside your partner. You put a reassuring arm around her and try to console her.

"It's okay... Everything's fine."

You take the napkin placed on the table and try to wipe away your partner's tears.
   
   + [CHANGE THE TOPIC] -> conversation 
        
===food_2===
The waiter comes along to ask you about your order.

    + [ASK FOR THEIR FAVORITE]
        "I'll have a Ragu alla Bolognese with a side of steamed carrots and french beans and a Risotto Alla Milanese for this beautiful person in front of me"
        {negative(1)}
    + [ASK WHAT THEY WOULD LIKE]
        {positive(1)}
        Your partner looks at you. "I really don't feel like having my favorite tonight. If that's okay"
        "Sure thing! Order whatever you like"
        They order Pan-fried potatoes with a side of veggies.

    - -> conversation

===conversation===
+[TALK ABOUT YOUR LAST TRIP TOGETHER]
    "Hey remember when we went to the Trosmo? I've been thinking about that quite a bit lately", you say.
    {positive(1)}
    "Sitting under the stars for hours with the biting cold surrounding us. And when the Aurora Borealis started... it was so magical."
    
    Your partner smiles as the memories start forming clear images in their head.
    
+[TALK ABOUT GOING ON A FISHING TRIP WITH YOUR BUDDIES]
    "So... my buddies and I were thinking of going on a fishing trip this weekend. I know we were going to try out the new sushi place, but it's been a while since I've gone out with them. Would you be okay with it?".
    "Yeah sure, go ahead.", they replied sullenly.
    "Thanks hon you're the best!!"
    {negative(1)}
    
+{!cheating_confirmed}[TALK ABOUT BLAKE FROM WORK]
    "I bumped into Blake today at work; they seemed to be a bit awkward. That was a bit odd I felt"
    Your partner lowers their eyes. 
    
    ++{evidence_found}[NOTICE NERVOUSNESS AND ACCUSE]
        -> accuse
    ++{!evidence_found }[APOLOGISE FOR NOT HAVING BEEN THERE FOR YOUR PARTNER]
        -> apologise

- -> conversation2

    
===conversation2===
+{evidence_found}[TALK ABOUT THE TEXT YOU SAW]
    -> accuse
+{!evidence_found or cheating_confirmed}[APOLOGISE FOR NOT HAVING BEEN THERE FOR YOUR PARTNER]
    -> apologise

===accuse===
"I don't know if there's a better way to do this. Is there something going on between you and Blake? Is that why you've been so distant? Please tell me the truth"
They don't say anything. Their eyes never look into yours, and a tear rolls down her cheeks.
.
.
They don't need to say anything more.
~ cheating_confirmed = true
{negative(3)}
+"HOW COULD YOU DO THIS TO ME?"
    {positive(1)}
    You lash out at your partner. You scream at them for their unfaithfulness. You ask what went wrong. They sit there silently with tears rolling down their eyes. 
    You stop after a while. You drink a glass of water and calm yourself down. 
+[STAY SILENT]
    {negative(1)}
    You both stay silent for a while. They are unable to look into your eyes. You keep on thinking about why it all went so wrong.
-   You wonder if this has anything to do with your partner committing suicide. You are conflicted with the emotions in your head.
    "What should I do?", you think to yourself.
    ->dinner_exit

===apologise===
"So listen... I know I haven't been around lately. I've been swamped with work and just didn't take the time to be there for you. I know I can act like I don't care, but I just get lost in my work. These are not excuses. I just want to say I'm sorry. I will try to work on this. That's a promise. 
-> dinner_exit

===dinner_exit===
You finish up your dinner and tip the waiter. 
+{!cheating_confirmed}[ASK FOR A WALK]
    -> ask_walk
+{cheating_confirmed}[TAKE A CAB HOME]
    -> home_direct
+{cheating_confirmed}[GO HOME SEPERATELY]
    -> seperately

===ask_walk===
"The sky is so pretty tonight! Would you want to walk back home?", you asked intently.
{ 
    - partner <= 6:
        "Can we please take a cab home? I don't really feel like walking", they replied.
        -> home_direct
    - else:
        "I guess", they replied hesitantly.
        -> walk
}

===seperately===
"I want to be alone for some time.", you said and left for a walk. You can hear your partner crying behind you, but at this point you're unable to look at their face.
You take a long walk, trying to think of what to do.
.
.
.
You go back home. You enter your room and see your partner crying in the bed. Her mascara has rolled all the way down her cheeks.
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

===walk===
{positive(2)}
You take a walk through China Town. You used to come here often when you started dating. It all feels like it happened yesterday. Your partner was extremely fond of the food stands, all the restaurants restaurants along with the stores selling ancient artifact replicas. They always had an interest in Chinese history and so this place meant a lot to them.

You walk all the way to the Manhattan bridge, which is you and your partner's favorite spot. You put your arm around their shoulder and they gently nestle onto your shoulder. You have a really positive feeling about the night. You hope that things get better after this. 
+   [HEAD BACK HOME]
    You head back home. You kiss your partner good night and you both go to sleep.
    -> evidence_check

===home_direct===
You go back home with your partner. 
{ 
    - TURNS_SINCE(->accuse) == 1 : Both of you stay silent the whole way. You think hard about what to do. You think about how big the betrayal is, and whether you can forgive them for it.   
    - n<2 : 
    Things feel very disconnected and you keep on wondering what you could have done to help them. Your partner goes to your room and goes to bed directly.
    - else : 
    You go to bed praying that things don't turn out the same way this time. You keep on replaying the night in your head, thinking of what can be done differently. 
}
-> evidence_check

===evidence_check===
{   
    - n==3 : 
        -> cheating
    - else: 
        -> time_ending
}

===cheating===
You're barely able to sleep due to your anxiety, just when you hear a low chime from somewhere. You look around to see where it came from. It sounded like it came from a phone, but it didn't come from your phone.
* [TAKE A LOOK AT YOUR PARTNER'S PHONE]
    You get up to check your partner's phone. There's a text message from Blake.
    "Hmmm, that's weird. It's quite late right now.", you think to yourself.
    **[READ TEXT FROM BLAKE]
        You decide to read the text.
        "Do you want to talk?", the text read.
        You try to scroll up but the only other text in the chain is the one your partner sent earlier in the evening
        {
            - partner >= 7 :
                "I can't do this to him anymore", read the text.
            - else :
                "It isn't working anymore", read the text.
        }
        You think it's strange that these are the only two texts in the chain.
        ~evidence_found = true
        Your head starts coming up with explanations. Your anxiety is 100x worse now. You keep on twisting and turning in bed, praying for sleep to come soon and end this nightmare.
        -> time_ending
    **[PUT PHONE AWAY]
        You have more pressing concerns to worry about. You put the phone back and go back to analyzing all the points in your date. There's a pit forming in your stomach. You're afraid to fall asleep.
        -> time_ending
* [GO BACK TO SLEEP]
    You decide to ignore the chime and go back to sleep. There's a pit forming in your stomach as you're analyzing the date for events, thinking about how you could change things. Sleep seems way out of your reach for tonight.
    -> time_ending
