# My first go at creating seeds for a database

# ==================== Reaction seeds ==================== #

# Clear any existing reactions from the database
Reaction.destroy_all

# Create new reactions for Prozac
Reaction.create!(
  title: "One week in",
  reaction_detail: "Not sure if this is working yet or not. I guess I'll keep taking it for now since it's only been a week and see what happens.",
  dosage_amount: "25 mg",
  usage_instructions: "Take one daily",
  created_at: Time.strptime('2015-12-11 17:17', '%Y-%m-%d %H:%M'),
  medication_id: 1
)
Reaction.create!(
  title: "Feel so much better!",
  reaction_detail: "After two months of being on Prozac, I feel so much less anxious. I don't get all nervous about big presentations at work like I used to and if I make a mistake I'm able to handle it without having a panic attack.",
  dosage_amount: "25 mg",
  usage_instructions: "Take once daily in the morning",
  created_at: Time.strptime('2016-02-12 12:46', '%Y-%m-%d %H:%M'),
  medication_id: 1
)

# Create new reactions for Codeine
Reaction.create!(
  title: "Works for pain",
  reaction_detail: "Great to have this because I'm so sore and I can't take anything else. Wish I could get more but the doctor won't prescribe me anymore than five.",
  dosage_amount: "60 mg",
  usage_instructions: "Take once daily for 5 days with food",
  created_at: Time.strptime('2018-02-27 08:21', '%Y-%m-%d %H:%M'),
  medication_id: 2
)

# Create new reactions for Chantix
Reaction.create!(
  title: "This time it's for real",
  reaction_detail: "I just started on Chantix because I've tried to quit so many other times in so many other ways and none of them have worked. I've heard from other people that this is legit and they were able to quit cold turkey so what do I have to lose?",
  dosage_amount: "0.5 mg",
  usage_instructions: "Take once daily for 3 days, then twice daily for 12 weeks",
  created_at: Time.strptime('2019-01-01 13:33', '%Y-%m-%d %H:%M'),
  medication_id: 3
)
Reaction.create!(
  title: "Wow! Already a huge difference",
  reaction_detail: "It's only been three weeks and I can go almost the whole day without even thinking about a cigarette. Really the only time I do is because it's just routine when I'm bored at work to go out for a smoke break but if it's busy, it won't even cross my mind! I can't believe it's really working!",
  dosage_amount: "0.5 mg",
  usage_instructions: "Take once daily for 3 days, then twice daily for 12 weeks",
  created_at: Time.strptime('2019-01-23 13:31', '%Y-%m-%d %H:%M'),
  medication_id: 3
)

# Create new reactions for Wellbutrin
Reaction.create!(
  title: "Feel like I'm going crazy!!",
  reaction_detail: "I've been so up and down lately at the drop of a hat. The doctor said this is supposed to help. Right now all I feel is constipated and emotional... still.",
  dosage_amount: "150 mg",
  usage_instructions: "Take once daily before bed",
  created_at: Time.strptime('2016-05-24 18:58', '%Y-%m-%d %H:%M'),
  medication_id: 4
)
Reaction.create!(
  title: "Doing much better",
  reaction_detail: "I think I had to give my body time to adjust to the medication. The constipation went away and my mood started to stabilize which is really nice. Life is so much easier when you can tell if you're upset due to an actual reason rather than due to nothing at all.",
  dosage_amount: "150 mg",
  usage_instructions: "Take once daily before bed",
  created_at: Time.strptime('2016-07-14 14:13', '%Y-%m-%d %H:%M'),
  medication_id: 4
)

# Create new reactions for Lexapro
Reaction.create!(
  title: "Godsend miracle drug!!",
  reaction_detail: "Been on this for three weeks and I feel soooo much better already. I have night sweats now when I didn't used to and I definitely gained some weight but it's worth not feeling so depressed anymore!",
  dosage_amount: "50 mg",
  usage_instructions: "Take once daily before bed",
  created_at: Time.strptime('2016-05-24 19:06', '%Y-%m-%d %H:%M'),
  medication_id: 5
)

