*SECTION III
*Estimate the effect of changes in the money supply on price level. 
*using equation (5) 

clear

 use "/Users/christina_lawrence1/Desktop/Econometrics Paper/Romer/moneysupplydatabymonth.dta"


sort year monthnum, stable
tsmktim datevar, start(1966m1)

 
 *create 48 lags of money supply growth

 . gen sam2lag1 = l.sam2
 . gen sam2lag2 = l2.sam2
 . gen sam2lag3 = l3.sam2
 . gen sam2lag4 = l4.sam2
 . gen sam2lag5 = l5.sam2
 . gen sam2lag6 = l6.sam2
 . gen sam2lag7 = l7.sam2
 . gen sam2lag8 = l8.sam2
 . gen sam2lag9 = l9.sam2
 . gen sam2lag10 = l10.sam2
 . gen sam2lag11 = l11.sam2
 . gen sam2lag12 = l12.sam2
 . gen sam2lag13 = l13.sam2
 . gen sam2lag14 = l14.sam2 
 . gen sam2lag15 = l15.sam2
 . gen sam2lag16 = l16.sam2
 . gen sam2lag17 = l17.sam2
 . gen sam2lag18 = l18.sam2
 . gen sam2lag19 = l19.sam2
 . gen sam2lag20 = l20.sam2
 . gen sam2lag21 = l21.sam2
 . gen sam2lag22 = l22.sam2
 . gen sam2lag23 = l23.sam2
 . gen sam2lag24 = l24.sam2
 . gen sam2lag25 = l25.sam2
 . gen sam2lag26 = l26.sam2
 . gen sam2lag27 = l27.sam2
 . gen sam2lag28 = l28.sam2
 . gen sam2lag29 = l29.sam2
 . gen sam2lag30 = l30.sam2
 . gen sam2lag31 = l31.sam2
 . gen sam2lag32 = l32.sam2
 . gen sam2lag33 = l33.sam2
 . gen sam2lag34 = l34.sam2
 . gen sam2lag35 = l35.sam2
 . gen sam2lag36 = l36.sam2
 . gen sam2lag37 = l37.sam2
 . gen sam2lag38 = l38.sam2
 . gen sam2lag39 = l39.sam2
 . gen sam2lag40 = l40.sam2
 . gen sam2lag41 = l41.sam2
 . gen sam2lag42 = l42.sam2
 . gen sam2lag43 = l43.sam2
 . gen sam2lag44 = l44.sam2
 . gen sam2lag45 = l45.sam2
 . gen sam2lag46 = l46.sam2
 . gen sam2lag47 = l47.sam2
 . gen sam2lag48 = l48.sam2
 
   
 
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

 *equation 5
 
 . reg pcppinsa d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 sam2lag1 sam2lag2 sam2lag3 sam2lag4 sam2lag5 sam2lag6 sam2lag7 sam2lag8 sam2lag9 sam2lag10 sam2lag11 sam2lag12 sam2lag13 sam2lag14 sam2lag15 sam2lag16 sam2lag17 sam2lag18 sam2lag19 sam2lag20 sam2lag21 sam2lag22 sam2lag23 sam2lag24 sam2lag25 sam2lag26 sam2lag27 sam2lag28 sam2lag29 sam2lag30 sam2lag31 sam2lag32 sam2lag33 sam2lag34 sam2lag35 sam2lag36 sam2lag37 sam2lag38 sam2lag39 sam2lag40 sam2lag41 sam2lag42 sam2lag43 sam2lag44 sam2lag45 sam2lag46 sam2lag47 sam2lag48 pcppinsalag1 pcppinsalag2 pcppinsalag3 pcppinsalag4 pcppinsalag5 pcppinsalag6 pcppinsalag7 pcppinsalag8 pcppinsalag9 pcppinsalag10 pcppinsalag11 pcppinsalag12 pcppinsalag13 pcppinsalag14 pcppinsalag15 pcppinsalag16 pcppinsalag17 pcppinsalag18 pcppinsalag19 pcppinsalag20 pcppinsalag21 pcppinsalag22 pcppinsalag23 pcppinsalag24
  
 
 
 
 
 
 
 
