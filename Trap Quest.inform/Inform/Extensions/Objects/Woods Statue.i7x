Woods Statue by Objects begins here.


WoodsScenery02 is a thing.  WoodsScenery02 is in Woods10.  WoodsScenery02 is not portable.    The description of WoodsScenery02 is "[WoodsScenery02Desc]".  Understand "statue","man","penis", "statue's", "head", "hand", "foot" as WoodsScenery02.  WoodsScenery02 has a number called doses.  The doses of WoodsScenery02 is usually 1.  Figure of WoodsScenery02 is the file "statue2.png".  Figure of WoodsScenery02b is the file "statue7.png".
The printed name of WoodsScenery02 is "[TQlink of item described]statue[TQxlink of item described][shortcut-desc][verb-desc of item described]".
WoodsScenery02 has a number called charge.
The text-shortcut of WoodsScenery02 is "sta".

To say WoodsScenery02Desc:
	if images visible is 1:
		if diaper quest is 1, display figure of WoodsScenery02b;
		otherwise display figure of WoodsScenery02;
	if diaper quest is 1, say "This statue of a squatting girl is actually a fountain.  The water trickles from her pussy, making it look like she's peeing.";
	otherwise say "A statue of an upright naked man with arms spread wide, having sex with a naked woman, who is supporting herself by holding onto a scarf around his shoulders, and her [vagina] impaled on his [manly-penis].  [if the bimbo of the player > 13][second custom style]That looks fun[roman type].  [end if]";
	say "You could try to [bold type]touch the statue's hand[roman type], [bold type]touch the statue's foot[roman type], or [bold type]touch the statue's head[roman type].".

A time based rule (this is the woods statue charge decay rule):
	if the charge of WoodsScenery02 > 0, decrease the charge of WoodsScenery02 by seconds.

Check touching WoodsScenery02:
	if the player is immobile, say "Aren't you a bit busy?" instead;
	if the player is on a skippy ball, say "You need to get off the skippy ball for that." instead;
	if the charge of the noun > 0:
		now seconds is 2;
		say "Nothing happens.  Maybe the magic needs to recharge." instead;
	if the player's command includes "hand":
		if a random number between 1 and 4 > 1:
			say "As your hand touches the statue's, magic energy ripples through your fingers. You feel stronger!";
			StrengthUp 1;
		otherwise:
			say "As your hand touches the statue's, a jolt of electricity shocks your fingers!  You recoil in pain.  ";
			DelicateUp 1;
		now the charge of the noun is 300;
		now seconds is 2 instead;
	otherwise if the player's command includes "head":
		if a random number between 1 and 4 > 1:
			say "As your hand touches the statue's head, magic energy ripples through your fingers. You feel smarter!";
			IntUp 1;
		otherwise if diaper quest is 1:
			say "As your hand touches the statue's head, your vision suddenly blurs!  A moment later, you find yourself looking out from the statue's eyes.  You are now perched in an unchanging squatting position and can both feel and hear the warm water as it flows from your [genitals].  You relax as you grow accustomed to your new position, enjoying the feeling of the unending urination running through you and watering the ground below.  You feel so peaceful, so serene.";
			if the bladder of the player <= 0, now the bladder of the player is 5;
			say "You blink, and suddenly you are back in your own body!  But you're now in an identical squatting position, and to your [if the diaper addiction of the player < 5]horror[otherwise if the diaper addiction of the player < 12 or the number of worn diapers is 0]surprise[otherwise]delight[end if] you realise that you are still peeing!";
			compute urination;
		otherwise:
			say "As your hand touches the statue's head, your vision suddenly blurs!  A moment later, you find yourself looking out from the statue's eyes, seeing the tall faceless white statue-man in front of you.  You can feel his fleshy stomach against yours, and you can feel him.... you can feel him [i]inside[/i] you!  You move to let go of his neck in surprise, only to find you actually can't.  And then, he comes to life!  He begins thrusting wildly, the [italic type]slap slap slap[roman type] of his body against yours making wet noises that echo through the trees.  [i]Oh, god, what if someone hears us, and comes to investigate?[/i]  Your [vagina] is aflame with sensation as he takes you hard in your acrobatic stance.  [if the player is male][variable custom style]Wait, I have a vagina?!  [roman type][end if]You don't have time to think as the silent statue plows deeper and deeper into you, bringing you towards a screaming conclusion...";
			vaginally orgasm shamefully;
			say "You blink, and suddenly you are back in your own body, as if nothing had happened.  Except that now you feel much more sweaty and fatigued!";
		now the charge of the noun is 300;
		now seconds is 2 instead;
	otherwise if the player's command includes "foot":
		if a random number between 1 and 4 > 1:
			say "[if the player is upright]You get down on the ground to touch the statue's foot.  [bold type]You are now on your knees.  [roman type][end if]As your hand touches the statue's foot, magic energy ripples through your fingers. You feel faster!";
			now the stance of the player is 1;
			DexUp 1;
		otherwise:
			let M be a random off-stage woods dwelling mannequin;
			if M is nothing, now M is a random woods dwelling mannequin; [Very unlikely but better safe than sorry]
			set up M;
			now M is in the location of the player;
			now M is interested;
			anger M;
			say "[if the player is upright]You get down on the ground to touch the statue's foot.  [bold type]You are now on your knees.  [roman type][end if]As your hand touches the statue's foot, it gets stuck!  Some magic force keeps your hand there for a few seconds, during which time a [M] has noticed you and walked up behind you...!";
			now the stance of the player is 1;
		now the charge of the noun is 300;
		now seconds is 2 instead;
	otherwise:
		say "You should specify if you're touching the statue's [bold type]hand[roman type], [bold type]foot[roman type], or [bold type]head[roman type]." instead.


Woods Statue ends here.
