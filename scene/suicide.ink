== suicide_beginning ==
#AUDIOLOOP: audio/proj.mp3
On your way back from work, you notice a new gift shop.
You hope after the date that things will get back to normal soon.
"I should probably get them something to cheer them up" you think to yourself.

+ [BUY A BOUQUET OF FLOWERS] 
    You get them a beautiful bouquet of flowers
    -> suicide_main
+ [BUY A FRANK SINATRA RECORD] 
    You get them a vinyl record of "The Way You Look Tonight", which is their favorite song of all time
    -> suicide_main
+ [BUY A PURSE]
    You get them a vintage magenta purse.
    -> suicide_main

===suicide_main===
You feel good about this gift. 

As you walk closer to your home, you think about how you've been way too busy at work lately and haven't been able to pay attention to your partner as much as you want to. "I'll do better", you mutter.

You reach home to find that the door is locked.

"That's odd. I thought they didn't have to go to work today."
-> try_enter

===try_enter===
* [KNOCK ON THE DOOR] 
    ->knock
* [CALL OUT YOUR PARTNER'S NAME]
    ->call_out
* [CALL YOUR PARTNER ON THE CELLPHONE]
    -> call
* {knock and call_out and call}[GET SPARE KEY FROM NEIGHBOR] -> neighbor
* {knock and call_out and call}[BREAK WINDOW] -> break_window

===knock===
You knock on the door. There is no answer
->try_enter
===call_out===
You try {knock or call : frantically} calling out your partner's name. There is no answer.
    -> try_enter
===call===
You try calling their phone. Nobody picks up and it goes to voice mail.
    -> try_enter

===break_window===
You break the window and enter the house ->enter_house
===neighbor===
You enter the house using the spare key from the neighbor ->enter_house

===enter_house===
to find it dead silent.
You check the garage to find their car still parked inside.
"Maybe they went to for a walk? But why wouldn't they answer their phone then?"
You call out their name trying to figure out if they're still here.
    * [CHECK THE FIRST FLOOR]
        Your heartbeat increases as you walk into each room on the first floor to find it empty.
        You head upstairs, your chest pounding with anxiety.
        As you come to your room, you get a bad gut feeling, as if something terrible has happened.
            ** [OPEN THE DOOR]
                You slowly and cautiously open the door.
                
                It's pitch black. You can make out a dim silhouette.
                *** [CALLOUT]
                    "What're you doing in the dark? I've been calling for you, why didn't you answer?"
                    No response.
                    **** [SWITCH ON THE LIGHTS]
                        You switch on the lights.
                        
                        ...
                        ...
                        ...
                        You stare in horror as you find your partner hanging from the ceiling, lifeless.
                        Your heart feels like it's going to burst out from your chest.
                        
                        *****"This can't be happening" 
                            -> body_down
                        *****"No no no no no"
                            -> body_down
                        
===body_down===
You immedietly leap to try and bring your partner's body down.
* [ADVANCE TIME] -> advance_time

===advance_time===
It's been a week since your partner's funeral. You haven't left your house or spoken to anyone since the funeral. You are lying in your bed, with hunger pangs slowly torturing you.
    * [EAT SOMETHING]
        Everything in the fridge has gone bad. It's 2 AM, there is no way to get any groceries. You take the car out to get some take-out from your partener's favorite place. 
        On the way you cross the Manhattan bridge. You stop by to look at the water. That was your favorite spot. to visit. It has lost all it's charm though. The beautiful sound of the water have been replaced by an emptiness. 
        **[CLIMB UP THE RAILING] 
            The water seems inviting. You contemplate the reason for your existence. You think of jumping into the water. You see a vortex forming into the water. 
                *** [THAT'S A SIGN] -> jump
                *** [I MUST BE HALLUCINATING] -> jump
                
===jump===
You don't want to live anymore. You jump into the water. The vortex pulls you in, with lights flickering all around you. You give into the water.
.
.
.
.
.
You wake up in your bed. There's a note next to you.
"Hey sleepy. I have to get to work early today. I'll see you at dinner. xoxo"

You check the calender. It's 4 days before your anniversary. You think you might be dreaming. You pinch yourself, slap your self, trying every possible way to wake yourself up. Nothing is changing.
"Maybe I've been sent back in time", you think to yourself.
"I can fix this now."

You think about your anniversary date. "Maybe something happened then. Maybe I can change something."
-> intro

->END