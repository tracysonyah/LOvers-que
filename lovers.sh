#!/bin/bash

#Introduction
# echo "Welcome to LOver's que."
# echo "This script helps you find potential matches. Your days of loneliness are over."
# echo "Let's 'fall' into it!"
# echo

# function love_section() {
#     echo "Love is a series of trials but the end justifies the means."
#     echo "Remember: you are a piece of art, everything in it is perfect for the one who loves you."

#     echo "The most sacred things are hidden in sincerity, the same sincerity that leads us to the eternal flame of love. People raise borders between eachother, but fortunately, true love doesn't care about those." > lovemessage.txt

#     word_count=$(wc -w < lovemessage.txt)
#     echo "The number of words in the lovemessage file is $word_count."
#     echo
#     echo "The first three words in the love message file: "
#     head -n 1 lovemessage.txt | cut -d ' ' -f1-3
#     echo
#     echo "The last three words in the love message file: "
#     tail -n 1 lovemessage.txt | rev | cut -d ' ' -f1-3 | rev
#     echo
#     if grep -q "love" lovemessage.txt
#     then
#         echo "Love is found in the file"; awk '{print $0}' lovemessage.txt
#     else
#         echo "Love isn't mentioned in the quote"
#     fi
#     echo
#     echo "List of files in the diectory: "
#     ls *

#     echo "Process ID of the script: $$"

#     echo "Background job running..."
#     sleep 5 &
#     background_job_pid=$!

#     wait $background_job_pid
#     echo "Background job completed"

#     alias lovers_quote='echo "Id rather be a lover than a fighter."'

#     lovers_quote
# }
# love_section


# function female_profile() {
#     echo "Olivia White, 23, Music, Flight attendant" > female_profiles.txt
#     echo "Emma Johnson, 27, Sports, Entrepreneur" >> female_profiles.txt
#     echo "Ava Davis, 25, Travel, Tourist" >> female_profiles.txt
#     echo "Sophia Taylor, 22, Reading, Author" >> female_profiles.txt
#     echo "Mia Martin, 28, Coding, Programmer" >> female_profiles.txt
#     echo "Amelia Moore, 24, Music, Surgeon" >> female_profiles.txt
#     echo "Harper Reed, 26, Sports, Detective" >> female_profiles.txt
#     echo "Lily Scott, 21, Traveling, CEO" >> female_profiles.txt
#     echo "Grace Turner, 29, Reading, Writer" >> female_profiles.txt
#     echo "Aria Parker, 30, Coding, Cyber security" >> female_profiles.txt
# }
# female_profile


# function male_profiles() {
#     echo "Michael Smith, 25, Interest, Music, Architect" > male_profiles.txt
#     echo "Joshua Miller, 28, Sports, Civil engineer" >> male_profiles.txt
#     echo "Matthew Wilson, 22, Travel, Cyber security" >> male_profiles.txt
#     echo "Christopher Davis, 30, Reading, Entrepreneur" >> male_profiles.txt
#     echo "Daniel Brown, 26, Coding, Software developer" >> male_profiles.txt
#     echo "Ethan Miller, 21, Music, Doctor" >> male_profiles.txt
#     echo "Joseph Anderson, 29, Sports, Teacher" >> male_profiles.txt
#     echo "William Thomas, 23, Travel, Entrepreneur" >> male_profiles.txt
#     echo "James Harris, 27, Reading, Author" >> male_profiles.txt
#     echo "Andrew Jackson, 24, Coding, Data scientist" >> male_profiles.txt
# }
# male_profiles

# function collect_details() {
#     read -p "Enter your name: " user_name
#     read -p "What's your gender? (male/female) " user_gender
#     read -p "Enter your age: " user_age 
#     read -p "Express your interest? " user_interest 
#     read -p "What's your profession? " user_profession

#     echo "Name, $user_name" > user_profile.txt
#     echo "Gender, $user_gender" >> user_profile.txt
#     echo "Age, $user_age" >> user_profile.txt
#     echo "Interest, $user_interest" >> user_profile.txt
#     echo "profession, $user_profession" >> user_profile.txt
# }
# collect_details

# function matchmake() {
#     if [[ "$user_gender" == "male" || "$user_gender" == "Male" ]]; then
#         function age_difference() {
#             echo $(($1 - $2))
#         }

#         while read -r user_profile; do
#             user_name=$(echo "$user_profile" | awk -F ', ' '{print $2}')
#             user_age=$(echo "$user_profile" | awk -F ', ' '{print $2}')
#             user_interest=$(echo "$user_profile" | awk -F ', ' '{print $2}')
#             user_profession=$(echo "$user_profile" | awk -F ', ' '{print $2}')

  

#             while read -r male_profiles; do
#                 male_name=$(echo "$male_profiles" | awk -F ', ' '{print $1}')
#                 male_age=$(echo "$male_profiles" | awk -F ', ' '{print $2}')
#                 male_interest=$(echo "$male_profiles" | awk -F ', ' '{print $3}')
#                 male_profession=$(echo "$male_profiles" | awk -F ', ' '{print $4}')

