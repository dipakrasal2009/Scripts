#!/bin/bash
# funny-linux-show.sh - The Ultimate Funny Commands Show for Ubuntu 🎉

echo "======================================"
echo " 🤪 Welcome to the Ultimate Funny Show"
echo "======================================"

# Function to check command
run_if_exists() {
    if command -v "$1" >/dev/null 2>&1; then
        echo "👉 Running: $1"
        eval "$2"
        echo "--------------------------------------"
    else
        echo "⚠️  $1 not installed. Install with: sudo apt install $3 -y"
    fi
}

# 1. sl (Steam Locomotive)
run_if_exists sl "sl" "sl"

# 2. cowsay + fortune
if command -v cowsay >/dev/null 2>&1 && command -v fortune >/dev/null 2>&1; then
    fortune | cowsay
    echo "--------------------------------------"
fi

# 3. cmatrix (Matrix effect for 3s)
(run_if_exists cmatrix "cmatrix -u 5 -C green & sleep 3; kill \$!" "cmatrix")

# 4. figlet / toilet
run_if_exists figlet "figlet 'Linux Fun'" "figlet"
run_if_exists toilet "toilet 'Ubuntu Rocks!'" "toilet"

# 5. oneko (cat chasing cursor, 5s demo)
(run_if_exists oneko "oneko & sleep 5; kill \$!" "oneko")

# 6. nyancat (3s demo)
(run_if_exists nyancat "nyancat & sleep 3; kill \$!" "nyancat")

# 7. rev
echo "🔁 Reversed text: $(echo 'Linux is awesome!' | rev)"
echo "--------------------------------------"

# 8. factor
echo "🤓 Prime factors of 123456:"
factor 123456
echo "--------------------------------------"

# 9. yes (5 times only to avoid spam)
echo "🔂 Yes command demo:"
yes "I love Linux" | head -n 5
echo "--------------------------------------"

# 10. espeak (Talking computer)
run_if_exists espeak "espeak 'Dipak, you are awesome!'" "espeak"

# 11. lolcat
if command -v lolcat >/dev/null 2>&1; then
    echo "🌈 Rainbow text:"
    echo "Linux is Fun!" | lolcat
    echo "--------------------------------------"
fi

# 12. asciiquarium (Aquarium for 5s)
(run_if_exists asciiquarium "asciiquarium & sleep 5; kill \$!" "asciiquarium")

# 13. pipes.sh
(run_if_exists pipes.sh "pipes.sh -t 5 -p 5 & sleep 5; kill \$!" "pipes.sh")

# 14. boxes
if command -v boxes >/dev/null 2>&1; then
    echo "Hello Dipak" | boxes -d cat
    echo "--------------------------------------"
fi

# 15. ponysay
run_if_exists ponysay "ponysay 'Linux is Magic!'" "ponysay"

# 16. bb (ASCII demo scene)
(run_if_exists bb "bb -color -bold & sleep 5; kill \$!" "bb")

# 17. aafire
(run_if_exists aafire "aafire & sleep 5; kill \$!" "libaa-bin")

# 18. xcowsay
(run_if_exists xcowsay "xcowsay 'Dipak rocks!' & sleep 5; kill \$!" "xcowsay")

# 19. hollywood (demo 5s)
(run_if_exists hollywood "hollywood & sleep 5; killall hollywood" "hollywood")

# 20. cacafire (demo 5s)
(run_if_exists cacafire "cacafire & sleep 5; kill \$!" "libcaca-utils")

# 21. Star Wars in ASCII
echo "🎬 ASCII Star Wars (Ctrl+C to quit)"
echo "telnet towel.blinkenlights.nl"
echo "--------------------------------------"

echo "======================================"
echo " ✅ Funny Linux Show Finished!"
echo "======================================"

