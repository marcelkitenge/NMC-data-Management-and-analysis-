
global DATA ="/Users/marcelkitenge/Documents/WHO Consultancy/WHO Meetings and documents/WCO/IDSR/Weekly IDSR Report/NMC data"
global TEMPO="/Users/marcelkitenge/Documents/WHO Consultancy/WHO Meetings and documents/WCO/IDSR/Weekly IDSR Report"


**** 1. Rabies ****

import excel "$DATA/Cases_Export_2024112536_Rabies_1.xlsx", sheet("Cases") firstrow clear
sort Notification_Date
br Notification_Date Condition

save "$DATA/Rabies.dta", replace


**** 2. Acute Flaccid Paralysis ****

import excel "$DATA/Cases_Export_202411256_Acute Flaccid Paralysis_1.xlsx", sheet("Cases") firstrow clear

sort Notification_Date
br Notification_Date

save "$DATA/AFP.dta", replace


**** 3. Respiratory Illness caused by novel respiratory ****

import excel "$DATA/Cases_Export_2024112538_Respiratory disease caused by a novel respiratory pathogen_1.xlsx", sheet("Cases") firstrow clear

sort Notification_Date
br Condition Notification_Date

save "$DATA/Resp Illness.dta", replace


**** 4. Cholera ****

import excel "$DATA/Cases_Export_2024112513_Cholera_1.xlsx", sheet("Cases") firstrow clear

count

duplicates report Case_ID
duplicates list Case_ID
sort Case_ID

duplicates tag Case_ID , gen(TAG)
tab TAG // 

browse Case_ID TAG if TAG>=1
count if TAG>=1 // 

duplicates drop Case_ID, force
count 

sort Notification_Date
br Notification_Date Condition
sort Notification_Date

save "$DATA/Cholera.dta", replace


**** 5. Rubella ****

import excel "$DATA/Cases_Export_2024112540_Rubella_1.xlsx", sheet("Cases") firstrow clear

count

duplicates report Case_ID
duplicates list Case_ID
sort Case_ID

duplicates tag Case_ID , gen(TAG)
tab TAG // 

browse Case_ID TAG if TAG>=1
count if TAG>=1 // 

duplicates drop Case_ID, force
count 

sort Notification_Date
br Notification_Date Condition

save "$DATA/Rubella.dta", replace


**** 6. Malaria ****

import excel "$DATA/Cases_Export_2024112541_Malaria_1.xlsx", sheet("Cases") firstrow clear

count

duplicates report Case_ID
duplicates list Case_ID
sort Case_ID

duplicates tag Case_ID , gen(TAG)
tab TAG // 4298 unique identifier

browse Case_ID TAG if TAG>=1
count if TAG>=1 // 80 duplicates

duplicates drop Case_ID, force
count 

sort Notification_Date
br Notification_Date Condition

save "$DATA/Malaria.dta", replace

**** 7. Measles ****

import excel "$DATA/Cases_Export_2024112550_Measles_1.xlsx", sheet("Cases") firstrow clear

count

duplicates report Case_ID
duplicates list Case_ID
sort Case_ID

duplicates tag Case_ID , gen(TAG)
tab TAG // 4298 unique identifier

browse Case_ID TAG if TAG>=1
count if TAG>=1 // 80 duplicates

duplicates drop Case_ID, force
count 

sort Notification_Date
br Condition Notification_Date

save "$DATA/Measles.dta", replace

**** 8. Meningococcal Disease ****

import excel "$DATA/Cases_Export_202411252_Meningococcal Disease_1.xlsx", sheet("Cases") firstrow clear
count 

sort Notification_Date
br Condition Notification_Date

save "$DATA/Mening_Disease.dta", replace

**** 9. Pertussis ****

import excel "$DATA/Cases_Export_2024112534_Pertussis_1.xlsx", sheet("Cases") firstrow clear
count 

sort Notification_Date
br Notification_Date Condition

save "$DATA/Pertussis.dta", replace


**** 10.COVID-19 ****

import excel "$DATA/Cases_Export_2024112546_COVID_19_1.xlsx", sheet("Cases") firstrow clear

count 

duplicates report Case_ID
duplicates list Case_ID
sort Case_ID

duplicates tag Case_ID , gen(TAG)
tab TAG // 4298 unique identifier

browse Case_ID TAG if TAG>=1
count if TAG>=1 // 80 duplicates

duplicates drop Case_ID, force
count 

sort Notification_Date
br Notification_Date Condition

save "$DATA/COVID-19.dta", replace


**** 11.Diphtheria ****

import excel "$DATA/Cases_Export_2024112552_Diphtheria_1.xlsx", sheet("Cases") firstrow clear
count 

