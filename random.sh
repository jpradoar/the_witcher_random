#!/bin/bash

Northern_Status=1
Nilfgaardian_Status=2
Elderland_Status=3
age=$2
name=$3
calculate_age=$($age/2)

if [[ -z "$2" ]]; then
	age="$(shuf -i 28-65 -n 1)"
fi

if [[ -z "$3" ]]; then
        name="No Name"
fi



let resto=$calculate_ageo%2
if [ $resto -eq 0 ]; then
	dato_edad="2"
else
	dato_edad="1"
fi


if [[ $1 == "1" ]]; then
		familyfate=(
		 "Your family was scattered to the winds by the wars and you have no idea where most of them are."  
		 "Your family was imprisoned for crimes or on trumped-up charges. You were the only one to escape. You may want to free them...or maybe not."
		 "Your family house was cursed and now either crops wont grow or specters roam the halls. It became too dangerous for you to stay in this home."
		 "With so many wars your familys livelihood was destroyed. Your family turned to crime to survive. "
		 "Your family accumulated a huge debt through gambling or favors from others. You need money desperately."
		 "Your family has fallen into a feud with another family. You may not even remember why this feud started in the first place."
		 "Due to some action or inaction your family has become hated in your home town and now no one there wants to have anything to do with them."
		 "One day everything you had was ripped away by a bandit mob. Your family was massacred, leaving you entirely alone."
		 "Your family has a deep, dark secret that if discovered would ruin you all completely. You can decide what this secret is, or the Game Master can decide."
		 "Your family has come to despise each other. No one you grew up with will talk with each other any more and you’re lucky to get a passing hello from your siblings."
		)

		parentalfate=(
		"One or more of your parents were killed in the Northern Wars. Most likely your father, but it is also possible that your mother fought or was a casualty."
		"One or more of your parents left you in the wilderness to fend for yourself. Maybe they couldn’t afford to keep you; maybe you were an accident."
		"One or more of your parents were cursed by a mage or due to the intense hatred of someone they encountered. The curse took their life."
		"One or more of your parents sold you for coin, or perhaps traded you for some goods or service. Your parents needed the money more than you."
		"One or more of your parents joined a gang. You saw this gang often and were sometimes forced to work with them. "
		"One or more of your parents were killed by monsters. It is your decision as to what they may have fallen prey to."
		"One or more of your parents were falsely executed. They may have been a scapegoat for something or just in the wrong place."
		"One or more of your parents died of a plague. There was nothing that could be done but try to ease their passing."
		"One or more of your parents defected to Nilfgaard. They may have been given a deal for information or they may just have jumped the border."
		"One or more of your parents were kidnapped by nobles. Likely it was your mother, who attracted the attention of a local lord or his son."
		)

		familystatus=(
		"You grew up in a noble manor with servants to wait on you, but you were always expected to behave and impress. Starting Gear: Paper of Nobility (+2 Reputation)"
		"Adopted by a Mage You were given to a mage at a young age. You lived in comfort but barely saw your caretaker, who was always busy. Starting Gear: A Chronicle (+1 Education)"
		 "Knights You grew up in a manor where you learned to be a proper lady or lord. Your fate was set from birth. Starting Gear: Personal Heraldry (+1 Reputation)"
		 "Merchant Family You grew up among merchants and you were always surrounded by yelling, haggling, and money. Starting Gear: 2 Acquaintances"
		 "Artisan Family You grew up in an artisan s workshop. Your days were filled with the incessant sounds of creation, and often long. Starting Gear: 3 Common Diagrams/Formulae"
		 "Entertainer Family You grew up with a band of performers. You may have traveled or you may have performed at a theater. Starting Gear: 1 Instrument & 1 Friend"
		 "Peasant Family You grew up on a farm in the countryside. You didn’t have much to your name and your life was simple, but dangerous. Starting Gear: A Lucky Token (+1 Luck)"
		)

		mif=(
		 "A Church You grew up with influence from your local religion and spent hours a day at church. Gear: A Holy Text"
		 "An Artisan Your greatest influence was an artisan who taught you to appreciate art and skill. Gear: A Token You Made"
		 "A Count Your greatest influence was a count or countess who taught you how to compose yourself. Gear: A Silver Ring"
		 "A Mage Your greatest influence was a mage who taught you not to fear magic and to always question. Gear: A Small Pendant" 
		 "A Witch Your greatest influence was a village witch who taught you the importance of knowledge. Gear: A Black Magic Doll"
		 "A Cursed Person Your greatest influence was a cursed person who taught you to never judge others too harshly. Gear: A Carved Totem"
		 "An Entertainer Your greatest influence was an entertainer who taught you plenty about showmanship. Gear: A Playbill or Ticket"
		 "A Merchant Your greatest influence was a merchant who taught you how to be shrewd and clever. Gear: A Coin You Earned"
		 "A Criminal Your greatest influence was a criminal who taught you how to take care of yourself. Gear: A Mask"
		 "A Man At Arms Your greatest influence was a soldier who taught you how to defend yourself. Gear: A Battle Trophy"
		)

		Siblings1=( "1" "2" "3" "4" "5" "6" "7" "8" )

