=== function came_from(-> x)
	~ return TURNS_SINCE(x) == 0

=== function positive(num)
    //This function will increment your partner's positivty level.
    {   partner+num <= 10:
		    ~ partner+=num
		-else:
		    ~ partner = 10
	}
    {play_music()}
    
=== function negative(num)
    //This function will decrement your partner's positivty level.
    {   partner-num >= 0:
		    ~ partner-=num
	    -else:
		    ~ partner = 0
	}
    {play_music()}
    
=== function play_music()

    { 
    // music is divided into 5 blocks. Each block represents a positive/negative state as well as the number of loops the player has gone through.
    
    // most-negative block
        - cheating_confirmed and angry and n==1: #AUDIOLOOP: audio/5-1.mp3
        - cheating_confirmed and angry and n==2: #AUDIOLOOP: audio/5-2.mp3
        - cheating_confirmed and angry and n==3: #AUDIOLOOP: audio/5-3.mp3
        - cheating_confirmed and angry and n==4: #AUDIOLOOP: audio/5-4.mp3
        - cheating_confirmed and angry and n==5: #AUDIOLOOP: audio/5-5.mp3
        
    // somewhat negative block
        - (not cheating_confirmed or not angry) and (partner < 4) and n==1: #AUDIOLOOP: audio/4-1.mp3
        - (not cheating_confirmed or not angry) and (partner < 4) and n==2: #AUDIOLOOP: audio/4-2.mp3
        - (not cheating_confirmed or not angry) and (partner < 4) and n==3: #AUDIOLOOP: audio/4-3.mp3
        - (not cheating_confirmed or not angry) and (partner < 4) and n==4: #AUDIOLOOP: audio/4-4.mp3
        - (not cheating_confirmed or not angry) and (partner < 4) and n==5: #AUDIOLOOP: audio/4-5.mp3

    // neutral block
        - (partner >= 4 and partner < 6) and n==1: #AUDIOLOOP: audio/3-1.mp3
        - (partner >= 4 and partner < 6) and n==2: #AUDIOLOOP: audio/3-2.mp3
        - (partner >= 4 and partner < 6) and n==3: #AUDIOLOOP: audio/3-3.mp3
        - (partner >= 4 and partner < 6) and n==4: #AUDIOLOOP: audio/3-4.mp3
        - (partner >= 4 and partner < 6) and n==5: #AUDIOLOOP: audio/3-5.mp

    // somewhat positive block
        - (partner >= 6 and partner < 8) and n==1: #AUDIOLOOP: audio/2-1.mp3
        - (partner >= 6 and partner < 8) and n==2: #AUDIOLOOP: audio/2-2.mp3
        - (partner >= 6 and partner < 8) and n==3: #AUDIOLOOP: audio/2-3.mp3
        - (partner >= 6 and partner < 8) and n==4: #AUDIOLOOP: audio/2-4.mp3
        - (partner >= 6 and partner < 8) and n==5: #AUDIOLOOP: audio/2-5.mp3

    // most-positive block
        - not angry and (partner >= 8) and n==1: #AUDIOLOOP: audio/1-1.mp3
        - not angry and (partner >= 8) and n==2: #AUDIOLOOP: audio/1-2.mp3
        - not angry and (partner >= 8) and n==3: #AUDIOLOOP: audio/1-3.mp3
        - not angry and (partner >= 8) and n==4: #AUDIOLOOP: audio/1-4.mp3
        - not angry and (partner >= 8) and n==5: #AUDIOLOOP: audio/1-5.mp3
    // catch all in case the function breaks
        - else:     #AUDIOLOOP: audio/3-1.mp3
    }