
#while :; do echo $RANDOM  && sleep 5; done
#echo $RANDOM
#echo $(($RANDOM % 50))


#start match game
#declare varibles

#Text coloring
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

if [[ -z $1 ]]; then 
echo ""
echo "${RED}You must choose an opperator. ex: sh flashCards.sh add${NC}"
echo ""
fi



function addition() {
num1=$(echo $(($RANDOM % 50)))
num2=$(echo $(($RANDOM % 50)))
sum=$(echo $((${num1} + ${num2})))

function easyMode() {
    echo "Do you want cheat mode?" && read -r -p  "[y/n] " input
    case $input in
    [yY][eE][sS] | [yY])
        echo ""
        echo "${GREEN}Hint ${sum}${NC}" 
        ;;
    [nN][oO] | [nN])
        #no easy
        echo ""
        ;;
    *)
        echo ""
        exit 1
        ;;
    esac
}

easyMode

echo "What is ${num1} + ${num2}?" && read answer



if [[ ${answer} == ${sum} ]]; then
    echo "${GREEN}Correct${NC}"
    score+=(1)
    total=${#score[@]}
    echo "Your score is " ${total}
else
    echo "${RED}Wrong${NC}"
    total=${#score[@]}
    echo ""
    echo "Thank you for playing!"
    echo "Your final score is " ${GREEN}${total}${NC}
    echo ""
    exit
fi

    addition
}
function subtraction() {
num1=$(echo $(($RANDOM % 50)))
num2=$(echo $(($RANDOM % 50)))




if [[ ${num1} -gt ${num2} ]]; then
    sum=$(echo $((${num1} - ${num2})))

    function easyMode() {
    echo "Do you want cheat mode?" && read -r -p  "[y/n] " input
    case $input in
    [yY][eE][sS] | [yY])
        echo ""
        echo "${GREEN}Hint ${sum}${NC}" 
        ;;
    [nN][oO] | [nN])
        #no easy
        echo ""
        ;;
    *)
        echo ""
        exit 1
        ;;
    esac
}

easyMode

    echo "What is ${num1} - ${num2}?" && read answer
else
    sum=$(echo $((${num2} - ${num1})))

    function easyMode() {
    echo "Do you want cheat mode?" && read -r -p  "[y/n] " input
    case $input in
    [yY][eE][sS] | [yY])
        echo ""
        echo "${GREEN}Hint ${sum}${NC}" 
        ;;
    [nN][oO] | [nN])
        #no easy
        echo ""
        ;;
    *)
        echo ""
        exit 1
        ;;
    esac
}

easyMode

    echo "What is ${num2} - ${num1}?" && read answer
fi






if [[ ${answer} == ${sum} ]]; then
    echo "${GREEN}Correct${NC}"
    score+=(1)
    total=${#score[@]}
    echo "Your score is " ${total}
else
    echo "${RED}Wrong${NC}"
    total=${#score[@]}
    echo ""
    echo "Thank you for playing!"
    echo "Your final score is " ${GREEN}${total}${NC}
    echo ""
    exit
fi

    subtraction
}
function multiply() {
num1=$(echo $(($RANDOM % 12)))
num2=$(echo $(($RANDOM % 12)))
sum=$(echo $((${num1} * ${num2})))

function easyMode() {
    echo "Do you want cheat mode?" && read -r -p  "[y/n] " input
    case $input in
    [yY][eE][sS] | [yY])
        echo ""
        echo "${GREEN}Hint ${sum}${NC}" 
        ;;
    [nN][oO] | [nN])
        #no easy
        echo ""
        ;;
    *)
        echo ""
        exit 1
        ;;
    esac
}

easyMode

echo "What is ${num1} * ${num2}?" && read answer

if [[ ${answer} == ${sum} ]]; then
    echo "${GREEN}Correct${NC}"
    score+=(1)
    total=${#score[@]}
    echo "Your score is " ${total}
else
    echo "${RED}Wrong${NC}"
    total=${#score[@]}
    echo ""
    echo "Thank you for playing!"
    echo "Your final score is " ${GREEN}${total}${NC}
    echo ""
    exit
fi

    multiply
}
function divide() {
num1=$(echo $(($RANDOM % 50)))
num2=$(echo $(($RANDOM % 5)))
sum=$(echo $((${num1} / ${num2})))

function easyMode() {
    echo "Do you want cheat mode?" && read -r -p  "[y/n] " input
    case $input in
    [yY][eE][sS] | [yY])
        echo ""
        echo "${GREEN}Hint ${sum}${NC}" 
        ;;
    [nN][oO] | [nN])
        #no easy
        echo ""
        ;;
    *)
        echo ""
        exit 1
        ;;
    esac
}

easyMode

echo "What is ${num1} / ${num2}?" && read answer

if [[ ${answer} == ${sum} ]]; then
    echo "${GREEN}Correct${NC}"
    score+=(1)
    total=${#score[@]}
    echo "Your score is " ${total}
else
    echo "${RED}Wrong${NC}"
    total=${#score[@]}
    echo ""
    echo "Thank you for playing!"
    echo "Your final score is " ${GREEN}${total}${NC}
    echo ""
    exit
fi

    divide
}



case ${1} in
    add)
        addition
        ;;
    sub)
        subtraction
        ;;
    mult)
        multiply
        ;;
    div)
        divide
        ;;
esac

case ${2} in
    Y)
        easyMode
        ;;
esac




