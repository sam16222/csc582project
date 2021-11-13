
->intro -> dinner
===dinner===
You reach La Diornos.

You pull the chair back for your partner and they take a seat. You sit next to them.

    * "How was your day["]?", you asked sincerely 
        -> nq1
    * "How is your sister doing? I remember she was going through a tough time at work["].". 
        -> pq1
    * "I've had a pretty hectic day today. Can't wait to relax and have a good time" 
        ->nq1

===pq1===
~partner+=1
// Write some subsequent dialogue
->food

===ngq1===
// Write some subsequent dialogue
->food

===nq1===
~partner-=1
// Write some subsequent dialogue
->food

===food===
The waiter comes along to ask you about your order. Your partner orders potatoes with the side of veggies. You wonder why they didn't order what they usually have here.
    * [IGNORE IT, THEY MUST BE FOCUSSING ON THEIR DIET]
        "I'll have a BBQ chicken steak with a side of steamed peas and some fried rice"
        ~partner-=1
        // Write some subsequent dialogue
        ->conversation
    * [ASK YOUR PARTNER WHY THEY ARE NOT ORDERING THEIR FAVORITE]
        "What happened? Why aren't you ordering XYZ?"
        ~partner+=1
        // Write some subsequent dialogue
        ->conversation
        
===conversation===
*[TALK ABOUT YOUR LAST TRIP TOGETHER]
    "Hey remember when we went to the rocky mountains? I've been thinking about that quite a bit lately", you said.
    ->END
*[TALK ABOUT GOING ON A FISHING TRIP WITH YOUR BUDDIES]
    "Hey my buddies and I were thinking of going on a fishing trip this weekend. Would you be okay with it?".
    ->END
*{evidence_found}[TALK ABOUT THE LETTER YOU FOUND]
    ->END
*{!evidence_found}[APOLOGISE FOR NOT HAVING BEEN THERE FOR YOUR PARTNER]




->END