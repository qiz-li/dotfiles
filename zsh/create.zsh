#!/bin/zsh

function create() {
    # Navigate to projects directory
    cd "$HOME/documents/code/n-l1" || exit 1
    name=$1

    # Check whether to create a GitHub repo
    if read -rq "?GitHub 📦? (y/n) "; then
        echo ""

        # Ask for license type
        read -r license"?License: "

        # Create remote GitHub repo
        curl -s -H "Authorization: token $GITHUB_TOKEN" \
            -d '{ 
            "name": "'"$name"'",
            "private": true,
            "has_projects": false,
            "has_wiki": false,
            "auto_init": true,
            "license_template": "'"$license"'"
            }' \
            https://api.github.com/user/repos

        # Clone from GitHub
        git clone git@github.com:ilzq/"$name".git
        cd "$name" || exit 1

        echo -e "\nGitHub ✅"
    else
        echo -e "\nGitHub ❌"

        # Make new project directory
        mkdir "$name"
        cd "$name" || exit 1

        # Ask whether it should be Git
        if read -rq "?Git 🏷️ ? (y/n) "; then
            echo ""
            git init
            echo "Git ✅"
        else
            echo -e "\nGit ❌"
        fi

        # Ask whether to create README
        if read -rq "?README 📝? (y/n) "; then
            touch README.md
            echo -e "\nREADME ✅"
        else
            echo -e "\nREADME ❌"
        fi

    fi

    # Ask whether it is Python
    if read -rq "?Python 🐍? (y/n) "; then
        echo -e "\nPreparing...🏗️ "

        # Create new Python file and setup venv
        touch "$name".py
        python3 -m venv .venv

        echo -e "Python ✅"
    else
        echo -e "\nPython ❌"
    fi

    # Finished creating project
    echo -e "\nFinished creating $name 🎉!"
    code .
}