#                 if [[ "$user_interest" == "$male_interest" && "$(age_difference "$user_age" "$male_age")" -ge 0 && \
#                 "$(age_difference "$user_age" "$male_age")" -le 5 ]]; then
#                     echo "Compatibility: $user_name and $male_name share common interest and age compatibility"
#                 elif [[ "$user_name" == "$male_name" ]]; then
#                     echo "The only thing $user_name and $male_name have in common is the shared name, nothing majorly compatible"
#                 elif [[ "$user_profession" == "$male_profession" ]]; then
#                     echo "$user_name and $male_name have the same profession, that doesn't define compatibilty"
#                 elif [[ "$user_profession" == "$male_profession" && "$user_interest" == "$male_interest" ]]; then
#                     echo "Compatibility: $user_name and $male_name share common interest and profession"
#                 elif [[ "$user_name" == "$male_name" && "$user_interest" == "$male_interest" ]]; then
#                     echo "Compatibility: $user_name and $male_name share common interest and name"
#                 else
#                     echo "Sorry, $user_name shares nothing in common with $male_name, you are not compatible."
#                     echo "But then again, opposite attracts. Go ahead and message them."
#                 fi
#             done < male_profiles.txt
#         done < user_profile.txt

#     elif [[ "$user_gender" == "female" || "$user_gender" == "Female" ]]; then
#         function age_difference() {
#             echo $(($1 - $2))
#         }

#         while read -r user_profile; do
#             user_name=$(echo "$user_profile" | awk -F ', ' '{print $2}')
#             user_age=$(echo "$user_profile" | awk -F ', ' '{print $2}')
#             user_interest=$(echo "$user_profile" | awk -F ', ' '{print $2}')
#             user_profession=$(echo "$user_profile" | awk -F ', ' '{print $2}')

#             while read -r female_profiles; do
#                 female_name=$(echo "$female_profiles" | awk -F ', ' '{print $1}')
#                 female_age=$(echo "$female_profiles" | awk -F ', ' '{print $2}')
#                 female_interest=$(echo "$female_profiles" | awk -F ', ' '{print $3}')
#                 female_profession=$(echo "$female_profiles" | awk -F ', ' '{print $4}')

#                 if [[ "$user_interest" == "$female_interest" && "$(age_difference "$user_age" "$female_age")" -ge 0 && \
#                 "$(age_difference "$user_age" "$female_age")" -le 5 ]]; then
#                     echo "Compatibility: $user_name and $female_name share common interest and age compatibility"
#                 elif [[ "$user_name" == "$female_name" ]]; then
#                     echo "The only thing $user_name and $female_name have in common is the shared name, nothing majorly compatible"
#                 elif [[ "$user_profession" == "$female_profession" ]]; then
#                     echo "$user_name and $female_name have the same profession, that doesn't define compatibilty"
#                 elif [[ "$user_profession" == "$female_profession" && "$user_interest" == "$female_interest" ]]; then
#                     echo "Compatibility: $user_name and $female_name share common interest and profession"
#                 elif [[ "$user_name" == "$female_name" && "$user_interest" == "$female_interest" ]]; then
#                     echo "Compatibility: $user_name and $female_name share common interest and name"
#                 else
#                     echo "Sorry, $user_name share nothing in common with $female_name, you are not compatible."
#                     echo "But then again, opposite attracts. Go ahead and message them."
#                 fi
#             done < female_profiles.txt
#         done < user_profile.txt
#     else
#         echo "You entered an incorrect gender"
#     fi
# }
# matchmake

# function female_profile() {
#     echo "Olivia White, 23, Music, Flight attendant" > female_profiles.txt
#     echo "Emma Johnson, 27, Sports, Entrepreneur" >> female_profiles.txt
#     echo "Ava Davis, 25, Travel, Tourist" >> female_profiles.txt
#     echo "Sophia Taylor, 22, Reading, Author" >> female_profiles.txt
#     echo "Mia Martin, 28, Coding, Programmer" >> female_profiles.txt
#     echo "Amelia Moore, 24, Music, Surgeon" >> female_profiles.txt
#     echo "Harper Reed, 26, Sports, Detective" >> female_profiles.txt
#     echo "Lily Scott, 21, Travel, CEO" >> female_profiles.txt
#     echo "Grace Turner, 29, Reading, Writer" >> female_profiles.txt
#     echo "Aria Parker, 30, Coding, Cyber security" >> female_profiles.txt
# }
# female_profile

# function male_profiles() {
#     echo "Michael Smith, 25, Music, Architect" > male_profiles.txt
#     echo "Joshua Miller, 28, Sports, Civil engineer" >> male_profiles.txt
#     echo "Matthew Wilson, 22, Travel, Cyber security" >> male_profiles.txt
#     echo "Christopher Davis, 30, Reading, Entrepreneur" >> male_profiles.txt
#     echo "Daniel Brown, 26, Coding, Software developer" >> male_profiles.txt
#     echo "Ethan Miller, 21, Music, Doctor" >> male_profiles.txt
#     echo "Joseph Anderson, 29, Sports, Teacher" >> male_profiles.txt
#     echo "William Thomas, 23, Travel, Entrepreneur" >> male_profiles.txt
#     echo "James Harris, 27, Reading, Author" >> male_profiles.txt
#     echo "Andrew Jackson, 24, Coding, Data scientist" >> male_profiles.txt
# }
# male_profiles

