=== function came_from(-> x)
	~ return TURNS_SINCE(x) == 0

=== function positive(num)
    { partner <5:
		~ partner+=num
	}
    {play_music()}
    
=== function negative(num)
    { partner > 0:
		~ partner-=num
	}
    {play_music()}
    
=== function play_music()
    { partner:
    - 0: 	#AUDIOLOOP: audio/proj.mp3
    - 1: 	#AUDIOLOOP: audio/proj.mp3
    - 2: 	#AUDIOLOOP: audio/proj.mp3
    - else: #AUDIOLOOP: audio/proj2.mp3
    }