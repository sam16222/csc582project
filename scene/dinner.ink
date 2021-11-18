===dinner===
{n>2:You notice your partner is extremely quiet today. They haven't spoken a word ever since you've gotten into the cab.}
You reach La Diornos.

You're greeted at the reception.
"Buono Sera signore! How can we help you?"
"Hey! We have a reservation for two?"

You're led to the table beside the window with the most amazing view of the Manhattan skyline.

You pull the chair back for your partner and they take a seat. You sit across from them.

    + "How was your day["]?", you asked sincerely 
        Your partner smiles and says they didn't do much. "Just took care of some small taks"
        "Ah so it was a relaxing day for you then"
        (faintly) "Yeah"
        
        ** [CALL FOR SOME SERVICE] -> call_server
            
        ** {n>1} [ASK WHAT'S WRONG] -> whats_wrong
        
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

"You know you can tell me anything right? It's okay if you don't want to right now. Just know I'm here whenever you need me."

Hearing this, your partner feels a bit better. They look at you and smile a little.

You realize this might be the first time you're seeing them smile in quite a while.

"Come on now... Who's going to devour your favorite Risotto?"

They chuckle.

-> call_server

===food===
The waiter comes along to ask you about your order. Your partner orders Pan-fried potatoes with a side of veggies. You wonder why they didn't order what they usually have.
    + [THEY MUST BE FOCUSSING ON THEIR DIET]
        "I'll have a Ragu alla Bolognese with a side of steamed carrots and french beans"
        {negative(1)}
        -> conversation
        // Write some subsequent dialogue
    + [ASK YOUR PARTNER WHY THEY ARE NOT ORDERING THEIR FAVORITE MEAL]
        "What happened? Why aren't you ordering your usual Risotto Alla Milanese?"
        -> whats_wrong
        // Write some subsequent dialogue

        
        
===food_2===
The waiter comes along to ask you about your order.

    + [ORDER FOR THEM]
        "I'll have a Ragu alla Bolognese with a side of steamed carrots and french beans and a Risotto Alla Milanese for this beautiful person in front of me"
        {negative(1)}
    + [LET THEM ORDER]
        {positive(1)}
        Your partner looks at you. "I really don't feel like having my favorite tonight. If that's okay"
        "Sure thing! Order whatever you like"
        They order Pan-fried potatoes with a side of veggies.

    - -> conversation

===conversation===
+[TALK ABOUT YOUR LAST TRIP TOGETHER]
    "Hey remember when we went to the Trosmo? I've been thinking about that quite a bit lately", you said.
    {positive(1)}
    "Sitting under the stars for hours with the biting cold surrounding us. And when the Aurora Borealis started... it was so magical."
    
    Your partner smiles as the memories start forming clear images in their head.
    
+[TALK ABOUT GOING ON A FISHING TRIP WITH YOUR BUDDIES]
    "So... my buddies and I were thinking of going on a fishing trip this weekend. I know we were going to try out the new sushi place, but it's been a while since I've gone out with them. Would you be okay with it?".
    "Yeah sure, go ahead.", they replied sullenly.
    "Thanks hon you're the best!!"
    {negative(1)}
    
+[TALK ABOUT BLAKE FROM WORK]
    "I bumped into Blake today at work; who seemed to be in a specially smug mood. I don't know why but it felt like he was trying to show that he's superior to me."
    As soon as your partner hear's the name "Blake", they tense up and get nervous.
    
    ++{evidence_found}[NOTICE NERVOUSNESS AND ACCUSE]
        -> accuse
    ++{!evidence_found }[APOLOGISE FOR NOT HAVING BEEN THERE FOR YOUR PARTNER]
        -> apologise

- -> conversation2

    
===conversation2===
+{evidence_found}[TALK ABOUT THE LETTER YOU FOUND]
    -> accuse
+{!evidence_found}[APOLOGISE FOR NOT HAVING BEEN THERE FOR YOUR PARTNER]
    -> apologise
===accuse===
{negative(3)}
->END

===apologise===
"So listen... I know I haven't been around lately. I've been swamped with work and just didn't took the time to spend it with you. I know I can act like I don't care but I get lost in my work. These are not excuses. I just want to say I'm sorry. I will try to work on this. That's a promise. 
-> dinner_exit

===dinner_exit===
You finish up your dinner and tip the waiter. 
+{!evidence_found}[ASK FOR A WALK]
    -> ask_walk
+{evidence_found}[GO HOME SEPERATELY]
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
->END

===walk===
You take a walk through China Town. You used to come here often when you started dating. It all feels like it happened yesterday. Your partner was extremely fond of the food stands, all the restaurants restaurants along with the stores selling ancient artifact replicas. They alwasy had an interest in Chinese history and so this place meant a lot to them.

You walk all the way to the Manhattan bridge, which is you and your partner's favorite spot. You put your arm around their shoulder and they gently nestle onto your shoulder. You have a really positive feeling about the night. You hope that things get better after this. 

You head back home. You kiss your partner good night and you both go to sleep.
->time_ending

===home_direct===
You get back home with your partner. 
{ -n<2 : 
    Things feel very disconnected and you keep on wondering what you could have done to change them. Your partner goes to your room and goes to bed directly.
    -else: 
    You go to bed praying that things don't turn out the same way this time. You keep on replaying the night in your head, thinking of what can be done differently. 
}
-> time_ending

===time_ending===
.
.
.
{   
    - n>=3 : 
        -> death_loop
    - else: 
        -> random 
}