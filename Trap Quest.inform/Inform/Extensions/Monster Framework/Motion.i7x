Motion by Monster Framework begins here.

To check motion of (M - a monster):
	if M is penetrating a body part:
		dislodge M;
	compute motion of M;
	now M is moved.

To compute motion of (M - a monster): [This is default wandering if function is left undefined for a specific monster]
	compute room leaving of M.

To compute room leaving of (M - a monster): [This CANNOT be replaced with a function that potentially doesn't make them leave the room, for any NPC.  Some while loops rely on this to eventually succeed or the game will freeze.]
	if M is in Dungeon11 or M is in Dungeon10:
		try M going east;
	otherwise:
		now neighbour finder is the location of M;
		let A be a random N-viable direction;
		let P be the room A from the location of M;
		if A is a random N-viable direction and P is not bossed and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
			try M going A;
			compute motion reactions of M;
		otherwise if A is a random N-viable direction and P is not bossed and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
			try M going A;
			compute motion reactions of M.

[N is a nearby monster, in case we want to say something specific about hearing that type of monster nearby.]
To say AttractionWorry of (N - a monster):
	[We don't want to read this every time each monster senses the player.]
	if a random number between 1 and 20 > 1:
		do nothing;
	otherwise:
		let M be a random monster in the location of the player;
		if M is a monster:
			[If there's a monster right here, the player probably isn't going to worry about a nearby monster?  Or would they.?  Hmm.]
			do nothing;[We do nothing instead of explicitly "compute correct kneeling reaction of M" because that's automatically done by the "Report kneeling when the player is in danger and seconds > 1" rule. If we did it here too, we'd get two messages in a row.]
		otherwise:
			if there is a worn cowbell:
				say "[one of]In a moment of silence from your cowbell, you hear movement nearby[or]Your cowbell falls silent. You hear stealthy movement nearby.[or]You softly curse at the noise your cowbell is making.[or]Is that something moving in the adjacent room?[or][first custom style]I hope this bell doesn't attract attention.[roman type][or]You wish you could stop your cowbell's ringing.[or][first custom style]This darned cowbell sounds like I'm calling people to supper![roman type][at random]";
			otherwise if the player is glue stuck:
				let G be a random glue in the location of the player;
				if the smell-duration of G > 0:
					say "[one of]The smell of the glue has filled the room and spread beyond. [variable custom style]Would any monsters have learned to hunt for stuck prey?[roman type][or]As you strain at the glue, you try to keep your panicked panting to a minimum.[or][variable custom style]I hope the smell and my struggles don't attract 'attention'![roman type][or]With the smell of the glue spreading, you try to contain your groans as you struggle against the glue's grip.[or]It'd be just awful if a monster found you while you were helpless![or]You can't help moaning as the pungent glue holds you in its relentless grip.[at random]";
				otherwise:
					say "Thankfully, the smell of the glue has faded".

To check seeking (N - a number) of (M - a monster):
	[If N is 2, we need to flag that the monster has had its movement for the round and does not get to act again.]
	if M is released:
		if the map region of the location of M is the map region of the location of the player:
			let L be the location of M;
			let P be the location of the player;
			let D be the best route from L to P through placed rooms;
			if D is a direction:
				now neighbour finder is L;
				let L2 be the room D from the location of M;
				let X be a random number between 1 and 4;
				if D is N-viable:
					if (there is a worn cowbell or the player is glued seductively) and P is not bossed and the number of barriers in L2 is 0 and the number of barriers in L is 0:
						compute M seeking D;
						say "[AttractionWorry of M]";
					otherwise if X > 1 and P is not bossed and the number of barriers in L2 is 0 and the number of barriers in L is 0: [All monsters have a 75% chance of successfully moving.]
						compute M seeking D;
			if N is 2, now M is moved;
		otherwise:
			compute room leaving of M; [Move them away from the entrance]
			now M is uninterested.

To compute (M - a monster) seeking (D - a Direction): [Default Compute Seeking if not specified for the monster.]
	try M going D;
	compute motion reactions of M.

Check someone going:
	if there is a barrier in the location of the player, stop the action.
				
To compute fleeing of (M - a monster): [Default Compute Fleeing if not specified for the monster.]
	now neighbour finder is the location of M;
	let A be a random N-viable direction;
	let P be the room A from the location of M;
	if A is a random N-viable direction and the room A from the location of M is not bossed and P is not the location of the player and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
		try M going A;
	otherwise if A is a random N-viable direction and P is not the location of the player and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
		try M going A;

The motion reaction rules is a rulebook.


To compute motion reactions of (M - a monster): [If the NPC stumbles across the player this turn, they should react appropriately if they catch the player urinating, etc.]
	if M is in the location of the player and M is intelligent:
		now current-monster is M; [Just to make sure]
		follow the motion reaction rules.

This is the monster notices the player urinating rule:
	if player-urinating is 1:
		humiliate 200;
		if there is a worn pee covering diaper:
			say DiaperDeclaration of current-monster;
		otherwise if there is a worn pee covering clothing:
			say ClothesPeeDeclaration of current-monster;
		otherwise:
			say GroundPeeDeclaration of current-monster;
		if current-monster is unfriendly and current-monster is uninterested:
			now current-monster is interested;
			say "The [current-monster] looks [if the player is not prone]like [he of current-monster] wants to fight[otherwise]aggressive[end if]!".
The monster notices the player urinating rule is listed in the motion reaction rules.

To compute monster sleeping:
	repeat with M running through alive monsters:
		compute sleeping of M.
		
To compute sleeping of (M - a monster):
	compute scared reduction of M;
	compute questioned reduction of M;
	compute boredom reduction of M;
	compute sleep reduction of M;

To compute scared reduction of (M - a monster):
	if the scared of M > 0:
		decrease the scared of M by seconds;
		if the scared of M < 0, now the scared of M is 0.

To compute questioned reduction of (M - a monster):
	if the questioned of M > 0:
		decrease the questioned of M by seconds;
		if the questioned of M <= 0:
			now the questioned of M is 0;
			now the question-asked of M is 0.

To compute boredom reduction of (M - a monster):
	if the boredom of M > 0:
		decrease the boredom of M by seconds;
		if the boredom of M <= 0:
			now the boredom of M is 0.

To compute sleep reduction of (M - a monster):
	if the sleep of M > 0:
		decrease the sleep of M by seconds;
		if the sleep of M <= 0:
			now the sleep of M is 0;
			if M is in the location of the player, say "The [M] wakes up!  [if M is unfriendly]Uh-oh...[end if]". 

To compute survival reward of (C - a clothing):
	do nothing.

To compute survival rewards:
	if the remainder after dividing the number of survived monsters by 2 is 0:
		say "[bold type]You feel like you're getting better at avoiding and escaping monsters![roman type][line break]";
		if the number of dangerous monsters is 0:
			if the bimbo of the player < 7:
				say "[variable custom style][one of]Phew, I think I got away![or]I got away again![stopping]";
			otherwise if the bimbo of the player < 13:
				say "[second custom style][one of]Are they not still chasing me?[or]They gave up chasing me again?[stopping]";
			otherwise:
				say "[second custom style][one of]Are they not still chasing me?[or]They gave up chasing me again?[stopping]";
			say "[roman type][line break]";
		if the raw intelligence of the player > the raw dexterity of the player, DexUp 1;
		otherwise IntUp 1;
	repeat with C running through worn clothing:
		compute survival reward of C.


Motion ends here.
