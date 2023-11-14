#!/bin/bash

#Introduction
echo "Welcome to LOver's que."
echo "This script helps you find potential matches. Your days of loneliness are over."
echo "Let's 'fall' into it!"
echo

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


function female_profile() {
    echo "Name: Olivia White, Gender: female, Age: 23, Interest: Music, Profession: Flight attendant" > female_profiles.txt
    echo "Name: Emma Johnson, Gender: female, Age: 27, Interest: Sports, Profession: Entrepreneur" >> female_profiles.txt
    echo "Name: Ava Davis, Gender: female, Age: 25, Interest: Travel, Profession: Tourist" >> female_profiles.txt
    echo "Name: Sophia Taylor, Gender: female, Age: 22, Interest: Reading, Profession: Author" >> female_profiles.txt
    echo "Name: Mia Martin, Gender: female, Age: 28, Interest: Coding, Profession: Programmer" >> female_profiles.txt
    echo "Name: Amelia Moore, Gender: female, Age: 24, Interest: Music, Profession: Surgeon" >> female_profiles.txt
    echo "Name: Harper Reed, Gender: female, Age: 26, Interest: Sports, Profession: Detective" >> female_profiles.txt
    echo "Name: Lily Scott, Gender: female, Age: 21, Interest: Travel, Profession: CEO" >> female_profiles.txt
    echo "Name: Grace Turner, Gender: female, Age: 29, Interest: Reading, Profession: Writer" >> female_profiles.txt
    echo "Name: Aria Parker, Gender: female, Age: 30, Interest: Coding, Profession: Cyber security" >> female_profiles.txt
}
female_profile


function male_profiles() {
    echo "Name: Michael Smith, Gender: male, Age: 25, Interest: Music, Profession: Architect" > male_profiles.txt
    echo "Name: Joshua Miller, Gender: male, Age: 28, Interest: Sports, Profession: Civil engineer" >> male_profiles.txt
    echo "Name: Matthew Wilson, Gender: male, Age: 22, Interest: Travel, Profession: Cyber security" >> male_profiles.txt
    echo "Name: Christopher Davis, Gender: male, Age: 30, Interest: Reading, Profession: Entrepreneur" >> male_profiles.txt
    echo "Name: Daniel Brown, Gender: male, Age: 26, Interest: Coding, Profession: Software developer" >> male_profiles.txt
    echo "Name: Joshua Miller, Gender: male, Age: 21, Interest: Music, Profession: Doctor" >> male_profiles.txt
    echo "Name: Joseph Anderson, Gender: male, Age: 29, Interest: Sports, Profession: Teacher" >> male_profiles.txt
    echo "Name: William Thomas, Gender: male, Age: 23, Interest: Travel, Profession: Entrepreneur" >> male_profiles.txt
    echo "Name: Ethan Harris, Gender: male, Age: 27, Interest: Reading, Profession: Author" >> male_profiles.txt
    echo "Name: Andrew Jackson, Gender: male, Age: 24, Interest: Coding, Profession: Data scientist" >> male_profiles.txt
}
male_profiles

function collect_details() {
    read -p "Enter your name: " user_name
    read -p "What's your gender? (male/female) " user_gender
    read -p "Enter your preferred age range (21 - 30): " user_age 
    read -p "Express your interest? " user_interest 
    read -p "What's your profession? " user_profession

    echo "Name: $user_name" > user_profile.txt
    echo "Gender: $user_gender" >> user_profile.txt
    echo "Age: $user_age" >> user_profile.txt
    echo "Interest: $user_interest" >> user_profile.txt
    echo "profession: $user_profession" >> user_profile.txt
}
collect_details

function matchmake() {
    if [[ "$user_gender" == "male" || "$user_gender" == "Male" ]]
    then
        function age_difference() {
            echo $(($1 - $2))
        }
        # age_difference

        while read -r user_profile; do
            user_name=$(echo "$user_profile" | awk -F ', ' '{print $1}')
            user_age=$(echo "$user_profile" | awk -F ', ' '{print $2}')
            user_interest=$(echo "$user_profile" | awk -F ', ' '{print $3}')
            user_profession=$(echo "$user_profile" | awk -F ', ' '{print $5}')

            while read -r male_profiles; do
                male_name=$(echo "$male_profiles" | awk -F ', ' '{print $1}')
                male_age=$(echo "$male_profiles" | awk -F ', ' '{print $2}')
                male_interest=$(echo "$male_profiles" | awk -F ', ' '{print $3}')
                male_profession=$(echo "$male_profiles" | awk -F ', ' '{print $4}')

            age_diff=$(age_difference "$user_age" "$male_age")
            echo "Age difference: $age_diff years"

                   

    elif [[ "$user_gender" == "female" || "$user_gender" == "Female" ]]
    then
        awk '{print $0}' female_profiles.txt
    else
        read -p "What's your gender? (male/female) " user_gender
    fi
}
matchmake






























