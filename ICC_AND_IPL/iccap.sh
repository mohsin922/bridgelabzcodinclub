read -p "Enter Your Fav Team Here " team
MATCHED_PLAYED=5
win=0
lose=0
points=0
indiaTeam=("kholi" "rohit" "bumrah")
nzTeam=("williamson" "taylor" "boult")
declare -A pakTeam
pakTeam[captain]="babar"
pakTeam[batsman]="rizwan"
pakTeam[bowler]="Afridi"
function captain() {
         echo $1 is a captain of $2
}


function batsman() {
         echo $1 is a batsman of $2
}


function bowler() {
         echo $1 is a bowler of $2
}
function rolesAndResponsibility() {


         if [ $1 == 'nz' ]
         then
             for item in ${nzTeam[@]}
             do
                 if [ $item == 'williamson' ]
                 then
                     captain $item $1
                 elif [ $item == 'taylor' ]
                 then
                     batsman $item $1
                 else
                     bowler $item $1
                 fi


             done
         elif [ $1 == 'ind' ]
          then
             for item in ${indiaTeam[@]}
             do
                 if [ $item == 'kholi' ]
                 then
                     captain $item $1
                 elif [ $item == 'rohit' ]
                 then
                     batsman $item $1
                 else
                     bowler $item $1
                 fi
             done
	elif [ $1 == 'pak' ]
          then
             for item in ${pakTeam[@]}
             do
                 if [ $item == 'babar' ]
                 then
                     captain $item $1
                 elif [ $item == 'rizwan' ]
                 then
                     batsman $item $1
                 else
                     bowler $item $1
                 fi
             done	
	
         else
             echo "Your Given Input is Invalid , Please check Again :("
         fi




}


function iccWorldCup() {


         echo "Team name is : $2"
         echo "Matches Faced : $MATCHED_PLAYED"
         echo "Won : $1"
         lose=$(($MATCHED_PLAYED-$1))
         echo "Lose : $lose"
         points=$(($1*2))
         echo "Points : $points"
         rolesAndResponsibility $2


}


case $team in
   pak)
      win=5
      iccWorldCup $win $team
      ;;
   ind)
      win=3
      iccWorldCup $win $team
      ;;
   nz)
      win=4
      iccWorldCup $win $team
      ;;
   nam)
      win=1
      iccWorldCup $win $team
      ;;
   sco)
      win=0
      iccWorldCup $win $team
      ;;
   afg)
      win=2
      iccWorldCup $win $team
      ;;
   *)


     ;;
esac