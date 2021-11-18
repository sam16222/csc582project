=== function came_from(-> x)
	~ return TURNS_SINCE(x) == 0

=== function positive(num)
    { partner+num < 10:
		~ partner+=num
	}
    {play_music()}
    
=== function negative(num)
    { partner-num > 0:
		~ partner-=num
	}
    {play_music()}
    
=== function play_music()

    { 
        - partner<=2:    #AUDIOLOOP: audio/3-5.mp3
        - partner>2 and partner<=4: 	#AUDIOLOOP: audio/1-4.mp3
        - partner>4 and partner<=6: 	#AUDIOLOOP: audio/3-3.mp3
        - partner>6 and partner<=8: 	#AUDIOLOOP: audio/2-2.mp3
        - else:     #AUDIOLOOP: audio/3-1.mp3
    }