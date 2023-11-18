!#/bin/bash

#displays a heart when the script is run
echo -e "    \u2764\u2764\u2764\u2764\u2764
  \u2764\u2764\u2764\u2764\u2764\u2764\u2764\u2764
 \u2764\u2764\u2764\u2764\u2764\u2764\u2764\u2764\u2764
 \u2764\u2764\u2764\u2764\u2764\u2764\u2764\u2764\u2764
  \u2764\u2764\u2764\u2764\u2764\u2764\u2764\u2764
    \u2764\u2764\u2764\u2764\u2764\u2764
      \u2764\u2764\u2764\u2764
        \u2764\u2764"

#welcomes users
function welcome_user() {
  welcome_message=$'Welcome to LOvers-que!\nYour personal cupid is here to make your heart\x1B[31m ❤❤\x1B[0m race.\nFeel the love!\x1B[31m❤\x1B[0m'
  echo "$welcome_message"
}
welcome_user
echo

#generate love quotes from an array every time the script is run
function generate_love_quotes() {
  love_quotes=(
  "Love is when you give someone else the power to destroy you and trust them not to."
  "There is only one happiness in this life, to love and be loved."
  "Love is a series of trials, but the end justifies the means."
  "True love will stand any test, but don't test it yourself."
  "The fostress of love stands strong when built with bricks of honesty, but crumbles from the cracks of deception."
  "To get the full value of love, you must have someone to divide it with."
  )

  total_quotes=${#love_quotes[@]}

  quote_index=$((RANDOM % total_quotes))

  echo "${love_quotes[quote_index]}"
}
generate_love_quotes

#store quote for later(personalized love message for user)
function store_quote() {
  generate_love_quotes > lovemessage.txt
  # wc -w love_message.txt
}
store_quote

#create a directory to store random profiles
mkdir profiles

#An array that stores the names of people associated with their genders
names=("James:male" "Emma:female" "Liam:male" "Olivia:female" "Noah:male" "Ava:female" "William:male" "Sophia:female" "Oliver:male" "Isabella:female"
       "Benjamin:male" "Mia:female" "Elijah:male" "Amelia:female" "Lucas:male" "Harper:female" "Mason:male" "Evelyn:female" "Logan:male" "Abigail:female"
       "Alexander:male" "Emily:female" "Ethan:male" "Elizabeth:female" "Henry:male" "Ella:female" "Sebastian:male" "Avery:female" "Jackson:male" "Sofia:female"
       "Aiden:male" "Camila:female" "Mateo:male" "Scarlett:female" "David:male" "Madison:female" "Joseph:male" "Luna:female" "Carter:male" "Grace:female"
       "Owen:male" "Chloe:female" "Wyatt:male" "Penelope:female" "John:male" "Lily:female" "Josh:male" "Aria:female" "Luke:male" "Zoe:female" "Alice:female" "Bob:male" 
       "Charlie:female" "Vallyk:male" "Eva:female" "Frank:male" "Grace;female" "Henry:male" "Ivy:female" "Jack:male" "Katie;female" "Liam:male" "Princess:female" "Noah:male" 
       "Tracy:female" "Penny:female" "Quinn:female" "Ryan:male" "Sofia:female" "Tom:male" "Uma:female" "Victor:male" "Wendy:female" "Xander:male" "Yara:female" "Zane:male" 
       "Abby:male" "Damon:male" "Cara:female" "Dylan:male" "Emily:female" "Finn:male" "Gina:female" "Hank:male" "Isla:female" "Jake:male" "Lila:female" "Max:male" "Nora:female" 
       "Oscar:male" "Piper:female" "Quincy:male" "Rose;female" "Sam:male" "Tara:female" "Ulysses:male" "Vera:female" "Will:male" "Xena:female" "Yoshi:male" "Zara:female")

#An array that stores a the interests of potential matches
interests=("Reading" "Traveling" "Cooking" "Sports" "Music" "Photography" "Gardening" "Painting" "Dancing" "Hiking"
          "Writing" "Movies" "Yoga" "Cycling" "Singing" "Drawing" "Meditation" "Technology" "Fishing" "Swimming"
          "Camping" "Gaming" "Shopping" "Crafting" "Running" "Animals" "History" "Science" "Volunteering" "Fashion"
          "Food Tasting" "Programming" "Theater" "Collecting" "Skiing" "Surfing" "Chess" "Archery" "Cars" "DIY Projects"
          "Photography" "Biking" "Climbing" "Bird Watching" "Kayaking" "Reading" "Travelling" "Writing" "Music" "Cooking")

#An array that stores the values of potential matches
values=("Kindness" "Adventure" "Creativity" "Honesty" "Loyalty" "Courage" "Respect" "Equality" "Empathy" "Gratitude"
        "Optimism" "Integrity" "Forgiveness" "Humility" "Perseverance" "Patience" "Responsibility" "Generosity" "Fairness"
        "Tolerance" "Cooperation" "Curiosity" "Wisdom" "Humor" "Justice" "Freedom" "Love" "Self-discipline" "Balance" "Sustainability"
        "Open-mindedness" "Empowerment" "Compassion" "Innovation" "Community" "Excellence" "Altruism" "Harmony" "Unity" "Understanding"
        "Modesty" "Passion" "Adaptability" "Friendship" "Environmentalism" "Education" "Health" "Independence" "Family" "Teamwork")

#An array that stores the personalities of random people
personalities=(
    "Adventurous" "Creative" "Caring" "Intelligent" "Easygoing" "Optimistic" 
    "Ambitious" "Charming" "Honest" "Loyal" "Enthusiastic" "Patient" 
    "Energetic" "Witty" "Sociable" "Independent" "Compassionate" 
    "Confident" "Responsible" "Open-minded" "Humorous" "Genuine" 
    "Thoughtful" "Analytical" "Assertive" "Empathetic" "Spontaneous" 
    "Considerate" "Inquisitive" "Diplomatic" "Resourceful" "Persistent" 
    "Tolerant" "Adaptable" "Generous" "Resilient" "Courageous" 
    "Determined" "Nurturing" "Innovative" "Tenacious" "Versatile" 
    "Diligent" "Courteous" "Graceful" "Insightful" "Gregarious"
    "Perceptive" "Imaginative" "Unconventional"
)

for i in {1..5} 
do
    profile_file="profiles/person$i.profile"
 
    # total_names=${#names[@]}
    # name_index=$((RANDOM % total_names))
    # echo "Name: ${names[name_index]}" > "$profile_file"

    #get the random names associated with gender stored in the array
    random_entry=${names[$((RANDOM % ${#names[@]}))]}

    #extract the name using cut
    random_name=$(echo "$random_entry" | cut -d ':' -f 1)

    #extract the gender using cut
    random_gender=$(echo "$random_entry" | cut -d ':' -f 2)

    #print name and redirect it to a file
    echo "Name: $random_name" > "$profile_file"

    #print gender and appends it to a file
    echo "Gender: $random_gender" >> "$profile_file"

    #generates a random age and append it to a file
    echo "Age: $((RANDOM % 30 + 20))" >> "$profile_file"

    #generate random interest from the interest array
    random_interest=$(shuf -e "${interests[@]}" -n 3 | tr '\n' ', ')
    echo "Interests: $random_interest" >> "$profile_file"

    #generate random personality
    random_personality=${personalities[$((RANDOM % ${#personalities[@]}))]}
    random_personalities=$(shuf -e "${personalities[@]}" -n 3 | tr '\n' ', ')
    echo "Personality: $random_personalities" >> "$profile_file"

    #generate random value from the values array
    random_value=$(shuf -e "${values[@]}" -n 3 | tr '\n' ', ')
    echo "Values: $random_value" >> "$profile_file"
done

function collect_details() {
  echo "Enter your criteria below to find your perfect match..."
  read -p "Enter your name: " user_name
  read -p "Enter your age: " user_age
  read -p "Enter your gender(male or female): " user_gender
  read -p "List your interest/interests(separated by comma): " user_interest
  read -p "Describe your personality in few words: " user_Personality
  read -p "What are your core values(separated by comma): " user_value

  echo "Name: $user_name" > user_profile.txt
  echo "Age: $user_age" >> user_profile.txt
  echo "Gender: $user_gender" >> user_profile.txt
  echo "Interest: $user_interest" >> user_profile.txt
  echo "Personality: $user_Personality" >> user_profile.txt
  echo "Value: $user_value" >> user_profile.txt
}
collect_details

function validation() {
  export age_pattern='^[0-9]+$'
  export gender_pattern='^(male|female)$'

  trimmed_age=$(echo "$user_age" | tr -d '[:space:]')

  if [[ ! "$trimmed_age" =~ $age_pattern ]]; then
    echo "Please, enter a valid age"
    # exit 1
  fi

  if [[ ! "$user_gender" =~ $gender_pattern ]]; then
    echo "Please, enter a valid gender(male, female or other)"
    # exit 1
  fi
}
validation


function find_potential_matches() {
  potential_matches=$(find . -type f -name "*.profile" | grep -v "$user_name")
  echo "$potential_matches"
  personality_matches=$(grep -i 'personal' "$potential_matches" | awk '{print $2}')

  interest_matches=$(grep -i 'interest' "$potential_matches" | awk '{print $2}')

  value_matches=$(grep -i 'value' "$potential_matches" | awk '{print $2}')
}
find_potential_matches

function set_arrays() {
  matches=(
    ${personality_matches[@]}
    ${interest_matches[@]}
    ${value_matches[@]}
  )

  unique_matches=()

  for match in "${matches[@]}"; do
    if [[ -n "$match" && ! "${unique_matches[@]}" =~ "$match" ]]; then
      unique_matches+=("$match")
    fi
  done
}
set_arrays

function calculate_compatibility() {

  match=$1
  if [ -n "$match" ]; then
    compatibility=$(awk -v rnd="$(awk 'BEGIN{srand(); print rand()}')" 'BEGIN{printf "%.2f\n", rnd * 100}')
    format_compatibility=$(printf "%.2f" "$compatibility")
    echo "Compatibility with $match is: $format_compatibility%"
  else
    echo "No matches found for compatibility calculation."
  fi
  # match=$1
  # compatibility=$(awk -v rnd="$(awk 'BEGIN{srand(); print rand()}')" 'BEGIN{printf "%.2f\n", rnd * 100}')
  # # compatibility=$(echo "$user_name","$match" | awk '{print rand(100)}')
  # format_compatibility=$(printf "%.2f" "$compatibility")
  # echo "Compatibility with $match is: $format_compatibility%"
}
calculate_compatibility

function select_random_profiles() {
  num_profiles=5 
  random_profiles=($(shuf -e "${unique_matches[@]}" -n $num_profiles))
}

function calculate_unique_compatibility() {
  for match in "${unique_matches[@]}"; do
    calculate_compatibility "$match" &
  done

  wait
}
calculate_unique_compatibility


# function display_horoscope() {
#   horoscope_days=$(date +%A)

#   if [[ "$horoscope_days" == "Monday" ]]; then
#     echo "Horoscope for today is: Today is a great day to connect with friends and family. You might just find love in the most unexpected places."
#   elif [[ "$horoscope_days" == "Tuesday" ]]; then
#     echo "Horoscope for today is: Love is in the air today, so take a chance and strike up a conversation with someone new."
#   elif [[ "$horoscope_days" == "Wednesday" ]]; then
#     echo "Horoscope for today is: Embrace your individuality today, and you might just find someone who appreciates you for who you are."
#   elif [[ "$horoscope_days" == "Thursday" ]]; then
#     echo "Horoscope for today is: Be open to new experiences today, and you might just find something special waiting for you."
#   elif [[ "$horoscope_days" == "Friday" ]]; then
#     echo "Horoscope for today is: Today is a day to focus on self-love and appreciation. Remember, you are worthy of love."
#   elif [[ "$horoscope_days" == "Saturday" ]]; then
#     echo "Horoscope for today is: Embrace your individuality today, and you might just find someone who appreciates you for who you are."
#   elif [[ "$horoscope_days" == "Sunday" ]]; then
#     echo "Horoscope for today is: Love is in the air today, so take a chance and strike up a conversation with someone new."
#   else
#     echo "$horoscope_days"
#   fi
# }
# display_horoscope

# function encourage_feedback() {
#   alias connect="https://lovematchmaker.com/connect"
#   echo "Connect with your matches: $(connect)"

#   alias feedback="mailto:feedback@lovematchmaker.com"
#   echo "Provide feedback: $(feedback)"
# }
# encourage_feedback

# function goodbye_warning_quotes() {
#   warnings=(
#     "Never mistake empathy for affection"
#     "Being single and happy is better than being sad and afraid in an abuse relationship"
#     "Never let someone who contributes so little to a relationship control so much of it"
#     "If another woman steals your man, there's no better revenge than letting her keep him. Real men can't be stolen"
#     "If you cheat on someone that is willing to do anything for you, you actually cheated yourself out of true loyalty"
#     "Never push a loyal person to the point where they longer care"
#     "Trying to forget someone you love is like trying to remember someone you've never met"
#     "Don't cheat, if the feelings aren't there then don't be either"
#     "The worst kind of hurt is betrayal, because it means someone was willing to hurt you just to make themselves feel better"
#     "Secrets aren't safe keep em to yourself, to yourself and nobody else"
#   )

#   total_warnings=${#warnings[@]}

#   warning_index=$((RANDOM % total_warnings))

#   echo "${warnings[warning_index]}"

# }
# goodbye_warning_quotes

# function bid_farewell() {
#   echo "Farewell $user_name, and may the stars align in your favor!"
#   exit
# }
# bid_farewell

















