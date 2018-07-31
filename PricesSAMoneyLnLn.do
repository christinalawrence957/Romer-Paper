*SECTION III
*Estimate the effect of changes in the money supply on price level. 
*using equation (5) 

clear

 use "/Users/christina_lawrence1/Desktop/Econometrics Paper/Romer/moneysupplydatabymonth.dta"


sort year monthnum, stable
tsmktim datevar, start(1966m1)

 
 *create 48 lags of money supply growth

 . gen lsam2lag1 = l.lsam2
 . gen lsam2lag2 = l2.lsam2
 . gen lsam2lag3 = l3.lsam2
 . gen lsam2lag4 = l4.lsam2
 . gen lsam2lag5 = l5.lsam2
 . gen lsam2lag6 = l6.lsam2
 . gen lsam2lag7 = l7.lsam2
 . gen lsam2lag8 = l8.lsam2
 . gen lsam2lag9 = l9.lsam2
 . gen lsam2lag10 = l10.lsam2
 . gen lsam2lag11 = l11.lsam2
 . gen lsam2lag12 = l12.lsam2
 . gen lsam2lag13 = l13.lsam2
 . gen lsam2lag14 = l14.lsam2 
 . gen lsam2lag15 = l15.lsam2
 . gen lsam2lag16 = l16.lsam2
 . gen lsam2lag17 = l17.lsam2
 . gen lsam2lag18 = l18.lsam2
 . gen lsam2lag19 = l19.lsam2
 . gen lsam2lag20 = l20.lsam2
 . gen lsam2lag21 = l21.lsam2
 . gen lsam2lag22 = l22.lsam2
 . gen lsam2lag23 = l23.lsam2
 . gen lsam2lag24 = l24.lsam2
 *. gen lsam2lag25 = l25.lsam2
 *. gen lsam2lag26 = l26.lsam2
 *. gen lsam2lag27 = l27.lsam2
 *. gen lsam2lag28 = l28.lsam2
 *. gen lsam2lag29 = l29.lsam2
 *. gen lsam2lag30 = l30.lsam2
 *. gen lsam2lag31 = l31.lsam2
 *. gen lsam2lag32 = l32.lsam2
 *. gen lsam2lag33 = l33.lsam2
 *. gen lsam2lag34 = l34.lsam2
 *. gen lsam2lag35 = l35.lsam2
 *. gen lsam2lag36 = l36.lsam2
 *. gen lsam2lag37 = l37.lsam2
 *. gen lsam2lag38 = l38.lsam2
 *. gen lsam2lag39 = l39.lsam2
 *. gen lsam2lag40 = l40.lsam2
 *. gen lsam2lag41 = l41.lsam2
 *. gen lsam2lag42 = l42.lsam2
 *. gen lsam2lag43 = l43.lsam2
 *. gen lsam2lag44 = l44.lsam2
 *. gen lsam2lag45 = l45.lsam2
 *. gen lsam2lag46 = l46.lsam2
 *. gen lsam2lag47 = l47.lsam2
 *. gen lsam2lag48 = l48.lsam2

 
   
 
 *create 24 lags of price level
 . gen pcppinsalag1 = l.pcppinsa
 . gen pcppinsalag2 = l2.pcppinsa
 . gen pcppinsalag3 = l3.pcppinsa
 . gen pcppinsalag4 = l4.pcppinsa
 . gen pcppinsalag5 = l5.pcppinsa
 . gen pcppinsalag6 = l6.pcppinsa
 . gen pcppinsalag7 = l7.pcppinsa
 . gen pcppinsalag8 = l8.pcppinsa
 . gen pcppinsalag9 = l9.pcppinsa
 . gen pcppinsalag10 = l10.pcppinsa
 . gen pcppinsalag11 = l11.pcppinsa
 . gen pcppinsalag12 = l12.pcppinsa
 . gen pcppinsalag13 = l13.pcppinsa
 . gen pcppinsalag14 = l14.pcppinsa
 . gen pcppinsalag15 = l15.pcppinsa
 . gen pcppinsalag16 = l16.pcppinsa
 . gen pcppinsalag17 = l17.pcppinsa
 . gen pcppinsalag18 = l18.pcppinsa
 . gen pcppinsalag19 = l19.pcppinsa
 . gen pcppinsalag20 = l20.pcppinsa
 . gen pcppinsalag21 = l21.pcppinsa
 . gen pcppinsalag22 = l22.pcppinsa
 . gen pcppinsalag23 = l23.pcppinsa
 . gen pcppinsalag24 = l24.pcppinsa
 
 
  *create monthly dummy variables
 gen d1=1 if monthnum==1
 gen d2=1 if monthnum==2
 gen d3=1 if monthnum==3
 gen d4=1 if monthnum==4
 gen d5=1 if monthnum==5
 gen d6=1 if monthnum==6
 gen d7=1 if monthnum==7
 gen d8=1 if monthnum==8
 gen d9=1 if monthnum==9
 gen d10=1 if monthnum==10
 gen d11=1 if monthnum==11