fi

####################### Nilfgaardian_Status #############################################################

if [[ $1 == "2" ]]; then
		familyfate=(
		"Your family was indentured for crimes against the Empire or on trumped-up charges. Only you escaped."
		"Your family was exiled to the Korath Desert and you likely spent most of your early life struggling to survive in thedeadly wasteland."
		"Your family was killed by a  rogue mage who either had a vendetta against your family, or just wanted blood. Either way, you are alone."
		"Your family disappeared and you have no idea where they went. One day they just up and left."
		"Your family was executed for treason against the Empire. You were the only one to escape this fate."
		"Your family was stripped of its title for some reason. You were evicted from your home and left scrambling to survive among the un-washed masses."
		"Your family name was tarnished by a magic relative who flaunted their magical gift disgracefully like a Northern mage."
		"You disgraced your family in the eyes of the Empire. Something you did or failed to do has ruined your personal name and harmed your family"
		"Your family has a deep, dark secret that if discovered would destroy them and their name forever. You must protect this secret with your life."
		"Your family was assassinated. They may have been in the way of someone’s plan or they may have been used to get at someone more powerful. Either way, your family is gone now"
		)
		parentalfate=(
		"Your father died in one of the Northern Wars. He may have already been in the military or he may have been conscripted into service during that war."
		"One or more of your parents were poisoned. This may have been the work of a professional rival, or it may have been to get your parents out of the way"
		"The secret police took your parent or parents for questioning. The next week their bodies were found hung in the streets of the city."
		"One or more of your parents were killed by a rogue mage. Most likely they tried to turn the mage in question in to the Empire and paid the price."
		"One or more of your parents were imprisoned for unlawful magic. Maybe they actually commited the crime or maybe it was a setup." 
		"One or more of your parents were exiled to the Korath Desert. Likely they committed a major crime but killing them would cause trouble."
		"One or more of your parents were cursed by a mage. The mage likely had a vendetta against them."
		"Your parents simply left you one day. You may not even know why they did it. One day your parents just disappeared."
		"One or more of your parents were enslaved. They either commited a crime against the Empire or were set up by a rival."
		"One or more of your parents were sent to the North as double agents. You likely don’t even know where they are now, but they’re serving the Emperor."
		)
		familystatus=(
		"Aristocracy You grew up in a manor, training to be well-versed in the world of the court. The luxury was just your incentive. Starting Gear: Paper of Nobility (+2 Reputation)"
		"High Clergy You were raised among the clergy of the Great Sun. You grew up pious and always aware that the Church would guide you. Starting Gear: A Holy Symbol (+1 Courage)"
		"Knights You grew up knowing that your duty was to the Emperor, and that all of your luxury was a reward for your eventual service. Starting Gear: Personal Heraldry (+1 Reputation)"
		"Artisan Family You grew up in an artisan’s shop, learning to craft products for sale around the world. You learned the value of quality. Starting Gear: 3 Common Diagrams/Formulae"
		"Merchant Family You grew up selling products all around the Empire. You saw all kinds exotic of goods from all around the world. Starting Gear: 2 Acquaintances"
		"Born into Servitude You were born into servitude and lived in simple quarters. You owned very little and toiled often. Starting Gear: A trained bird or serpent"
		"Peasant Family You grew up on one of the thousands of farms across the Empire. You had little to your name but life was simple. Starting Gear: A Lucky Token (+1 Luck)"
		)
		mif=(
		"The Cult of the Great Sun Your greatest influence was the Church. You spent years learning chants and rituals. Gear: A Ceremonial Mask" 
		"An Outcast Your greatest influence was a social outcast who taught you to always question society. Gear: A Bright Colorful Badge"
		"A Count Your greatest influence was a count who taught you how to lead and instill order. Gear: A Silver Necklace"
		"A Mage Your greatest influence was a mage who taught you the importance of order and caution. Gear: An Emblem"
		"A Solicitor Your greatest influence was an imperial detective. You spent a lot of time solving mysteries. Gear: A Magnifying Lens"
		"A Mage Hunter Your greatest influence was a mage hunter who taught you to be cautious of magic and mages. Gear: A Ring with Dimeritium"
		"A Man At Arms Your greatest influence was a soldier who shared stories of danger and excitement. Gear: A Trophy of Battle"
		"An Artisan Your greatest influence was an artisan who taught you to appreciate skill and precision. Gear: A Trinket You Made"
		"A Sentient Monster Your greatest influence was a sentient monster that taught you that not all monsters are evil. Gear: A Strange Totem"
		"An Entertainer Your greatest influence was an entertainer who taught you to express yourself. Gear: A Token from a Fan"
		)
		Siblings1=( "1" "2" "3" "4" "5")

