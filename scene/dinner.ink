
->intro -> dinner
===dinner===
You reach La Diornos.

You pull the chair back for your partner and they take a seat. You sit next to them.

    * "How was your day["]?", you asked sincerely 
        // Write some subsequent dialogue
        
    * "How is your sister doing? I remember she was going through a tough time at work["].". 
        // Write some subsequent dialogue
        {positive(1)}
    * "I've had a pretty hectic day today. Can't wait to relax and have a good time"
        //Write some subsequent dialog
        {negative(1)}
    - -> food

===food===
The waiter comes along to ask you about your order. Your partner orders potatoes with the side of veggies. You wonder why they didn't order what they usually have here.
    * [IGNORE IT, THEY MUST BE FOCUSSING ON THEIR DIET]
        "I'll have a BBQ chicken steak with a side of steamed peas and some fried rice"
        {negative(1)}
        // Write some subsequent dialogue
    * [ASK YOUR PARTNER WHY THEY ARE NOT ORDERING THEIR FAVORITE]
        "What happened? Why aren't you ordering XYZ?"
        {positive(1)}
        // Write some subsequent dialogue
    - -> conversation
        
===conversation===
*[TALK ABOUT YOUR LAST TRIP TOGETHER]
    "Hey remember when we went to the INSERT PLACE HERE? I've been thinking about that quite a bit lately", you said.
    {positive(1)}
    ->END
*[TALK ABOUT GOING ON A FISHING TRIP WITH YOUR BUDDIES]
    "Hey my buddies and I were thinking of going on a fishing trip this weekend. I know I promised we'll go somewhere, but it's been a while since I've gone out with them. Would you be okay with it?".
    {negative(1)}
    ->END
*{evidence_found}[TALK ABOUT THE LETTER YOU FOUND]
    -> accuse
*{!evidence_found }[APOLOGISE FOR NOT HAVING BEEN THERE FOR YOUR PARTNER]
    -> apologise

===accuse===
{negative(2)}
->END

===apologise===
->END

===dinner_exit===
*{!evidence_found}[ASK FOR A WALK]
    -> ask_walk
*{evidence_found}[GO SEPERATELY]
    -> seperately

===ask_walk===
{ 
    - partner < 3:
        -> home_direct
    - else:
        -> walk
}

===seperately===
->END

===walk===
->END

===home_direct===
You get back home with your partner. Things feel very disconnected and you keep on wondering what you could have done to change them. Your partner goes to your room and goes to bed directly.
->END

->END