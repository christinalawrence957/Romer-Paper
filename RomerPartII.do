clear

 use "/Users/christina_lawrence1/Desktop/Econometrics Paper/Romer/RomerDataByMonth.dta"
*need to format year and month as date try in excel

sort year monthnum, stable
tsmktim datevar, start(1966m1)

 *SECTION II pg. 1068
 *create 36 lags of monetary policy measure
 *need to format column "date" as date

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
   
 
 *create 24 lags of output growth
 . gen prodlag1 = l.prod
 . gen prodlag2 = l2.prod
 . gen prodlag3 = l3.prod
 . gen prodlag4 = l4.prod
 . gen prodlag5 = l5.prod
 . gen prodlag6 = l6.prod
 . gen prodlag7 = l7.prod
 . gen prodlag8 = l8.prod
 . gen prodlag9 = l9.prod
 . gen prodlag10 = l10.prod
 . gen prodlag11 = l11.prod
 . gen prodlag12 = l12.prod
 . gen prodlag13 = l13.prod
 . gen prodlag14 = l14.prod 
 . gen prodlag15 = l15.prod
 . gen prodlag16 = l16.prod
 . gen prodlag17 = l17.prod
 . gen prodlag18 = l18.prod
 . gen prodlag19 = l19.prod
 . gen prodlag20 = l20.prod
 . gen prodlag21 = l21.prod
 . gen prodlag22 = l22.prod
 . gen prodlag23 = l23.prod
 . gen prodlag24 = l24.prod
 
 
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
 *gen d12=1 if monthnum==12
 
 *equation 2
 
 . reg prod d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 ///
 prodlag1 prodlag2 prodlag3 prodlag4 prodlag5 prodlag6 prodlag7 prodlag8 prodlag9 prodlag10 prodlag11 ///
 prodlag12 prodlag13 prodlag14 prodlag15 prodlag16 prodlag17 prodlag18 prodlag19 prodlag20 prodlag21 prodlag22 ///
 prodlag23 prodlag24 ///
 RESIDlag1 RESIDlag2 RESIDlag3 RESIDlag4 RESIDlag5 RESIDlag6 RESIDlag7 RESIDlag8 ///
 RESIDlag9 RESIDlag10 RESIDlag11 RESIDlag12 RESIDlag13 RESIDlag14 RESIDlag15 RESIDlag16 RESIDlag17 RESIDlag18 ///
 RESIDlag19 RESIDlag20 RESIDlag21 RESIDlag22 RESIDlag23 RESIDlag24 RESIDlag25 RESIDlag26 RESIDlag27 RESIDlag28 ///
 RESIDlag29 RESIDlag30 RESIDlag31 RESIDlag32 RESIDlag33 RESIDlag34 RESIDlag35 RESIDlag36 if year>69 & year<97

  
 
 
 
 
 
 
 
