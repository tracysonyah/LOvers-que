#!/bin/bash

#Introduction
echo "Welcome to LOver's que."
echo "This script helps you find potential matches. Your days of loneliness are over."
echo "Let's 'fall' into it!"
echo

function love_section() {
    echo "Love is a series of trials but the end justifies the means."
    echo "Remember: you are a piece of art, everything in it is perfect for the one who loves you."

    echo "The most sacred things are hidden in sincerity, the same sincerity that leads us to the eternal flame of love. People raise borders between eachother, but fortunately, true love doesn't care about those." > lovemessage.txt

    word_count=$(wc -w < lovemessage.txt)
    echo "The number of words in the lovemessage file is $word_count."
    echo
    echo "The first three words in the love message file: "
    head -n 1 lovemessage.txt | cut -d ' ' -f1-3
    echo
    echo "The last three words in the love message file: "
    tail -n 1 lovemessage.txt | rev | cut -d ' ' -f1-3 | rev
    echo
    if grep -q "love" lovemessage.txt
    then
        echo "Love is found in the file"; awk '{print $0}' lovemessage.txt
    else
        echo "Love isn't mentioned in the quote"
    fi
    echo
    echo "List of files in the diectory: "
    ls *

    echo "Process ID of the script: $$"

    echo "Background job running..."
    sleep 5 &
    background_job_pid=$!

    wait $background_job_pid
    echo "Background job completed"

    alias lovers_quote='echo "Id rather be a lover than a fighter."'

    lovers_quote
}
love_section


function female_profile() {
    echo "Name: Olivia White 1, Gender: female, Age: 23, Interest: Music" > female_profiles.txt
    echo "Name: Emma Johnson 2, Gender: female, Age: 27, Interest: Sports" >> female_profiles.txt
    echo "Name: Ava Davis 3, Gender: female, Age: 25, Interest: Travel" >> female_profiles.txt
    echo "Name: Sophia Taylor 4, Gender: female, Age: 22, Interest: Reading" >> female_profiles.txt
    echo "Name: Mia Martin 5, Gender: female, Age: 28, Interest: Coding" >> female_profiles.txt
    echo "Name: Amelia Moore 6, Gender: female, Age: 24, Interest: Music" >> female_profiles.txt
    echo "Name: Harper Reed 7, Gender: female, Age: 26, Interest: Sports" >> female_profiles.txt
    echo "Name: Lily Scott 8, Gender: female, Age: 21, Interest: Travel" >> female_profiles.txt
    echo "Name: Grace Turner 9, Gender: female, Age: 29, Interest: Reading" >> female_profiles.txt
    echo "Name: Aria Parker 10, Gender: female, Age: 30, Interest: Coding" >> female_profiles.txt
}
female_profile


function male_profiles() {
    echo "Name: Michael Smith 1, Gender: male, Age: 25, Interest: Music" > male_profiles.txt
    echo "Name: Joshua Miller 2, Gender: male, Age: 28, Interest: Sports" >> male_profiles.txt
    echo "Name: Matthew Wilson 3, Gender: male, Age: 22, Interest: Travel" >> male_profiles.txt
    echo "Name: Christopher Davis 4, Gender: male, Age: 30, Interest: Reading" >> male_profiles.txt
    echo "Name: Daniel Brown 5, Gender: male, Age: 26, Interest: Coding" >> male_profiles.txt
    echo "Name: Joshua Miller 6, Gender: male, Age: 21, Interest: Music" >> male_profiles.txt
    echo "Name: Joseph Anderson 7, Gender: male, Age: 29, Interest: Sports" >> male_profiles.txt
    echo "Name: William Thomas 8, Gender: male, Age: 23, Interest: Travel" >> male_profiles.txt
    echo "Name: Ethan Harris 9, Gender: male, Age: 27, Interest: Reading" >> male_profiles.txt
    echo "Name: Andrew Jackson 10, Gender: male, Age: 24, Interest: Coding" >> male_profiles.txt
}
male_profiles

function collect_details() {
    read -p "Enter your name: " user_name
    read -p "What's your gender? (male/female) " user_gender
    read -p "Enter your preferred age range (21 - 30): " user_age
    read -p "Express your interest? " user_interest
}
 































# echo "Love is beautiful"
# if [[ "$question" == yes || "$question" == y ]]
# then
#     echo "Okay!"

# elif [[ "$question" == no || "$question" == n ]]
# then
#     echo "Your loss!"
#     exit
# else
#     exit
# fi