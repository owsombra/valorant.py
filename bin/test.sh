#!/bin/bash

function propmt_test() {
    echo -n "Tests -- Script Name >> "
    read name

    if [ $name != "*" ]; then
        if python "tests/test_$name.py"; then
            printf "\n\nError occured while running tests."
        else
            echo "Tests run successfully."
        fi
    else
        echo "lmao what?"
    fi
}

function prompt_key() {
    echo -n "Paste your API Key >> ";
    read key

    echo ""
    echo "0 - Developement Key"
    echo "1 - Application Key"
    echo -n "Enter Key Type >> "
    read key_type

    export VALORANT_KEY=key
    export VALORANT_KEY_TYPE=key_type

    clear
}

# propmt_test
prompt_key
python "test.py"

echo "Done!"