sort Notification_Date
br Notification_Date Condition

save "$DATA/Diphtheria.dta", replace


**** 12.Enteric Fever ****

import excel "$DATA/Cases_Export_2024112558_Enteric fever (typhoid or paratyphoid fever)_1.xlsx", sheet("Cases") firstrow clear
count 

sort Notification_Date
br Notification_Date Condition
save "$DATA/Enteric Fever.dta", replace

**** 13. Listeriosis ****

import excel "$DATA/Cases_Export_2024112533_Listeriosis_1.xlsx", sheet("Cases") firstrow clear
count 

sort Notification_Date
br Notification_Date Condition

save "$DATA/listeriosis.dta", replace

**** 14. FBI ****

import excel "$DATA/Cases_Export_2024112530_Food borne illness outbreak_1.xlsx", sheet("Cases") firstrow clear
count 

duplicates report Case_ID
duplicates list Case_ID
sort Case_ID

duplicates tag Case_ID , gen(TAG)
tab TAG // 4298 unique identifier

browse Case_ID TAG if TAG>=1
count if TAG>=1 // 80 duplicates

duplicates drop Case_ID, force
count 

sort Notification_Date
br Notification_Date Condition
save "$DATA/FBI.dta", replace

**** 15. Congenital Rubella Syndrom****

import excel "$DATA/Cases_Export_2024112521_Congenital rubella syndrome_1.xlsx", sheet("Cases") firstrow clear
count

duplicates report Case_ID
duplicates list Case_ID
sort Case_ID

duplicates tag Case_ID , gen(TAG)
tab TAG // 4298 unique identifier

browse Case_ID TAG if TAG>=1
count if TAG>=1 // 80 duplicates

duplicates drop Case_ID, force
count 

sort Notification_Date
br Notification_Date Condition

save "$DATA/Cong_Rubella.dta", replace


**** 16. Acute Rheumatic Fever ****

import excel "$DATA/Cases_Export_202411257_Acute Rheumatic Fever_1.xlsx", sheet("Cases") firstrow clear
count 

sort Notification_Date
br Notification_Date Condition
save "$DATA/ARF.dta", replace

**** 17. Plague ****

import excel "$DATA/Cases_Export_2024112535_Plague_1.xlsx", sheet("Cases") firstrow clear
count 

sort Notification_Date
br Notification_Date Condition
save "$DATA/Plague.dta", replace


**** 18. Haemolytic uraemic syndrom ****

import excel "$DATA/Cases_Export_2024112531_Haemolytic uraemic syndrome (HUS)_1.xlsx", sheet("Cases") firstrow clear
count 

sort Notification_Date
br Notification_Date Condition
save "$DATA/HUS.dta", replace

**** 19. Crimean Congo viral ****

import excel "$DATA/Cases_Export_2024112549_Crimean_Congo viral haemorrhagic fever (human)_1.xlsx", sheet("Cases") firstrow clear
count 

sort Notification_Date
br Notification_Date Condition
save "$DATA/Crimean.dta", replace

**** 20. Mpox ****

import excel "$DATA/Cases_Export_2024112513_Mpox_1.xlsx", sheet("Cases") firstrow clear
count 

duplicates report Case_ID
duplicates list Case_ID
sort Case_ID

duplicates tag Case_ID , gen(TAG)
tab TAG // 18 unique identifier

browse Case_ID TAG if TAG>=1
count if TAG>=1 // 22 duplicates

duplicates drop Case_ID, force
count 

sort Notification_Date
br Notification_Date Condition
save "$DATA/Mpox.dta", replace


**** 21. Botulism ****

import excel "$DATA/Cases_Export_202411257_Botulism_1.xlsx", sheet("Cases") firstrow clear
count 

sort Notification_Date
br Notification_Date Condition
save "$DATA/Botulism.dta", replace

	
************* Appending Different Databases *********

use "$DATA/Rabies.dta", clear 

append using "$DATA/Malaria.dta" , force
tab Province Condition

append using "$DATA/AFP.dta" , force
tab Province Condition

append using "$DATA/Resp Illness.dta" , force
tab Province Condition

append using "$DATA/Cholera.dta" , force
tab Province Condition

append using "$DATA/Rubella.dta" , force
tab Province Condition

append using "$DATA/Measles.dta" , force
tab Province Condition

append using "$DATA/Mening_Disease.dta", force
tab Condition 

append using "$DATA/Pertussis.dta", force
tab Condition 

append using "$DATA/COVID-19.dta", force
tab Condition 

append using "$DATA/Diphtheria.dta", force
tab Condition 

append using "$DATA/Enteric Fever.dta", force
tab Condition 

