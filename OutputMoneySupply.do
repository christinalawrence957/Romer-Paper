*SECTION III
*Estimate the effect of changes in the money supply on the log of industrial production. 
*using equation (4) 

clear

 use "/Users/christina_lawrence1/Desktop/Econometrics Paper/Romer/moneysupplydatabymonth.dta"


sort year monthnum, stable
tsmktim datevar, start(1966m1)

 
 *create 48 lags of money supply growth

 . gen dlsam2lag1 = l.dlsam2
 . gen dlsam2lag2 = l2.dlsam2
 . gen dlsam2lag3 = l3.dlsam2
 . gen dlsam2lag4 = l4.dlsam2
 . gen dlsam2lag5 = l5.dlsam2
 . gen dlsam2lag6 = l6.dlsam2
 . gen dlsam2lag7 = l7.dlsam2
 . gen dlsam2lag8 = l8.dlsam2
 . gen dlsam2lag9 = l9.dlsam2
 . gen dlsam2lag10 = l10.dlsam2
 . gen dlsam2lag11 = l11.dlsam2
 . gen dlsam2lag12 = l12.dlsam2
 . gen dlsam2lag13 = l13.dlsam2
 . gen dlsam2lag14 = l14.dlsam2 
 . gen dlsam2lag15 = l15.dlsam2
 . gen dlsam2lag16 = l16.dlsam2
 . gen dlsam2lag17 = l17.dlsam2
 . gen dlsam2lag18 = l18.dlsam2
 . gen dlsam2lag19 = l19.dlsam2
 . gen dlsam2lag20 = l20.dlsam2
 . gen dlsam2lag21 = l21.dlsam2
 . gen dlsam2lag22 = l22.dlsam2
 . gen dlsam2lag23 = l23.dlsam2
 . gen dlsam2lag24 = l24.dlsam2
 *. gen dlsam2lag25 = l25.dlsam2
 *. gen dlsam2lag26 = l26.dlsam2
 *. gen dlsam2lag27 = l27.dlsam2
 *. gen dlsam2lag28 = l28.dlsam2
 *. gen dlsam2lag29 = l29.dlsam2
 *. gen dlsam2lag30 = l30.dlsam2
 *. gen dlsam2lag31 = l31.dlsam2
 *. gen dlsam2lag32 = l32.dlsam2
 *. gen dlsam2lag33 = l33.dlsam2
 *. gen dlsam2lag34 = l34.dlsam2
 *. gen dlsam2lag35 = l35.dlsam2
 *. gen dlsam2lag36 = l36.dlsam2
 *. gen dlsam2lag37 = l37.dlsam2
 *. gen dlsam2lag38 = l38.dlsam2
 *. gen dlsam2lag39 = l39.dlsam2
 *. gen dlsam2lag40 = l40.dlsam2
 *. gen dlsam2lag41 = l41.dlsam2
 *. gen dlsam2lag42 = l42.dlsam2
 *. gen dlsam2lag43 = l43.dlsam2
 *. gen dlsam2lag44 = l44.dlsam2
 *. gen dlsam2lag45 = l45.dlsam2
 *. gen dlsam2lag46 = l46.dlsam2
 *. gen dlsam2lag47 = l47.dlsam2
 *. gen dlsam2lag48 = l48.dlsam2
 
   
 
 *create 24 lags of output growth
 . gen pcipnsalag1 = l.pcipnsa
 . gen pcipnsalag2 = l2.pcipnsa
 . gen pcipnsalag3 = l3.pcipnsa
 . gen pcipnsalag4 = l4.pcipnsa
 . gen pcipnsalag5 = l5.pcipnsa
 . gen pcipnsalag6 = l6.pcipnsa
 . gen pcipnsalag7 = l7.pcipnsa
 . gen pcipnsalag8 = l8.pcipnsa
 . gen pcipnsalag9 = l9.pcipnsa
 . gen pcipnsalag10 = l10.pcipnsa
 . gen pcipnsalag11 = l11.pcipnsa
 . gen pcipnsalag12 = l12.pcipnsa
 . gen pcipnsalag13 = l13.pcipnsa
 . gen pcipnsalag14 = l14.pcipnsa
 . gen pcipnsalag15 = l15.pcipnsa
 . gen pcipnsalag16 = l16.pcipnsa
 . gen pcipnsalag17 = l17.pcipnsa
 . gen pcipnsalag18 = l18.pcipnsa
 . gen pcipnsalag19 = l19.pcipnsa
 . gen pcipnsalag20 = l20.pcipnsa
 . gen pcipnsalag21 = l21.pcipnsa
 . gen pcipnsalag22 = l22.pcipnsa
 . gen pcipnsalag23 = l23.pcipnsa
 . gen pcipnsalag24 = l24.pcipnsa
 
 
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
 
 *equation 4
 
 . reg pcipnsa d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11  dlsam2lag1 dlsam2lag2 dlsam2lag3 dlsam2lag4 dlsam2lag5 dlsam2lag6 dlsam2lag7 dlsam2lag8 dlsam2lag9 dlsam2lag10 dlsam2lag11 dlsam2lag12 dlsam2lag13 dlsam2lag14 dlsam2lag15 dlsam2lag16 dlsam2lag17 dlsam2lag18 dlsam2lag19 dlsam2lag20 dlsam2lag21 dlsam2lag22 dlsam2lag23 dlsam2lag24 pcipnsalag1 pcipnsalag2 pcipnsalag3 pcipnsalag4 pcipnsalag5 pcipnsalag6 pcipnsalag7 pcipnsalag8 pcipnsalag9 pcipnsalag10 pcipnsalag11 pcipnsalag12 pcipnsalag13 pcipnsalag14 pcipnsalag15 pcipnsalag16 pcipnsalag17 pcipnsalag18 pcipnsalag19 pcipnsalag20 pcipnsalag21 pcipnsalag22 pcipnsalag23 pcipnsalag24
  *dlsam2lag25 dlsam2lag26 dlsam2lag27 dlsam2lag28 dlsam2lag29 dlsam2lag30 dlsam2lag31 dlsam2lag32 dlsam2lag33 dlsam2lag34 dlsam2lag35 dlsam2lag36 dlsam2lag37 dlsam2lag38 dlsam2lag39 dlsam2lag40 dlsam2lag41 dlsam2lag42 dlsam2lag43 dlsam2lag44 dlsam2lag45 dlsam2lag46 dlsam2lag47 dlsam2lag48 

