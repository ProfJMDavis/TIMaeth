//(MaethTalk #1) Introductions (Friend Talk, No conditions)

IF ~Global("TIMaethTalks","GLOBAL",2) TILT1
SAY ~Do you have a spare moment to talk?~
~IncrementGlobal("TIMaethTalks","GLOBAL",1) <--Global now at 3

//(MaethTalk #2) Getting to Know You (Friend Talk, No conditions)

IF ~Global("TIMaethTalks","GLOBAL",4)~ TILT2
SAY ~It's a good thing that you decided to give us a hand. We need the help. It occurred to me, though, that you might have questions about me.~
~IncrementGlobal("TIMaethTalks","GLOBAL",1)~ <--Global now at 5

//(MaethTalk #3) Education (Friend Talk, No conditions)

IF ~Global("TIMaethTalks","GLOBAL",6)~ TILT3
SAY ~<CHARNAME>, when you were growing up at Candlekeep, I'm sure you must have had a lot of classes and instructors.~
IF ~~ THEN DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1)~ <--Global now at 7

//(MaethTalk #4) Love Talk #1: Reverie (Outdoor, Night, Pre-Rest)

CHAIN
IF ~Global("TIMaethLoveTalks","GLOBAL",2)~ THEN ~TIMaethJ~ TILT4
~*You are sitting by the fire, watching the flames, your body wrapped up in the snug softness of your bedroll. Your body is weary, but your mind will not let go of the events of the day. Even the hypnotic dance of the fire does nothing to soothe you. Then you hear the soft pad of footsteps near you and you look up to see Maethor, barefoot and dressed in her black shirt and breeches, looking down at you.~
==TIMaethJ~May I ask you a personal question, <CHARNAME>?~ DO ~IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) SetGlobal("TIMaethTalks","GLOBAL",9)~<--Global now at 9 Love Global now at 3

//(MaethTalk #5) Maethor's Poetry (Outdoor, Day, post-rest)

CHAIN
IF ~Global("TIMaethTalks","GLOBAL",10)~ THEN ~TIMaethJ~ TILT5
~*It is early morning and you are comfortably seated by the coals of last night's fire, poking life back into them with a stick and bits of kindling.You feel surprisingly good, considering that the sun is only beginning to lighten the darkness of the sky above. You listen to the birds chirping as you sprinkle a mixture of herbs into the strainer assembly inside your teapot. The kettle, resting in the coals, is not quite warm enough to sing, but soon will be and you're in the mood for a strong cup of tea. Nearby, Maethor sits in her bedroll and is reading a small book by the faint glow of the coals.*~
== TIMaethJ~How do you feel this morning, <CHARNAME>? *Although she doesn't look up from her book, Maethor's voice is unusually bright and cheery.*~ DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1)~ <--Global now at 11

//(MaethTalk #6) A Little Elvish (no conditions)

IF ~Global("TIMaethTalks","GLOBAL",12)~ THEN BEGIN TILT6
SAY ~*In the middle of a particularly dull (DAYNIGHT)'s march, you find yourself humming along to the faint sounds of melody coming from somewhere nearby. Focusing your attention, you realize that Maethor is singing under her breath. Her voice is not particularly sweet--she has a thin, breathy singing voice that is a too nasal to be truly appealing--but she easily navigates the complex melody.* Gin aphennin... Nin ú-cenol...~ ~IncrementGlobal("TIMaethTalks","GLOBAL",1)~ <--Global now at 13

// MaethTalk #7 Family shame: Courtesan (no conditions)

IF ~Global("TIMaethTalks","GLOBAL",14)~ THEN BEGIN TILT7
SAY ~*Maethor has been quiet for some time. Finally, she looks up at you.* Do you believe in tainted blood, my friend?~
IF ~~ THEN DO ~IncrementGlobal("TIMaethTalks","GLOBAL",1)~ <--Global now at 15

//(TIMaethTalk #8) LoveTalk 2: First Rest at Inn (Inn, Night, Pre-Rest)

CHAIN
IF ~Global("TIMaethLoveTalks","GLOBAL",4)~ THEN ~TIMaethJ~ TILT8
~*Sometimes, the work of a leader never comes to an end. Not even when night falls. After having made arrangements to stay overnight at the inn, you find yourself still on duty passing out room keys and placating the usual assortment of complaints from your companions. You make sure that the kitchen is prepared for a late dinner for your party and then, well after nightfall, you head up stairs to your room to get ready for the evening. Your room is located next to the tubroom, and you notice that you can easily hear the sound of water being poured. You hope that your room is sufficiently insulated from the steam and noise of next door, closing your door with a thump. As you dump your belongings in the chair next to the bed, you reflect on how tired you feel and decide to stretch out on the bed for a moment. You roll over to face the wall, scrunch your pillow tightly under your neck,... and are disturbed by the flicker of light in your eyes. How odd... a crack in the wall... It takes your eyes a couple of seconds to adjust to the light, but the interior of the room next door becomes astonishingly clear. You can just make out Maethor standing by the tub and pouring water out of a copper kettle.*~
DO ~IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) SetGlobal("TIMaethTalks","GLOBAL",17)~ <--Global now at 17 Love Global now at 5

