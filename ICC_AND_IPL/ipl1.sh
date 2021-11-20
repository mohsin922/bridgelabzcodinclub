read -p "Enter Your Fav Team Here " team
MATCHED_PLAYED=14
win=0
lose=0
points=0
position=0
function ipl() {


         echo "Team name is : $2"
         echo "Matches Faced : $MATCHED_PLAYED"
         echo "Won : $1"
         lose=$(($MATCHED_PLAYED-$1))
         echo "Lose : $lose"
         points=$(($1*2))
         echo "Points : $points"
         echo "Position of team : $position "
       if [ $position -lt 4 ];
       then
                echo "Team is eligible for  Playoffs"
       else
                echo "Team is out of Playoffs"
       fi
}
if [ $team == CSK ]
then
        win=9
	position=2
        ipl $win $team 
elif [ $team == DC ]
then
	position=1
        win=10
        ipl $win $team
elif [ $team == RCB ]
then
	position=3
        win=9
        ipl $win $team
elif [ $team == KKR ]
then
	position=4
        win=7
        ipl $win $team
elif [ $team == MI ]
then
	position=5
        win=7
        ipl $win $team
elif [ $team == PBKS ]
then
	position=6
        win=6
        ipl $win $team
elif [ $team == RR ]
then
	position=7
        win=5
        ipl $win $team
elif [ $team == SRH ]
then
	position=8
        win=3
        ipl $win $team 
else
	echo "Invalid team"
fi

