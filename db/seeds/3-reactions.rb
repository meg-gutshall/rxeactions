# My first go at creating seeds for a database

# ==================== Reaction seeds ==================== #

# Clear any existing reactions from the database
Reaction.destroy_all

# Create new reactions for Prozac
Reaction.create!(
  title: "One week in",
  reaction_detail: "Not sure if this is working yet or not. I guess I'll keep taking it for now since it's only been a week and see what happens.",
  current: "true",
  medication_id: 1
)
Reaction.create!(
  title: "Feel so much better!",
  reaction_detail: "After two months of being on Prozac, I feel so much less anxious. I don't get all nervous about big presentations at work like I used to and if I make a mistake I'm able to handle it without having a panic attack.",
  current: "true",
  medication_id: 1
)

# Create new reactions for Codeine
Reaction.create!(
  title: "Works for pain",
  reaction_detail: "Great to have this because my throat is so sore and I can't take anything else. Wish I could get more but the doctor won't prescribe me anymore than five.",
  current: "false",
  medication_id: 2
)

# Create new reactions for Wellbutrin
Reaction.create!(
  title: "Feel like I'm going crazy!!",
  reaction_detail: "I've been so up and down lately at the drop of a hat. The doctor said this is supposed to help. Right now all I feel is constipated and emotional... still.",
  current: "true",
  medication_id: 3
)
Reaction.create!(
  title: "Doing much better",
  reaction_detail: "I think I had to give my body time to adjust to the medication. The constipation went away and my mood started to stabilize which is really nice. Life is so much easier when you can tell if you're upset due to an actual reason rather than due to nothing at all.",
  current: "true",
  medication_id: 3
)

# Create new reactions for Lexapro
Reaction.create!(
  title: "Godsend miracle drug!!",
  reaction_detail: "Been on this for three weeks and I feel soooo much better already. I have night sweats now when I didn't used to and I definitely gained some weight but it's worth not feeling so depressed anymore!",
  current: "true",
  medication_id: 4
)

# Create new reactions for Adderall
Reaction.create!(
  title: "Should I still be using this?",
  reaction_detail: "It occurred to me that I've been taking Adderall ever since I was a little kid but I'm not really sure if I should be using it anymore. Shouldn't I go to the doctor and get tested again or something? It's kind of weird that I've just kept getting this prescription every month for so long...",
  current: "true",
  medication_id: 5
)
Reaction.create!(
  title: "So good for college cramming",
  reaction_detail: "Yeah, I never went to the doctor and I'm glad I didn't. This stuff is great to take when you have to focus on studying--especially before finals.",
  current: "true",
  medication_id: 5
)
Reaction.create!(
  title: "On the right track",
  reaction_detail: "I finally did go the doctor about the Adderall when I realized I was abusing it. We talked and after an assessment my dose was changed to a much lower amount. It seems to be working out well because I can still focus on my tasks and work throughout the day but I don't feel hyperfocused or manic like I did when I was in college.",
  current: "true",
  medication_id: 5
)

# Create new reactions for Yaz
Reaction.create!(
  title: "Trying a new birth control method",
  reaction_detail: "I decided to try the pill since condoms aren't exactly the most fun, pleasant, nor effective method of birth control. It's cool that all you have to do is remember to take a pill every day, I'm just really scared I'll forget one day and get pregnant. I've been doing it for a month and so far it's working out.",
  current: "false",
  medication_id: 6
)
Reaction.create!(
  title: "Never again",
  reaction_detail: "Okay, after years on this birth control pill, I realized that it was causing me intense nausea. I thought it was just my anxiety issues getting to me but once I got a handle on that, I realized it HAD to be the pill! I've been off of it for a few months and haven't had any stomach problems since.",
  current: "false",
  medication_id: 6
)

# Create new reactions for Levatol
Reaction.create!(
  title: "A new med",
  reaction_detail: "The doctor says I have high blood pressure so I have to watch what I eat, get more exercise, and take this new pill.",
  current: "true",
  medication_id: 7
)

# Create new reactions for Warfarin
Reaction.create!(
  title: "Another new med",
  reaction_detail: "On my follow-up for my HBP monitoring, they said I'm also at risk for blood clots, so now I have ANOTHER medication to take. I feel too young for this!",
  current: "true",
  medication_id: 8
)
Reaction.create!(
  title: "Blood thinners stink!",
  reaction_detail: "I don't like being on blood thinners. I had a papercut the other day and it looked like I slaughtered a pig! I'm cold all the time too!",
  current: "true",
  medication_id: 8
)