// (TIMaethTalk #9) Love Talk #3 First Night at the Inn: Morning After (Inn, Day, Post-Rest)

CHAIN
IF ~Global("TIMaethLoveTalks","GLOBAL",6) RealGlobalTimerExpired("TIMaethTalksTimer","GLOBAL")~ THEN ~TIMaethJ~ TILT9
~*When you come down the stairs and into the common room, you spy Maethor seated at a far table next to the window. In front of her, she has a platter with a selection of breakfast items; cheese, fruit, fresh rolls, butter, and jam, amongst other delicacies. Your stomach grumbles loudly, so you decide that you could do a lot worse than join Maethor for a morning repast. As if sensing the flow of your thoughts, Maethor looks up from the roll she has been nibbling and turns her head in your direction. She waves briefly, a smile lighting her face, and indicates an empty chair next to her. You ease yourself into the proffered seat.~
DO ~IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) SetGlobal("TIMaethTalks","GLOBAL",19)~ <--Global now at 19 Love Global now at 7

//MaethTalk #10: Faith (Friend Talk, no conditions)

IF ~Global("TIMaethTalks","GLOBAL",20)~ THEN BEGIN TILT10
SAY ~<CHARNAME>, might I ask you a personal question?~
~IncrementGlobal("TIMaethTalks","GLOBAL",1)~ <--Global now at 21

//MaethTalk #11 Dreams (Post-Rest)

IF ~Global("TIMaethTalks","GLOBAL",22)~ THEN BEGIN TILT11
SAY ~*Maethor comes over, walking behind you, and gives you an affectionate pat on the back.* how are you doing, <CHARNAME>?  You don't seem to have slept well.~
~IncrementGlobal("TIMaethTalks","GLOBAL",1)~ <--Global now at 23

//(MaethTalk #12) Love Talk #4: Childhood Revisited (Friend Talk, no conditions)

IF ~Global("TIMaethLoveTalks","GLOBAL",8)~ THEN BEGIN TILT12
SAY ~*You've called for a brief halt when you notice that Maethor has come up beside you, impressively quietly considering that she wears plate mail. You nod for her to speak.* I've been wondering what your relationship with your foster-father was like, <CHARNAME>. Do you ever think about your childhood and miss him?~
~IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) SetGlobal("TIMaethTalks","GLOBAL",25)~ <--Global now at 25 Love Global now at 9

//MaethTalk 13: A New Cloak (no conditions)

IF ~Global("TIMaethTalks","GLOBAL",26)~ THEN BEGIN TILT13
SAY ~Do you have a moment, <CHARNAME>? I have something for you!~
~IncrementGlobal("TIMaethTalks","GLOBAL",1)~ <--Global now at 27

// (TIMaethTalk 14) LoveTalk 5: Jealousy (no conditions)

IF ~Global("TIMaethLoveTalks","GLOBAL",10)~ THEN BEGIN TILT14
SAY ~At times, <CHARNAME>,I've seen you scowling at me when I'm talking to men. Since I've never intended any offense, I'd like to know the reason.~
~IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) SetGlobal("TIMaethTalks","GLOBAL",29)~ <--Global now at 29 Love Global now at 11

//MaethTalk #15: Beauty, or, Maethor wrestles with Love (no conditions)

IF ~Global("TIMaethTalks","GLOBAL",30) RealGlobalTimerExpired("TIMaethTalksTimer","GLOBAL") !HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ TILT15
SAY ~*You stop for a moment to catch your breath and tighten a strap on your pack that has somehow worked loose, when you notice Maethor hanging close to the periphery of your vision, wringing her hands. You look up and she reddens, ducking her head.* Might I have a word with you, <CHARNAME>?~
~IncrementGlobal("TIMaethTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",3600)~ <--Global now at 31

//(TIMaeth Talk #16) Love Talk #6: First Times (Forest, Night, Pre-Rest)

CHAIN IF ~Global("TIMaethLoveTalks","GLOBAL",12)~ THEN ~TIMaethJ~ TILT16
~You finish your turn at watch just past midnight. The moons are bright and the stars seem to dance in the sky above. Despite the difficulties of the day and your increasing uncertainty about what lies ahead, you feel a sense of peace within and you hope to retain that peace as long as you can. As you return to the campsite, you notice Maethor's bedroll and cooking utensils still packed. You unfold the blankets of your bedroll, puzzled, laying them a little distance away from the fire and partly concealed by some tall grass. Your other companions are either asleep, at reverie, or busy with their own concerns, so you decide to look for her without disturbing anyone else.~
= ~The moonlight keeps the night from being utterly dark, but it quickly becomes clear that Maethor has left the campsite without leaving much to indicate where she has gone. You can see the marks of small feet in the wet grass, but little else. Afraid to lose even this faint trail, you find yourself hurrying into the deeper parts of the wood.~
~IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) SetGlobal("TIMaethTalks","GLOBAL",33)~ <--Global now at 33 Love Global at 13

