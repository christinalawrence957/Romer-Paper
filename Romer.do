clear
use "/Users/christina_lawrence1/Desktop/Econometrics Paper/Romer/RomerDataByMeeting.dta"

*for sunday - double check these
*change date back to string
 *tostring mtgdate, generate(mtgdate2)
*. gen year = substr( mtgdate2 ,-2,2)
*destring year, replace
* egen monthyear = concat(month year)

. regress dtarg oldtarg graym gray0 gray1 gray2 igrym igry0 igry1 igry2 gradm grad0 grad1 grad2 igrdm igrd0 igrd1 igrd2 grau0 if year>68 & year<97 
*this one is getting close. Maybe take out 1969 quarters 1-2


*. regress dffmtg oldtarg graym gray0 gray1 gray2 igrym igry0 igry1 igry2 gradm grad0 grad1 grad2 igrdm igrd0 igrd1 igrd2 grau0 if mtgdate>