test dlsam2lag1
test dlsam2lag2
test dlsam2lag3
test dlsam2lag4
test dlsam2lag5
test dlsam2lag6
test dlsam2lag7
test dlsam2lag8
test dlsam2lag9
test dlsam2lag10
test dlsam2lag11
test dlsam2lag12
test dlsam2lag13
test dlsam2lag14
test dlsam2lag15
test dlsam2lag16
test dlsam2lag17
test dlsam2lag18
test dlsam2lag19
test dlsam2lag20
test dlsam2lag21
test dlsam2lag22
test dlsam2lag23
test dlsam2lag24
*test dlsam2lag25
*test dlsam2lag26
*test dlsam2lag27
*test dlsam2lag28
*test dlsam2lag29
*test dlsam2lag30
*test dlsam2lag31
*test dlsam2lag32
*test dlsam2lag33
*test dlsam2lag34
*test dlsam2lag35
*test dlsam2lag36
*test dlsam2lag37
*test dlsam2lag38
*test dlsam2lag39
*test dlsam2lag40
*test dlsam2lag41
*test dlsam2lag42
*test dlsam2lag43
*test dlsam2lag44
*test dlsam2lag45
*test dlsam2lag46
*test dlsam2lag47
*test dlsam2lag48
  
test (dlsam2lag1 + dlsam2lag2 = 0)
test (dlsam2lag1 + dlsam2lag2 + dlsam2lag3 = 0)
test (dlsam2lag1 + dlsam2lag2 + dlsam2lag3 + dlsam2lag4 = 0)
test (dlsam2lag1 + dlsam2lag2 + dlsam2lag3 + dlsam2lag4 + dlsam2lag5 = 0)
test (dlsam2lag1 + dlsam2lag2 + dlsam2lag3 + dlsam2lag4 + dlsam2lag5 + dlsam2lag6 = 0)
test (dlsam2lag1 + dlsam2lag2 + dlsam2lag3 + dlsam2lag4 + dlsam2lag5 + dlsam2lag6 + dlsam2lag7 = 0)
test (dlsam2lag1 + dlsam2lag2 + dlsam2lag3 + dlsam2lag4 + dlsam2lag5 + dlsam2lag6 + dlsam2lag7 + dlsam2lag8 = 0)
test (dlsam2lag1 + dlsam2lag2 + dlsam2lag3 + dlsam2lag4 + dlsam2lag5 + dlsam2lag6 + dlsam2lag7 + dlsam2lag8 + dlsam2lag9 = 0)
test (dlsam2lag1 + dlsam2lag2 + dlsam2lag3 + dlsam2lag4 + dlsam2lag5 + dlsam2lag6 + dlsam2lag7 + dlsam2lag8 + dlsam2lag9 + dlsam2lag10 = 0)
 
  . test dlsam2lag1 dlsam2lag2 dlsam2lag3 dlsam2lag4 dlsam2lag5 dlsam2lag6 dlsam2lag7 dlsam2lag8 dlsam2lag9 ///
dlsam2lag10 dlsam2lag11 dlsam2lag12 dlsam2lag13 dlsam2lag14 dlsam2lag15 dlsam2lag16 dlsam2lag17 ///
dlsam2lag18 dlsam2lag19 dlsam2lag20 dlsam2lag21 dlsam2lag22 dlsam2lag23 dlsam2lag24 

*dlsam2lag25 dlsam2lag26 ///
*dlsam2lag27 dlsam2lag28 dlsam2lag29 dlsam2lag30 dlsam2lag31 dlsam2lag32 dlsam2lag33 dlsam2lag34 dlsam2lag35 ///
*dlsam2lag36 dlsam2lag37 dlsam2lag38 dlsam2lag39 dlsam2lag40 dlsam2lag41 dlsam2lag42 dlsam2lag43 dlsam2lag44 ///
*dlsam2lag45 dlsam2lag46 dlsam2lag47 dlsam2lag48

