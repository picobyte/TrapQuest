Player Riding by Every Turn begins here.

[!<ComputePlayerMounted>+

REQUIRES COMMENTING

+!]
To compute player hitching a ride:
	now resting is 0;
	let S be 2 times the buckle threshold of the player;
	let W be the weight of the player / 4; [More efficient than calculating weight twice]
	repeat with C running through worn clothing:
		[say "Fatigue influence of [C] is [fatigue-influence of C].";]
		increase W by the fatigue-influence of C;
	now W is W / 2;
	if W > the strength of the player * 4, now W is the strength of the player * 4; [Any player of any weight should be able to bounce for at least 20 rounds]
	if W > 0: [W > 0 is there because fatigue increases very slowly when the player is superlight]
		if debugmode is 1, say "Fatigue [the fatigue of the player] -> ";
		FatigueUp W;
		if debugmode is 1, say "[the fatigue of the player] | [the buckle threshold of the player].";
	otherwise:
		unless the player is flying, FatigueUp 1; [It still increases though]
	if the location of the player is Dungeon19:
		if the soreness of asshole is 8:
			say "The stench in this room takes you over the edge and you start to faint.";
			now delayed fainting is 1;
			now the fainting reason of the player is 3;
	if the player is not vine fucked:
		if the fatigue of the player > S:
			unless the player is trap stuck:
				say "Your knees buckle with fatigue, and you start to roll over.  ";
				try kneeling;
				repeat with M running through intelligent dangerous monsters in the location of the player:
					make M expectant; [This way monsters are delayed for a turn when you buckle, giving you a chance to wait, submit, etc.]
				if there is a dangerous monster in the location of the player and the body soreness of the player > 8 and the bladder of the player > 6:
					now delayed urination is 1;
					say "Overcome with pain[if the bimbo of the player < 5] and fear[otherwise if the humiliation of the player < 10000] and shame[end if], you involuntarily wet yourself.";
					try urinating;
			otherwise:
				if the player is hook stuck:
					say "Your arms feel weak, your legs feel weak, your everything feels weak.  Your legs begin to shake.  You [if the bimbo of the player < 12]burst into tears[otherwise]squeal like a little girl[end if] as you feel your knees buckle underneath you, and all your weight is placed onto the hook.  The intense pressure turns quickly into blinding pain, and causes you to faint within seconds.";
					now delayed fainting is 1;
					now the fainting reason of the player is 6;
		otherwise:
			if the player is vine-cursed or the player is vine stuck or the location of the player is WoodsBoss01 or the class of the player is schoolgirl, compute vines standing; [EXPERIMENTAL]
	otherwise:
		compute vines fucking.

Player Riding ends here.