//(MaethTalk #17) Love Talk #7: First Times (Morning After) (Forest, Day, Post-Rest)

IF ~Global("TIMaethTalks","GLOBAL",14)~ THEN BEGIN TILT17
SAY ~*When you wake, you see the grey sky beginning to lighten into a clear dawn. It promises to be a beautiful day. You, on the other hand, feel a pounding in your head and are momentarily disoriented. Then you feel a small, cool hand slide up your back and come to rest on the back of your neck. It feels wonderful, tingles radiating from the fingers and easing away all tension and pain. Maethor.* Uhmmmm. How does that feel?~
~IncrementGlobal("TIMaethTalks","GLOBAL",1) SetGlobal("TIMaethTalks","GLOBAL",35)~ <--Global now at 35 Love Global now at 15

//(MaethTalk #18) Love Talk #8: Jealousy Revisited (no conditions)

IF ~Global("TIMaethLoveTalks","GLOBAL",16) RealGlobalTimerExpired("TIMaethTalksTimer","GLOBAL") !HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN BEGIN TILT18
SAY~*Maethor stands beside you, her hands folded across her armored chest.* Something about to(DAYNIGHT) makes me feel happy for some reason. More hopeful, anyway. <CHARNAME>...?~
~IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) SetGlobal("TIMaethTalks","GLOBAL",37)~ <--Global now at 37 Love Global now at 17

//(MaethTalk #19) Love Talk 9: Second rest at an inn (Inn, Night, Pre-Rest)

CHAIN
IF ~Global("TIMaethLoveTalks","GLOBAL",18) RealGlobalTimerExpired("TIMaethTalksTimer","GLOBAL") !HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN ~TIMaethJ~ TILT19
~*It has been yet another long day. Between hours of mind-numbingly boring marching are the moments of sheer terror inherent to battle. You have decided to spend the night in one of the local inns, hoping to find peaceful rest. You are stashing you gear in one of the empty cupboards in your room when you hear the music begin. Stopping to listen for a moment, you hear the familiar skirl of a set of small pipes amidst the murmur of voices and off-key singing. Maethor, apparently, has decided to play.*~
~IncrementGlobal("TIMaethLoveTalks","GLOBAL",1) SetGlobal("TIMaethTalks","GLOBAL",39)~ <--Global now at 39 Love Global at 19

//MaethTalk #20 Family shame: Fey'ri (Inn, Day, Post-Rest)

IF ~Global("TIMaethTalks","GLOBAL",40) RealGlobalTimerExpired("TIMaethTalksTimer","GLOBAL") !HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN BEGIN TILT20
SAY~*Being the first to rise on a dreary, misty morning, you have decided to have your breakfast by the fire in the common room. You are startled out of your reflection by someone touching your arm. You look up to see Maethor standing by you* May I join you, <CHARNAME>?~
~IncrementGlobal("TIMaethTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",3600)~<--Global now at 41

//MaethTalk #21: Justice (no conditions)

IF ~Global("TIMaethTalks","GLOBAL",42) RealGlobalTimerExpired("TIMaethTalksTimer","GLOBAL") !HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ TILT21
SAY ~*You notice movement out of the corner of your eye. When you turn your head, you see Maethor gesturing for you to call a halt. She is flushed from the exertion of walking in full armor and takes a deep swig from her waterskin. The party gratefully scatters to rest, but Maethor stays nearby and nods to you.* I'm not really a very philosophical person, but I'm curious... Do you believe in justice?~
~IncrementGlobal("TIMaethTalks","GLOBAL",1) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",3600)~<--Global now at 43

//(MaethTalk #22) Love Talk 10: Concerning Rings (no conditions)

IF ~Global("TIMaethLoveTalk","GLOBAL",20) RealGlobalTimerExpired("TIMaethTalksTimer","GLOBAL") !HasItemEquiped("%tutu_var%BELT05","TIMaeth")~ THEN BEGIN TILT22
SAY ~*Maethor approaches you, hesitantly. You are constantly surprised by her caution, since she now routinely joins you at rest and makes love with you, as she says, 'By your command.'* I wished to discuss something with you, <CHARNAME>.~
~IncrementGlobal("TIMaethLoveTalk","GLOBAL",1) SetGlobal("TIMaethTalks","GLOBAL",45) RealSetGlobalTimer("TIMaethTalksTimer","GLOBAL",3600)~<--Global now at 45 Love Global now at 21

