append using "$DATA/Listeriosis.dta", force
tab Condition 

append using "$DATA/Cong_Rubella.dta", force
tab Condition 

append using "$DATA/FBI.dta", force
tab Condition 

append using "$DATA/ARF.dta", force
tab Condition

append using "$DATA/Plague.dta", force
tab Condition

append using "$DATA/HUS.dta", force
tab Condition

append using "$DATA/Crimean.dta", force
tab Condition

append using "$DATA/Mpox.dta", force
tab Condition

append using "$DATA/Botulism.dta", force
tab Condition

count 


destring Patient_Age, replace force

*** Processing Data ***

gen DOB=date(Patient_DOB,"YMD")
format DOB %td

gen AgeatNotif=.
replace AgeatNotif=(( Notification_Date- DOB)/365.25) 
format AgeatNotif %1.0f

gen AgeGroup=.
replace AgeGroup=1 if AgeatNotif<5
replace AgeGroup=2 if AgeatNotif>=5
label define AgeGroup 1"<5yrs" 2"5yrs & Above"
label values AgeGroup AgeGroup
label variable AgeGroup "Age Group"

tab AgeGroup, missing 

*** Epidemiological Classification ***
tab Epidemiological_Classification

gen EpiClassif=. 
replace EpiClassif=1 if Epidemiological_Classification=="Clinical notification" | Epidemiological_Classification=="Suspected Case" | Epidemiological_Classification=="Suspected case" |  Epidemiological_Classification=="Probable case" | Epidemiological_Classification=="Discarded case"
replace EpiClassif=2 if Epidemiological_Classification=="Laboratory notification" | Epidemiological_Classification=="Confirmed case"
//replace EpiClassif=. if Epidemiological_Classification=="Discarded case"

label define EpiClassif 1"Suspected Cases" 2"Lab Confirmed Cases"
label values EpiClassif EpiClassif

tab EpiClassif, missing 
tab EpiClassif Epidemiological_Classification

bysort AgeGroup: tab EpiClassif Province


keep CaseID Condition Epidemiological_Classification Facility Facility_Sector District Sub_District Province Symptom_Date Diagnosis_Date Diagnosis_Method Notification_Date DOB AgeatNotif Patient_Gender Patient_Vital_Status Patient_Death_Date AgeGroup EpiClassif

*** Genrating EpiWeek ***

gen year_Notif=year(Notification_Date)
gen month_Notif=month(Notification_Date)

epiweek Notification_Date, epiw(epi_week) epiy(epi_year) 
egen wy = concat(epi_year epi_week), p(w)
epiweek2 wy, s(from) e(to)


save "$DATA/linelist_combined.dta", replace

levelsof Province, local(levels)
	foreach l of local levels{
		export excel "$DATA/Province.xlsx" ///
			if Province == "`l'", sheet("`l'") firstrow (variables) sheetreplace
	}
	

use "$DATA/linelist_combined.dta", clear	

export excel using "$DATA/NMC National.xls", firstrow(variables) replace

	
noi{
***** END OF PROGRAM  **** 
}

use "$DATA/linelist_combined.dta", replace

gen suspeted=.
replace suspeted=1 if EpiClassif==1
tab suspeted, m

gen Confirmed=.
replace Confirmed=1 if EpiClassif==2
tab Confirmed, m
 
tab Confirmed
tab Confirmed suspeted,m 

drop if suspeted==. & Confirmed==.

collapse (count)suspeted Confirmed, by(epi_week District Condition Province epi_year)
br

/* epi_week wy

rename wy EpiWeek
generate Country="South Africa"
generate Deaths=0
*/

rename Confirmed Confirmed_cases
rename suspeted number_of_cases
rename Condition disease
rename epi_week week_number
rename epi_year week_year
rename District district
gen number_of_deaths=. 
gen Country="South Africa"

sort Province week_number
order week_year week_number Country Province district disease number_of_cases number_of_deaths Confirmed_cases

export excel week_year week_number Country Province district disease number_of_cases number_of_deaths Confirmed_cases using "$DATA/Weekly IDSR.xls", firstrow(variables) replace

save "$DATA/Weekly IDSR_25.dta", replace


use "$DATA/Weekly IDSR.dta", clear 
bysort district: keep if _n==1
count 

*** List to Provinces ***

use "$DATA/Weekly IDSR.dta", clear 

global EpiWeek_2024Begin= 1
global EpiWeek_2024Last= 14

set more off
tabout Disease Suspected_Cases using "$TEMPO\tempo.txt" ///
	if EpiWeek_2024 == $EpiWeek_2024Last & Province == "Western Cape" /// 
	, mi format(0) replace 
insheet using "$TEMPO\tempo.txt", clear
br