replace d1 = 0 if missing(d1)
replace d2 = 0 if missing(d2)
replace d3 = 0 if missing(d3)
replace d4 = 0 if missing(d4)
replace d5 = 0 if missing(d5)
replace d6 = 0 if missing(d6)
replace d7 = 0 if missing(d7)
replace d8 = 0 if missing(d8)
replace d9 = 0 if missing(d9)
replace d10 = 0 if missing(d10)
replace d11 = 0 if missing(d11) 

 *equation 7
 
 . reg pcppinsa d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 lsam2lag1 lsam2lag2 lsam2lag3 lsam2lag4 lsam2lag5 lsam2lag6 lsam2lag7 lsam2lag8 lsam2lag9 lsam2lag10 lsam2lag11 lsam2lag12 lsam2lag13 lsam2lag14 lsam2lag15 lsam2lag16 lsam2lag17 lsam2lag18 lsam2lag19 lsam2lag20 lsam2lag21 lsam2lag22 lsam2lag23 lsam2lag24  pcppinsalag1 pcppinsalag2 pcppinsalag3 pcppinsalag4 pcppinsalag5 pcppinsalag6 pcppinsalag7 pcppinsalag8 pcppinsalag9 pcppinsalag10 pcppinsalag11 pcppinsalag12 pcppinsalag13 pcppinsalag14 pcppinsalag15 pcppinsalag16 pcppinsalag17 pcppinsalag18 pcppinsalag19 pcppinsalag20 pcppinsalag21 pcppinsalag22 pcppinsalag23 pcppinsalag24
 *lsam2lag25 lsam2lag26 lsam2lag27 lsam2lag28 lsam2lag29 lsam2lag30 lsam2lag31 lsam2lag32 lsam2lag33 lsam2lag34 lsam2lag35 lsam2lag36 lsam2lag37 lsam2lag38 lsam2lag39 lsam2lag40 lsam2lag41 lsam2lag42 lsam2lag43 lsam2lag44 lsam2lag45 lsam2lag46 lsam2lag47 lsam2lag48 
  
 test lsam2lag1
test lsam2lag2
test lsam2lag3
test lsam2lag4
test lsam2lag5
test lsam2lag6
test lsam2lag7
test lsam2lag8
test lsam2lag9
test lsam2lag10
test lsam2lag11
test lsam2lag12
test lsam2lag13
test lsam2lag14
test lsam2lag15
test lsam2lag16
test lsam2lag17
test lsam2lag18
test lsam2lag19
test lsam2lag20
test lsam2lag21
test lsam2lag22
test lsam2lag23
test lsam2lag24
*test lsam2lag25
*test lsam2lag26
*test lsam2lag27
*test lsam2lag28
*test lsam2lag29
*test lsam2lag30
*test lsam2lag31
*test lsam2lag32
*test lsam2lag33
*test lsam2lag34
*test lsam2lag35
*test lsam2lag36
*test lsam2lag37
*test lsam2lag38
*test lsam2lag39
*test lsam2lag40
*test lsam2lag41
*test lsam2lag42
*test lsam2lag43
*test lsam2lag44
*test lsam2lag45
*test lsam2lag46
*test lsam2lag47
*test lsam2lag48
  
test (lsam2lag1 + lsam2lag2 = 0)
test (lsam2lag1 + lsam2lag2 + lsam2lag3 = 0)
test (lsam2lag1 + lsam2lag2 + lsam2lag3 + lsam2lag4 = 0)
test (lsam2lag1 + lsam2lag2 + lsam2lag3 + lsam2lag4 + lsam2lag5 = 0)
test (lsam2lag1 + lsam2lag2 + lsam2lag3 + lsam2lag4 + lsam2lag5 + lsam2lag6 = 0)
test (lsam2lag1 + lsam2lag2 + lsam2lag3 + lsam2lag4 + lsam2lag5 + lsam2lag6 + lsam2lag7 = 0)
test (lsam2lag1 + lsam2lag2 + lsam2lag3 + lsam2lag4 + lsam2lag5 + lsam2lag6 + lsam2lag7 + lsam2lag8 = 0)
test (lsam2lag1 + lsam2lag2 + lsam2lag3 + lsam2lag4 + lsam2lag5 + lsam2lag6 + lsam2lag7 + lsam2lag8 + lsam2lag9 = 0)
test (lsam2lag1 + lsam2lag2 + lsam2lag3 + lsam2lag4 + lsam2lag5 + lsam2lag6 + lsam2lag7 + lsam2lag8 + lsam2lag9 + lsam2lag10 = 0)
 
  . test lsam2lag1 lsam2lag2 lsam2lag3 lsam2lag4 lsam2lag5 lsam2lag6 lsam2lag7 lsam2lag8 lsam2lag9 ///
lsam2lag10 lsam2lag11 lsam2lag12 lsam2lag13 lsam2lag14 lsam2lag15 lsam2lag16 lsam2lag17 ///
lsam2lag18 lsam2lag19 lsam2lag20 lsam2lag21 lsam2lag22 lsam2lag23 lsam2lag24

* lsam2lag25 lsam2lag26 ///
*lsam2lag27 lsam2lag28 lsam2lag29 lsam2lag30 lsam2lag31 lsam2lag32 lsam2lag33 lsam2lag34 lsam2lag35 ///
*lsam2lag36 lsam2lag37 lsam2lag38 lsam2lag39 lsam2lag40 lsam2lag41 lsam2lag42 lsam2lag43 lsam2lag44 ///
*lsam2lag45 lsam2lag46 lsam2lag47 lsam2lag48

 
 
 
 
 
 
 
