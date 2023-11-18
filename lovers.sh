#!/bin/bash

# Introduction
echo "Welcome to LOvers-que!"
echo "Your personal cupid is here to make your heart ❤️ race."
echo "Feel the love!"

# Function to display a heart graphic
function display_heart() {
  echo -e "    \u2764\u2764\u2764\u2764\u2764
  \u2764\u2764\u2764\u2764\u2764\u2764\u2764\u2764
 \u2764\u2764\u2764\u2764\u2764\u2764\u2764\u2764\u2764
 \u2764\u2764\u2764\u2764\u2764\u2764\u2764\u2764\u2764
  \u2764\u2764\u2764\u2764\u2764\u2764\u2764\u2764
    \u2764\u2764\u2764\u2764\u2764\u2764
      \u2764\u2764\u2764\u2764
        \u2764\u2764"
}

display_heart

# Function to welcome users
function welcome_user() {
  welcome_message=$'Welcome to LOvers-que!\nYour personal cupid is here to make your heart\x1B[31m ❤️❤️\x1B[0m race.\nFeel the love.'
  echo "$welcome_message"
}

welcome_user
echo

# Function to generate love quotes from an array every time the script is run
function generate_love_quotes() {
  love_quotes=(
    "Love is when you give someone else the power to destroy you and trust them not to."
    "There is only one happiness in this life, to love and be loved."
    "Love is a series of trials, but the end justifies the means."
    "True love will stand any test, but don't test it yourself."
    "The fortress of love stands strong when built with bricks of honesty, but crumbles from the cracks of deception."
    "To get the full value of love, you must have someone to divide it with."
  )

  total_quotes=${#love_quotes[@]}
  quote_index=$((RANDOM % total_quotes))

  echo "${love_quotes[quote_index]}"
}

# Store quote for later (personalized love message for the user)
function store_quote() {
  generate_love_quotes >lovemessage.txt
  wc -w lovemessage.txt
}

store_quote

# Function to collect user details
function collect_details() {
  read -p "Enter your name: " user_name
  read -p "What's your gender? (male/female/other): " user_gender
  read -p "Enter your age: " user_age
  read -p "Express your interest: " user_interest
  read -p "What's your profession: " user_profession

  echo "Name, $user_name" >user_profile.txt
  echo "Gender, $user_gender" >>user_profile.txt
  echo "Age, $user_age" >>user_profile.txt
  echo "Interest, $user_interest" >>user_profile.txt
  echo "Profession, $user_profession" >>user_profile.txt
}

collect_details

# Function to generate profiles for different genders
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
  echo "Name: $name" >"$profile_file"
  echo "Age: $age" >>"$profile_file"
  echo "Gender: $gender" >>"$profile_file"
  echo "Interests: ${interests[@]}" >>"$profile_file"
  echo "Personality: $personality" >>"$profile_file"
  echo "Values: ${values[@]}" >>"$profile_file"
}

generate_profile "male"
generate_profile "female"
generate_profile "other"

# Function for validation
function validation() {
  age_pattern='^[0-9]+$'
  gender_pattern='^(male|female|other)$'

  trimmed_age=$(echo "$user_age" | tr -d '[:space:]')

  if [[ ! "$trimmed_age" =~ $age_pattern ]]; then
    echo "Please, enter a valid age"
    exit 1
  fi

  if [[ ! "$user_gender" =~ $gender_pattern ]]; then
    echo "Please, enter a valid gender (male, female, or other)"
    exit 1
  fi
}

validation

# Function to find potential matches
function find_potential_matches() {
  potential_matches=$(find . -type f -name "*.profile" | grep -v "$user_name")
  echo "$potential_matches"
}

find_potential_matches

# Function to set arrays
function set_arrays() {
  personality_matches=$(grep -i 'personality' "$potential_matches" | awk '{print $1}')
  interest_matches=$(grep -i 'interest' "$potential_matches" | awk '{print $1}')
  value_matches=$(grep -i 'value' "$potential_matches" | awk '{print $1}')

  matches=(
    "$personality_matches"
    "$interest_matches"
    "$value_matches"
  )

  unique_matches=()

  for match in "${matches[@]}"; do
    if [[ ! "${unique_matches}" =~ "${match}" ]]; then
      unique_matches+=("$match")
    fi
  done
}

set_arrays

# Function to calculate compatibility
function calculate_compatibility() {
  match=$1
  compatibility=$(echo "$user_name","$match" | awk '{print rand(100)}')
  format_compatibility=$(printf "%.2f" "$compatibility")
  echo "Compatibility with $match is: $format_compatibility%"
}

# Function to calculate unique compatibility for all matches
function calculate_unique_compatibility() {
  for match in "${unique_matches[@]}"; do
    calculate_compatibility "$match" &
  done

  wait
}

calculate_unique_compatibility

# Function to display horoscope
function display_horoscope() {
  horoscope_days=$(date +%A)

  case "$horoscope_days" in
    "Monday")
      echo "Horoscope for today is: Today is a great day to connect with friends and family. You might just find love in the most unexpected places."
      ;;
    "Tuesday")
      echo "Horoscope for today is: Love is in the air today, so take a chance and strike up a conversation with someone new."
      ;;
    "Wednesday")
      echo "Horoscope for today is: Embrace your individuality today, and you might just find someone who appreciates you for who you are."
      ;;
    "Thursday")
      echo "Horoscope for today is: Be open to new experiences today, and you might just find something special waiting for you."
      ;;
    "Friday")
      echo "Horoscope for today is: Today is a day to focus on self-love and appreciation. Remember, you are worthy of love."
      ;;
    "Saturday")
      echo "Horoscope for today is: Embrace your individuality today, and you might just find someone who appreciates you for who you are."
      ;;
    "Sunday")
      echo "Horoscope for today is: Love is in the air today, so take a chance and strike up a conversation with someone new."
      ;;
    *)
      echo "No horoscope available for today."
      ;;
  esac
}

display_horoscope

# Function to encourage feedback
function encourage_feedback() {
  connect_url="https://lovematchmaker.com/connect"
  feedback_email="mailto:feedback@lovematchmaker.com"

  echo "Connect with your matches: $connect_url"
  echo "Provide feedback: $feedback_email"
}

encourage_feedback

# Function to display final warning quotes
function display_warning() {
  warnings=(
    "Never mistake empathy for affection."
    "Being single and happy is better than being sad and afraid in an abusive relationship."
    "Never let someone who contributes so little to a relationship control so much of it."
    "If another woman steals your man, there's no better revenge than letting her keep him. Real men can't be stolen."
    "If you cheat on someone who is willing to do anything for you, you actually cheated yourself out of true loyalty."
    "Never push a loyal person to the point where they no longer care."
    "Trying to forget someone you love is like trying to remember someone you've never met."
    "Don't cheat. If the feelings aren't there, then don't be either."
    "The worst kind of hurt is betrayal, because it means someone was willing to hurt you just to make themselves feel better."
  )

  total_warnings=${#warnings[@]}
  warning_index=$((RANDOM % total_warnings))

  echo "${warnings[warning_index]}"
}

# Function to bid farewell
function bid_farewell() {
  echo "Farewell $user_name, and may the stars align in your favor!"
  exit
}

# Display final warning
display_warning

# Bid farewell
bid_farewell

