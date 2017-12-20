Skippy Ball by Objects begins here.

Include Rideable Vehicles by Graham Nelson. [a rideable vehicle because we want to say that the player is on it rather than in it.]

The skippy ball is a kind of rideable vehicle. It is portable and pushable between rooms. The carrying capacity is always 999. A skippy-dildo is a kind of dong. The size of a skippy-dildo is usually 0. It is scenery. It is part of every skippy ball. There is 1 skippy ball. The text-shortcut of skippy ball is "skpb". Understand "skippy" as the skippy ball. The skippy ball can be glue-stuck. The skippy ball is usually not glue-stuck. The skippy ball has a number called stickiness. The stickiness of the player is usually 0.

Does the player mean getting off the skippy ball when the player is on a skippy ball:
	It is very likely.

[Does the player mean getting on the skippy ball when there is a skippy ball:
	It is likely.]

[ammended from: $8.4. Furniture, Example Swigmore U. ]
The spatial dropping rule is listed instead of the standard dropping rule in the carry out dropping rulebook.
This is the spatial dropping rule:
	if the player is on a rideable vehicle (called S) and the carrying capacity of S is 999:
		move the noun to the holder of S;
	otherwise:
		move the noun to the holder of the player.

Check mounting the skippy ball:
	if the player is staggering, say "You[']re bound to fall over with the size of your belly. " instead;
	if the player is ankle bound, say "That won[']t work while wearing ankle cuffs. " instead.

Before mounting the skippy ball (called S):
	if the skippy ball is carried by the player, silently try dropping S.

After mounting the skippy ball (called S):
	if a skippy-dildo (called D) is part of S and the size of D > 0:
		say "As you mount the skippy ball, you feel the";
		pick the penetration of D;
	say "Now you[']re sitting on the skippy ball.";
	now the stance of the player is 2.

Check dismounting when the player is on a skippy ball (called S):
	if a pull of 1 leaves you stuck to S, say "You cannot get off the skippy ball, you are still glued to it!" instead;

After dismounting when the player is on a skippy ball (called S):
	say "Ok, you[']re no longer on it.".

To decide whether a pull of (X - a number) leaves you stuck to (S - a skippy ball):
	if the stickiness of S > 0:
		decrease the stickiness of S by X;
		if the stickiness of S > 0:
			say "You only managed to pull out some hairs on your [one of]ankles[or]calves[or]calves[or]knees[or]inner thighs[or]inner thighs[or]crotch[stopping]. ";
			decide yes;
		now the stickiness of S is 0;
		if X > 3:
			say "You yelp along with all the remaining tiny hairs on your legs as you are separated from the glued skippy ball. Guess you won[']t need another wax down there for a while.. ";
		otherwise:
			say "You managed to pull yourself free from the skippy ball! ";
	if a skippy-dildo (called D) is part of S:
		if D is worn by the player:
			let H be the vagina;
			if D is penetrating the asshole, now H is the asshole;
			now D is not penetrating H;
			say "As you get off the skippy ball, the dildo mounted on it leaves your [ShortDesc of H], still slick with your juices. ";
			humiliate 140;
	decide no.

[Before doing something other than greeting something (called O) when the player is on a Skippy Ball (called S):
	if O is not S:
		try getting off S;
		if the player is on S:
			say "You[']re currently on a skippy ball." instead.]

To get thrown off (S - a skippy ball):
	if the player is on S:
		unless a pull of 999 leaves you stuck to S:
			let X be the trip hazard of the player;
			let R be a random number between 5 and 25;
			if R < X:
				silently try kneeling;
				say "You fall flat on your face. ";
				if autostand is 1 and the player is prone, now delayed stand is 1;
			otherwise:
				increase the fat-burning of the player by 2;
				silently try standing;
				say "You somehow keep your footing. ";
			say "[bold type]You[']re still in the [location of the player].[roman type]".

To force off (S - a skippy ball):
	unless a pull of 999 leaves you stuck to S,	try standing.

To pick the penetration of (D - a skippy-dildo):
	let X be nothing;
	if the vagina is at least partially exposed:
		let X be the vagina;
		if the asshole is at least partially exposed:
			let R be the openness of X;
			increase R by the openness of the asshole;
			if a random number between 0 and R < the openness of X:
				now X is the asshole;
		humiliate 50;
	otherwise if the asshole is at least partially exposed:
		now X is the asshole;
		humiliate 80;
	say " dildo mounted on the skippy ball, ";
	if X is nothing:
		say "bending forward; unable to penetrate your underwear.[line break]";
	otherwise:
		now D is penetrating X;
		now D is worn by the player;
		say " which before you[']re fully aware of what is happening already slided in your [ShortDesc of X].[line break][line break]".

To inflate (D - a skippy-dildo) by (X - a number):
	sizeUp D by X;
	if D is not worn by the player:
		say "You feel something poking in between your legs. Looking down you see, rapidly increasing in size, is a";
		pick the penetration of D;
	otherwise:
		let F be a random fuckhole penetrated by D;
		say "You sense the dildo on the skippy ball growing once more, stretching your [ShortDesc of F].[line break]".

Instead of throwing the skippy ball at:
	say "You don[']t want to break anything in here.".

Instead of attacking the skippy ball:
	say "You push the ball, and the ball pushes you back.".

Instead of touching the skippy ball (called S):
	if the stickiness of S > 0:
		say "The skippy ball feels a bit [if the intelligence of the player < 2]funny[otherwise]sticky[end if].";
	otherwise:
		say "It feels like rubber, as expected.".

Instead of pushing, pulling or turning the skippy ball (called S):
	if the player is on S:
		if the stickiness of S > 0:
			increase the fat-burning of the player by 1;
			if a pull of 1 leaves you stuck to S, say "You weren't able to pull free. " instead;
			try getting off S;
		otherwise:
			try jumping instead;
	if S is not glue-stuck:
		say "The ball turns a bit.";
	otherwise:
		if the strength of the player > a random number between 1 and 5:
			now S is not glue-stuck;
			if a skippy-dildo (called D) is part of S:
				now D is glued;
			say "You managed to pull the skippy ball loose. ";
		otherwise:
			say "You weren't able to pull it free. ";

Instead of squeezing the skippy ball:
	say "You can only squeeze it a little.".

Instead of burning the skippy ball:
	say "Nope.".

Instead of cutting the skippy ball:
	say "Why would you?".

Instead of swinging the skippy ball:
	say "No, better not do that here.".

Instead of rubbing the skippy ball:
	say "It makes a squeaking sound.".

Instead of buying the skippy ball:
	say "It[']s not for sale.".

Instead of climbing the skippy ball (called S):
	try entering S;


Skippy Ball ends here.