fi


################################ Elderland_Status #########################################################################


if [[ $1 == "3" ]]; then
	echo $age
	familyfate=(
	"Your family were marked as human sympathizers and are not particularly loved in their homeland." 
	"Your family was ostracized for dissenting opinions and now people won’t socialize with you or your family at all." 
	"Your family died in the Northern Wars. They may have actually fought in the war, o were casualties of war who just happened to get in the way"
	"Your family has been caught in a feud for centuries. You may not remember why this feud started, but it is dire."
	"Your family was stripped of its title for some reason. You were evicted from your home and left scrambling to survive."
	"Your family turned to raiding human settlements early in your life to get food and perhaps strike back at the humans."
	"Your family house is haunted. Most likely this is because your home was the site of many, many deaths during the war against humans."
	"Your family has been split by a human in-law who was brought into your family by a sibling or relative. Some of your family like them and some hate them."
	"Your family was killed by humans who thought they were Scoia’tael. They may have been slaughtered or hung with no court proceedings or trials."
	"Your family is descended from an infamous traitor. It taints your family’s interactions with others of the elder races and has made living in the elderland difficult."
	)
	parentalfate=(
	"One or more of your parents  were accused of being Scoia’tael. The people around you give your parents sidelong glances"
	"One or more of your parents turned on your own people and sold out the elder races to the humans. Your parents are unwelcome in your homeland."
	"One or more of your parents killed themselves out of despair. With no hope of regaining the glory of the past, they gave up and ended it."
	"While traveling, one or more of your parents fell prey to human racism. They died in a pogrom and their bodies were displayed on pikes."
	"One or more of your parents have become obssessed with regaining the former glory of their race. They sacrifice everything for this cause."
	"One or more of your parents were exiled from your homeland. There are many possible reasons, from crime to dissenting opinons."
	"One or more of your parents were cursed. You can decide what this curse is or, the Game Master can decide."
	"Your parents gave you to another family so that you could survive, because they couldnt care for you"
	"One or more of your parents joined the Scoia’tael in an attempt to get revenge on the humans who they see as ruining their lives."
	"One or more of your parents died in an ‘accident’. Most likely they made a powerful enemy that finally found a way to get rid of them."
	)
	familystatus=(
	"Aristocracy You grew up in a palace and were constantly reminded of the glory of the past. You were expected to live up to the legacy. Starting Gear: Paper of Nobility (+2 Reputation)"
	"Noble Warrior You grew up as a noble warrior’s child, expected to rise to your family’s reputation and to never dishonor your heritage. Starting Gear: Personal Heraldry (+1 Reputation"
	"Merchants You grew up among traveling merchants. Life was difficult sometimes but non-human crafts are always valuable. Starting Gear: 2 Acquaintances"	
	"Scribe Family You grew up as the child of scribes, recording and protecting as much elderfolk history as possible. Starting Gear: A Chronicle (+1 Education)"
	"Entertainers You grew up singing songs and performing plays. You worked backstage, helped write songs, and fixed instruments. Starting Gear: 1 Instrument & 1 Friend"
	"Artisan Family You grew up in a family of artisans, visiting ancient palaces for inspiration and spending hours every day on projects. Starting Gear:
	3 Common Diagrams/Formulae"
	"Lowborn Family You grew up in a lowborn family, tending to the manors of others or working small jobs around your home city. Starting Gear: A Lucky Token (+1 Luck)"
	)
	mif=(
	"A Human Your greatest influence was a human who taught you that sometimes racism is unfounded. Gear: A Straw Doll"
	"An Artisan Your greatest influence was an artisan who taught you to appreciate great elderfolk art. Gear: A Small Token You Made"
	"A Noble Warrior Your greatest influence was a War Dancer or a Mahakaman Defender who taught you honor. Gear: A Token of Battle"
	"A Highborn Your greatest influence was a highborn who taught you pride and how to comport yourself. Gear: A Signet Ring" 
	"An Entertainer Your greatest influence was an entertainer who taught you the importance of happiness and beauty. Gear: A Playbill or Ticket"
	"A Raider Your greatest influence was a raider who taught you that you have the right to take what you need. Gear: A Satchel"
	"A Sage Your greatest influence was a sage who taught you about the importance of elderfolk history. Gear: A Book of Tales"
	"A Criminal your greatest influence was a criminal who taught you to follow your own rules. Gear: A Mask"
	"A Hunter Your greatest influence was a hunter who taught you how to survive in the wilderness. Gear: A Trophy of a Hunt "
	"A Lowland Farmer Your greatest influence was a lowland farmer who taught you how to live happily. Gear: A Farmer’s Spade"
	)
	Siblings1="Elves can have up to 2 siblings. Roll 1d10. 
	On a 1-2 you have one sibling. 
	On a 9-10 you have two siblings. 
	On a 3-8 you are an only child. 
	Dwarves use the Nilfgaardian chart for siblings."
