clear

 use "/Users/christina_lawrence1/Desktop/Econometrics Paper/Romer/RomerDataByMonth.dta"
*need to format year and month as date try in excel

sort year monthnum, stable
tsmktim datevar, start(1966m1)

 *SECTION II pg. 1068
 *create 48 lags of monetary policy measure


 . gen RESIDlag1 = l.resid
 . gen RESIDlag2 = l2.resid
 . gen RESIDlag3 = l3.resid
 . gen RESIDlag4 = l4.resid
 . gen RESIDlag5 = l5.resid
 . gen RESIDlag6 = l6.resid
 . gen RESIDlag7 = l7.resid
 . gen RESIDlag8 = l8.resid
 . gen RESIDlag9 = l9.resid
 . gen RESIDlag10 = l10.resid
 . gen RESIDlag11 = l11.resid
 . gen RESIDlag12 = l12.resid
 . gen RESIDlag13 = l13.resid
 . gen RESIDlag14 = l14.resid 
 . gen RESIDlag15 = l15.resid
 . gen RESIDlag16 = l16.resid
 . gen RESIDlag17 = l17.resid
 . gen RESIDlag18 = l18.resid
 . gen RESIDlag19 = l19.resid
 . gen RESIDlag20 = l20.resid
 . gen RESIDlag21 = l21.resid
 . gen RESIDlag22 = l22.resid
 . gen RESIDlag23 = l23.resid
 . gen RESIDlag24 = l24.resid
 . gen RESIDlag25 = l25.resid
 . gen RESIDlag26 = l26.resid
 . gen RESIDlag27 = l27.resid
 . gen RESIDlag28 = l28.resid
 . gen RESIDlag29 = l29.resid
 . gen RESIDlag30 = l30.resid
 . gen RESIDlag31 = l31.resid
 . gen RESIDlag32 = l32.resid
 . gen RESIDlag33 = l33.resid
 . gen RESIDlag34 = l34.resid
 . gen RESIDlag35 = l35.resid
 . gen RESIDlag36 = l36.resid
 . gen RESIDlag37 = l37.resid
 . gen RESIDlag38 = l38.resid
 . gen RESIDlag39 = l39.resid
 . gen RESIDlag40 = l40.resid
 . gen RESIDlag41 = l41.resid
 . gen RESIDlag42 = l42.resid
 . gen RESIDlag43 = l43.resid
 . gen RESIDlag44 = l44.resid
 . gen RESIDlag45 = l45.resid
 . gen RESIDlag46 = l46.resid
 . gen RESIDlag47 = l47.resid
 . gen RESIDlag48 = l48.resid
 
   
 
 *create 24 lags of output growth
 . gen PPIlag1 = l.PPI
 . gen PPIlag2 = l2.PPI
 . gen PPIlag3 = l3.PPI
 . gen PPIlag4 = l4.PPI
 . gen PPIlag5 = l5.PPI
 . gen PPIlag6 = l6.PPI
 . gen PPIlag7 = l7.PPI
 . gen PPIlag8 = l8.PPI
 . gen PPIlag9 = l9.PPI
 . gen PPIlag10 = l10.PPI
 . gen PPIlag11 = l11.PPI
 . gen PPIlag12 = l12.PPI
 . gen PPIlag13 = l13.PPI
 . gen PPIlag14 = l14.PPI 
 . gen PPIlag15 = l15.PPI
 . gen PPIlag16 = l16.PPI
 . gen PPIlag17 = l17.PPI
 . gen PPIlag18 = l18.PPI
 . gen PPIlag19 = l19.PPI
 . gen PPIlag20 = l20.PPI
 . gen PPIlag21 = l21.PPI
 . gen PPIlag22 = l22.PPI
 . gen PPIlag23 = l23.PPI
 . gen PPIlag24 = l24.PPI
 
 
 *create monthly dummy variables
 *gen d1=1 if monthnum==1
 *gen d2=1 if monthnum==2
 *gen d3=1 if monthnum==3
 *gen d4=1 if monthnum==4
 *gen d5=1 if monthnum==5
 *gen d6=1 if monthnum==6
 *gen d7=1 if monthnum==7
 *gen d8=1 if monthnum==8
 *gen d9=1 if monthnum==9
 *gen d10=1 if monthnum==10
 *gen d11=1 if monthnum==11
 
 
 *equation 3
 
 . reg PPI d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 ///
 PPIlag1 PPIlag2 PPIlag3 PPIlag4 PPIlag5 PPIlag6 PPIlag7 PPIlag8 PPIlag9 PPIlag10 PPIlag11 ///
 PPIlag12 PPIlag13 PPIlag14 PPIlag15 PPIlag16 PPIlag17 PPIlag18 PPIlag19 PPIlag20 PPIlag21 PPIlag22 ///
 PPIlag23 PPIlag24 ///
 RESIDlag1 RESIDlag2 RESIDlag3 RESIDlag4 RESIDlag5 RESIDlag6 RESIDlag7 RESIDlag8 ///
 RESIDlag9 RESIDlag10 RESIDlag11 RESIDlag12 RESIDlag13 RESIDlag14 RESIDlag15 RESIDlag16 RESIDlag17 RESIDlag18 ///
 RESIDlag19 RESIDlag20 RESIDlag21 RESIDlag22 RESIDlag23 RESIDlag24 RESIDlag25 RESIDlag26 RESIDlag27 RESIDlag28 ///
 RESIDlag29 RESIDlag30 RESIDlag31 RESIDlag32 RESIDlag33 RESIDlag34 RESIDlag35 RESIDlag36 RESIDlag37 RESIDlag38 ///
 RESIDlag39 RESIDlag40 RESIDlag41 RESIDlag42 RESIDlag43 RESIDlag44 RESIDlag45 RESIDlag46 RESIDlag47 RESIDlag48 ///
 if year>69 & year<97

  
 
 
 
 
 
 
 