# function collect_details() {
#     read -p "Enter your name: " user_name
#     read -p "What's your gender? (male/female) " user_gender
#     read -p "Enter your age: " user_age 
#     read -p "Express your interest? " user_interest 
#     read -p "What's your profession? " user_profession

#     echo "Name, $user_name" > user_profile.txt
#     echo "Gender, $user_gender" >> user_profile.txt
#     echo "Age, $user_age" >> user_profile.txt
#     echo "Interest, $user_interest" >> user_profile.txt
#     echo "Profession, $user_profession" >> user_profile.txt
# }
# collect_details

# function matchmake() {
#     if [[ "$user_gender" == "male" || "$user_gender" == "Male" ]]; then
#         function age_difference() {
#             echo $(($1 - $2))
#         }

#         while IFS=', ' read -r user_name user_age user_interest user_profession; do
#             while IFS=', ' read -r male_name male_age male_interest male_profession; do
#                 if [[ "$user_interest" == "$male_interest" && "$(age_difference "$user_age" "$male_age")" -ge 0 && \
#                     "$(age_difference "$user_age" "$male_age")" -le 5 ]]; then
#                     echo "Compatibility: $user_name and $male_name share common interest and age compatibility"
#                 # Add other compatibility checks here
#                 else
#                     echo "Sorry, $user_name shares nothing in common with $male_name, you are not compatible."
#                     echo "But then again, opposites attract. Go ahead and message them."
#                 fi
#             done < male_profiles.txt
#         done < user_profile.txt

#     elif [[ "$user_gender" == "female" || "$user_gender" == "Female" ]]; then
#         function age_difference() {
#             echo $(($1 - $2))
#         }

#         while IFS=', ' read -r user_name user_age user_interest user_profession; do
#             while IFS=', ' read -r female_name female_age female_interest female_profession; do
#                 if [[ "$user_interest" == "$female_interest" && "$(age_difference "$user_age" "$female_age")" -ge 0 && \
#                     "$(age_difference "$user_age" "$female_age")" -le 5 ]]; then
#                     echo "Compatibility: $user_name and $female_name share common interest and age compatibility"
#                 # Add other compatibility checks here
#                 else
#                     echo "Sorry, $user_name shares nothing in common with $female_name, you are not compatible."
#                     echo "But then again, opposites attract. Go ahead and message them."
#                 fi
#             done < female_profiles.txt
#         done < user_profile.txt
#     else
#         echo "You entered an incorrect gender"
#     fi
# }
# matchmake

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

function collect_details() {
  echo "Enter your criteria below to find your perfect match..."
  read -p "Enter your name: " user_name
  read -p "Enter your age: " user_age
  read -p "Enter your gender(male, female or other): " user_gender
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

function generate_profile() {
  gender=$1
  profile_file="${gender}_profile.profile"

  # Generate random data for the profile
  name="Random $gender"
  age=$((RANDOM % 10 + 20))  # Random age between 20 and 29
  interests=("Reading" "Traveling" "Cooking" "Sports" "Music")
  personality="Friendly"
  values=("Honesty" "Kindness" "Adventure")

  # Write the profile to the file
  echo "Name: $name" > "$profile_file"
  echo "Age: $age" >> "$profile_file"
  echo "Gender: $gender" >> "$profile_file"
  echo "Interests: ${interests[@]}" >> "$profile_file"
  echo "Personality: $personality" >> "$profile_file"
  echo "Values: ${values[@]}" >> "$profile_file"
}

# Generate profiles for different genders
generate_profile "male"
generate_profile "female"
generate_profile "other"

function validation() {
  export age_pattern='^[0-9]+$'
  export gender_pattern='^(male|female|other)$'

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
  # echo "$potential_matches"
  personality_matches=$(grep -i 'personal' "$potential_matches" | awk '{print $1}')

  interest_matches=$(grep -i 'interest' "$potential_matches" | awk '{print $1}')

  value_matches=$(grep -i 'value' "$potential_matches" | awk '{print $1}')
}
find_potential_matches

# function set_arrays() {
#   matches=(
#     "$personality_matches"
#     "$interest_matches"
#     "$value_matches"
#   )

#   unique_matches=()

#   for match in "${matches[@]}"; do
#     if [[ ! "${unique_matches}" =~ "${match}" ]]; then
#       unique_matches+=("$match")
#     fi
#   done
# }

# function calculate_compatibility() {
#   match=$1
#   compatibility=$(echo "$user_name","$match" | awk '{print rand(100)}')
#   format_compatibility=$(printf "%.2f" "$compatibility")
#   echo "Compatibility with $match is: $format_compatibility%"
# }

# function calculate_unique_compatibility() {
#   for match in "${unique_matches[@]}"; do
#     calculate_compatibility "$match" &
#   done

#   wait
# }
# calculate_unique_compatibility


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

