fi



if [ "$1" == "1" ] || [ "$1" = "2" ] || [ "$1" = "3" ] ; then
	Fortune=(
	"Jackpot Some major event or stroke of luck brought you 1d10x100 crowns. "
	"Find a Teacher You trained with a teacher. Gain +1 in any INT skill or start a new INT skill at +2."
	"A Noble Owes You Something you did gained you 1 favor from a nobleman/noblewoman."
	"Find a Combat Teacher You trained with a soldier. Gain +1 in any combat skill or start a new combat skill at +2."
	"A Witcher Owes You You encountered a witcher at some point and managed to garner a favor from them. "
	"Fell in with Bandits You fell in with a bandit gang. Once per month you can ask these bandits for 1 favor."
	"Tamed a Wild Animal You tamed a wild animal you encountered in the wilderness. Roll 1d10. 1-7: Wild Dog, Wolf."
	"A Mage Owes You You managed to garner 1 favor from a powerful mage you helped."
	"Blessed by a Priest You were given a holy symbol that you can show to people of that faith to gain a +2 to Charisma with them."
	"Knighted You were knighted for valor in a random kingdom. In this kingdom you gain +2 reputation and are recognized as a knight."
	)

	Siblings2=(
	"Gender: Male - Age: Younger - Feelings About You: Wants You Dead - Personality: Shy"
	"Gender: Female - Age: Younger - Feelings About You: Can’t Stand You - Personality: Aggressive"
	"Gender: Male - Age: Younger - Feelings About You:  Jealous of You - Personality: Kind"
	"Gender: Female - Age: Younger - Feelings About You:  No Feelings About You - Personality: Strange"
	"Gender: Male - Age: Younger - Feelings About You:  No Feelings About You - Personality: Thoughtful"
	"Gender: Female - Age: Older - Feelings About You:  No Feelings About You - Personality: Talkative"
	"Gender: Male - Age: Older - Feelings About You:  No Feelings About You - Personality: Romantic"
	"Gender: Female - Age: Older - Feelings About You:  Likes You - Personality: Stern"
	"Gender: Male - Age: Older - Feelings About You:  Looks Up To You - Personality: Depressive"
	)

	Misfortune=(
	"Debt You fell deeply into debt to the tune of 1d10x100 crowns."
	"Imprisonment Something you did (or a false acusation) had you imprisoned for 1d10 months. "
	"Addiction You contracted an addiction. You can choose. See the sidebar for addiction rules. "
	"Lover, Friend or Relative Killed Roll 1d10.\n
		1-5: They died in an accident\n
		6-8: They were murdered by monsters\n
		9-10: They were murdered by bandits.\n"
	"False Accusation Roll 1d10.\n 
		1-3: The accusation is theft\n
		4-5: Its cowardice or betrayal\n
		6-8: Its murder\n
		9: Its rape\n
		10: Its illegal witchcraft.\n "
	"Hunted by the Law Roll 1d10. \n
		1-3: Its just a few of guards\n
		4-6: Its an entire small town\n
		7-8: Its a major city\n
		9-10: A whole kingdom is after you.\n"
	"Betrayal Roll 1d10\n
		1-3: You are being blackmailed\n
		4-7: A secret was exposed\n
		8-10: You were betrayed by someone very close to you. \n"
	"Accident Roll 1d10. \n
		1-4: You were disfigured. Change your social standing to feared\n
		5-6: You were healing for 1d10 months\n
		7-8: You lost a 1d10 months of memoryfrom that year\n
		9-10: You suffer from horrible  nightmares (7 in 10 chance each time you sleep). \n"
	"Mental or Physical Incapacitation Roll 1d10. \n
		1-3: You were poisoned; permanently lose 5 HP\n
		4-7: You suffer from anxiety attacks and must make Stun saves (every 5 rounds) in times of stress\n
		8-10: You have a  major psychosis. You hear voices and are violent, irrational, and depressive. The GM controls these voices.\n"
	"Cursed You have been cursed. See the Curse section on pg.230 to determine the details\n"
	)

	Allies=(
	"Gender: Male - Position: A Bounty Hunter - How You Met: Saved Them from Something"
	"Gender: Female - Position: A Mage - How You Met: Met in a Tavern"
	"Gender: Male - Position: A Mentor or Teacher - How You Met: They Saved You from Something"
	"Gender: Female - Position: A Childhood Friend - How You Met: They Hired You for Something"
	"Gender: Male - Position: A Craftsman - How You Met: You Were Trapped Together"
	"Gender: Female - Position: An Old Enemy - How You Met: You Were Forced to Work Together"
	"Gender: Male - Position: A Duke/Duchess - How You Met: You Hired Them for Something"
	"Gender: Female - Position: A Priest/Priestess - How You Met: You Met While Drunk and Hit It Off"
	"Gender: Male - Position: A Soldier - How You Met: You Met While Traveling"
	"Gender: Female - Position: A Bard - How You Met: You Fought Together"
	)

	Enemies=(
	"Gender: Male - Position: Ex-Friend - The Cause: Assaulted the Offended Party"
	"Gender: Female - Position: Ex-Lover - The Cause: Caused the Loss of a Loved One"
	"Gender: Male - Position: Relative - The Cause: Caused Major Humiliation"
	"Gender: Female - Position: Childhood Enemy - The Cause: Caused a Curse"
	"Gender: Male - Position: A Cultist - The Cause: Accused of Illegal Witchcraft"
	"Gender: Female - Position: A Bard - The Cause: Turned Down Romantically"
	"Gender: Male - Position: A Soldier - The Cause: Caused a Terrible Wound"
	"Gender: Female - Position: A Bandit - The Cause: Blackmail"
	"Gender: Male - Position: A Duke/Duchess - The Cause: Foiled Plans"
	"Gender: Female - Position: A Mage - The Cause: Caused a Monster Attack"
	)

	la=(
	"A Happy Love Affair"
	"A Romantic Tragedy"
	"A Problematic Love"
	"Whores and Debauchery"
	)


	Tragedy=(
	"Your Lover was captured by bandits some time ago and is still their captive."
	"Your Lover mysteriously vanished one day and you don’t know where they went."
	"Your Lover was imprisoned or exiled for crimes they may not have commited."
	"Your Lover was taken from you by a powerful curse."
	"Something got between you and your Lover and you were forced to kill them."
	"Your Lover comitted suicide. You may not know why they did it."
	"Your Lover was kidnapped by a noble and made into a concubine."
	"A rival cut you out of the action and stole your Lover’s affection."
	"Your Lover was killed by monsters. It may have been an accident or planned."
	"Your Lover is a mage, a witcher, or a sentient monster, dooming the romance."
	)

	Problem=(
	"Your Lover’s family or friends hate you and do not condone your romance."
	"Your Lover works as a whore for a living and refuses to give up their job."
	"Your Lover is under a minor curse such as paranoia or horrible nightmares."
	"Your Lover slept around and refused to stop when you found out."
	"Your Lover is insanely jealous and can’t stand you being around any possible rival."
	"You fight constantly and nothing can stop it for long. You always descend into screaming."
	"You’re professional rivals of some sort. You steal customers from each other often."
	"One of you is human and the other is non-human, making your life difficult."
	"Your Lover is already married. They may or may not be willing to leave their spouse."
	"Your friends or family hate your Lover and do not condone your romance."
	)

	Style=(
	"Clothing: A Uniform - Personality: Secretive - Long & Loose: Long & Loose - Affectations: Trophies"
	"Clothing: Traveling Clothing - Personality: Rebellious - Long & Loose: Cropped Short - Affectations:  Rings & Jewlery"
	"Clothing: Fancy Clothing - Personality: Violent - Long & Loose: Self-Cut Short - Affectations:  Trinkets"
	"Clothing: Ragged Clothing - Personality: Idealistic - Long & Loose: Braided - Affectations:  Tattoos"
	"Clothing: Utilitarian Clothing - Personality: Contemplative - Long & Loose: Long & Wild - Affectations:  War Paint"
	"Clothing: Traditional Clothing - Personality: Stern - Long & Loose: Bald - Affectations:  Shadowy Cloak"
	"Clothing: Revealing Clothing - Personality: Deceptive - Long & Loose: Uniformly Short - Affectations:  Bright Bandanas"
	"Clothing: Heavy Clothing - Personality: Friendly - Long & Loose: Ragged & Messy - Affectations:  Eye Patch"
	"Clothing: Strange Clothing - Personality: Arrogant - Long & Loose: Complicated Hairstyle - Affectations:  Furs"
	"Clothing: Flamboyant Clothing - Personality: Nervous - Long & Loose: Shaven Sides - Affectations:  Insignias & Plaques"
	)


	Values=(
	"Valued Person: A Parent - Value: Money - Feelings on People: People Are Tools to Be Used"
	"Valued Person: A Sibling - Value:  Honor - Feelings on People: Our Kind Are Fine but Plough the Rest"
	"Valued Person: A Lover - Value:  Your Word - Feelings on People: People Can Never Be Trusted"
	"Valued Person: A Friend - Value:  Hedonistic Pursuits - Feelings on People: People Have to Prove Themselves"
	"Valued Person: Yourself - Value:  Knowledge - Feelings on People: Neutral"
	"Valued Person: A Pet - Value:  Vengeance - Feelings on People: Neutral"
	"Valued Person: A Mentor - Value:  Power - Feelings on People: People Are Great"
	"Valued Person: A Public Figure - Value:  Love - Feelings on People: Everyone Deserves to Die"
	"Valued Person: A Personal Hero - Value:  Survival - Feelings on People: People Are Hedonistic Swine"
	"Valued Person: No One - Value:  Friendship - Feelings on People: All Life Is Valuble"
	)

	yle2=("Fortune or Misfortune" "Allies and Enemies" "Romance")
	fym=("Fortune" "Misfortune")
	aae=("Allies" "Enemies")

	random_familyfate=${familyfate[$RANDOM % ${#familyfate[@]} ]}
	random_parentalfate=${parentalfate[$RANDOM % ${#parentalfate[@]} ]}
	random_familystatus=${familystatus[$RANDOM % ${#familystatus[@]} ]}
	random_mif=${mif[$RANDOM % ${#mif[@]} ]}
	random_Siblings1=${Siblings1[$RANDOM % ${#Siblings1[@]} ]}
	random_Siblings2=${Siblings2[$RANDOM % ${#Siblings2[@]} ]}
	random_yle2=${yle2[$RANDOM % ${#yle2[@]} ]}
	result=$random_yle2
	random_Fortune=${Fortune[$RANDOM % ${#Fortune[@]} ]}
	random_fym=${fym[$RANDOM % ${#fym[@]} ]}
	random_Misfortune=${Misfortune[$RANDOM % ${#Misfortune[@]} ]}
	random_Allies=${Allies[$RANDOM % ${#Allies[@]} ]}
	random_Enemies=${Enemies[$RANDOM % ${#Enemies[@]} ]}
	random_aae=${aae[$RANDOM % ${#aae[@]} ]}
	random_la=${la[$RANDOM % ${#la[@]} ]}
	random_Tragedy=${Tragedy[$RANDOM % ${#Tragedy[@]} ]}
	random_Problem=${Problem[$RANDOM % ${#Problem[@]} ]}
	random_Style=${Style[$RANDOM % ${#Style[@]} ]}
	random_Values=${Values[$RANDOM % ${#Values[@]} ]}

	echo "<div align='center'><br><h1> Lifepath </h1><br></div>"
	echo "<b>Name:  </b>"$name " <br> "
	echo "<b>Age:  </b>"$age " <br> "
	echo "<b>Family Fate: </b>"$random_familyfate " <br> "
	echo "<b>Parental Fate: </b>" $random_parentalfate " <br> "
	echo "<b>Family Status:</b>" $random_familystatus " <br> "
	echo "<b>Most Influential Friend:</b>" $random_mif " <br> "
	echo "<b>Siblings number: </b>" $random_Siblings1 " <br> "
	for i in `seq $random_Siblings1`; do
		for x in $i; do
			echo "     <b>Siblings $x:</b>" ${Siblings2[$RANDOM % ${#Siblings2[@]} ]}" <br> "
		done
	done
	echo ""
	echo "<br><b>Your Life Events: </b>"$result " <br> "

	echo "<br><b>Your Personal Style </b> <br>"
	echo "<b>    Style: </b>" $random_Style " <br> "
	echo "<b>    Values: </b>" $random_Values " <br> "


	if [[ $result == "Fortune or Misfortune" ]]; then
		if [[ $random_fym == "Fortune" ]]; then
			echo "<b>Fortune: </b>"$random_Fortune " <br> "
		else 
			echo -e "<b>Misfortune: </b>"$random_Misfortune " <br> "
		fi
	fi

	if [[ $result == "Allies and Enemies" ]]; then
		echo $result
	        if [[ $random_aae == "Allies" ]]; then
	                echo "<b>Allies: </b>"$random_Allies " <br> "
	        else
	                echo "<b>Enemies: </b>"$random_Enemies " <br> "
	        fi
	fi

	if [[ $result == "Romance" ]]; then
	        echo "<b>Romance: </b>" $random_la " <br> "
		if [[ $random_la == "A Romantic Tragedy" ]]; then
	                echo "<b>Tragedy: </b>"$random_Tragedy " <br> "
	        fi

	        if [[ $random_la == "A Problematic Love" ]]; then
	                echo "<b>Problem: </b>"$random_Problem " <br> "
	        fi
	fi

fi


if [[ -z "$1" ]]; then
	echo "
		How to use:  
			Northern Status     => ./randomizador.sh 1
			Nilfgaardian Status => ./randomizador.sh 2
			Elderland Status    => ./randomizador.sh 3
		"
fi