# Create new reactions for Adderall
Reaction.create!(
  title: "Should I still be using this?",
  reaction_detail: "It occurred to me that I've been taking Adderall ever since I was a little kid but I'm not really sure if I should be using it anymore. Shouldn't I go to the doctor and get tested again or something? It's kind of weird that I've just kept getting this prescription every month for so long...",
  dosage_amount: "75 mg",
  usage_instructions: "Take once daily",
  created_at: Time.strptime('2015-07-01 11:09', '%Y-%m-%d %H:%M'),
  medication_id: 6
)
Reaction.create!(
  title: "So good for college cramming",
  reaction_detail: "Yeah, I never went to the doctor and I'm glad I didn't. This stuff is great to take when you have to focus on studying--especially before finals.",
  dosage_amount: "75 mg",
  usage_instructions: "Take once daily",
  created_at: Time.strptime('2017-12-11 18:38', '%Y-%m-%d %H:%M'),
  medication_id: 6
)
Reaction.create!(
  title: "On the right track",
  reaction_detail: "I finally did go the doctor about the Adderall when I realized I was abusing it. We talked and after an assessment my dose was changed to a much lower amount. It seems to be working out well because I can still focus on my tasks and work throughout the day but I don't feel hyperfocused or manic like I did when I was in college.",
  dosage_amount: "25 mg",
  usage_instructions: "Take once daily in the morning",
  created_at: Time.strptime('2019-02-11 09:17', '%Y-%m-%d %H:%M'),
  medication_id: 6
)

# Create new reactions for Yaz
Reaction.create!(
  title: "Trying a new birth control method",
  reaction_detail: "I decided to try the pill since condoms aren't exactly the most fun, pleasant, nor effective method of birth control. It's cool that all you have to do is remember to take a pill every day, I'm just really scared I'll forget one day and get pregnant. I've been doing it for a month and so far it's working out.",
  dosage_amount: "33 mg",
  usage_instructions: "Take once daily at the same time each day",
  created_at: Time.strptime('2015-10-30 20:08', '%Y-%m-%d %H:%M'),
  medication_id: 7
)
Reaction.create!(
  title: "Never again",
  reaction_detail: "Okay, after years on this birth control pill, I realized that it was causing me intense nausea. I thought it was just my anxiety issues getting to me but once I got a handle on that, I realized it HAD to be the pill! I've been off of it for a few months and haven't had any stomach problems since.",
  dosage_amount: "33 mg",
  usage_instructions: "Take once daily at the same time each day",
  created_at: Time.strptime('2018-09-04 16:34', '%Y-%m-%d %H:%M'),
  medication_id: 7
)

# Create new reactions for Nexium
Reaction.create!(
  title: "It burns!",
  reaction_detail: "I've had such horrible heartburn lately and it came virtually out of nowhere! It's so bad that it keeps me awake at night and nothing that I've tried has helped. Hopefully this prescription strength Nexium helps.",
  dosage_amount: "20 mg",
  usage_instructions: "Take once daily one hour before a meal. Do not take for more than 14 days at a time.",
  created_at: Time.strptime('2017-04-20 12:32', '%Y-%m-%d %H:%M'),
  medication_id: 8
)
Reaction.create!(
  title: "Did the trick",
  reaction_detail: "Thank god that worked! I can finally sleep again! Now hopefully it will keep working... It's strange that you only take it for 14 days at a time.",
  dosage_amount: "20 mg",
  usage_instructions: "Take once daily one hour before a meal. Do not take for more than 14 days at a time.",
  created_at: Time.strptime('2017-05-02 13:41', '%Y-%m-%d %H:%M'),
  medication_id: 8
)

# Create new reactions for Levatol
Reaction.create!(
  title: "A new med",
  reaction_detail: "The doctor says I have high blood pressure so I have to watch what I eat, get more exercise, and take this new pill.",
  dosage_amount: "20 mg",
  usage_instructions: "Take once daily with food",
  created_at: Time.strptime('2017-04-30 15:01', '%Y-%m-%d %H:%M'),
  medication_id: 10
)

# Create new reactions for Warfarin
Reaction.create!(
  title: "Another new med",
  reaction_detail: "On my follow-up for my HBP monitoring, they said I'm also at risk for blood clots, so now I have ANOTHER medication to take. I feel too young for this! But then again, I guess I'm not really that young anymore. Getting old sucks.",
  dosage_amount: "5 mg",
  usage_instructions: "Take once daily",
  created_at: Time.strptime('2017-10-14 19:22', '%Y-%m-%d %H:%M'),
  medication_id: 11
)
Reaction.create!(
  title: "Blood thinners stink!",
  reaction_detail: "I don't like being on blood thinners. I had a papercut the other day and it looked like I slaughtered a pig! I'm cold all the time too!",
  dosage_amount: "5 mg",
  usage_instructions: "Take once daily",
  created_at: Time.strptime('2017-10-28 14:36', '%Y-%m-%d %H:%M'),
  medication_id: 11
)