#Simon Quirk August 2017
#Syntax to create plotly graphics and upload them to plotly site
#Sections starting with an A until an I.

############################.
##Packages, functions and plot parameters----
############################.
source("./plotly_chart_functions.r")

############################.
##Asthma ----
############################.

multiline(filepath="Asthma/asthma_mortality_chart1", 
          xvar="class2", yvar="measure", group="class1", pal_col=palbysexoverall,
          title="Chart 1. Deaths due to asthma, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/vital-events-reference-tables'>NRS</a>", 
          xaxtitle="Year", yaxtitle="Number of deaths")

multiline(filepath="Asthma/asthma_seccare_sex_chart1", 
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 1. First hospitalisations with asthma,<br> by gender, Scotland", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses'>SMR01, ISD Scotland</a>; ICD10 codes: J45 & J46", 
          xaxtitle="Financial year", yaxtitle="Age-sex standarized rate per 100,000")

#Legend overlay in plotly
multiline(filepath="Asthma/asthma_seccare_agesex_chart2", 
          xvar="class2", yvar="measure", group="class1", pal_col=pal2bysex,
          title="Chart 2. First hospitalisations with asthma,<br> by age and gender, Scotland", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses'>SMR01, ISD Scotland</a>; ICD10 codes: J45 & J46", 
          xaxtitle="Financial year", yaxtitle="Age-sex standarized rate per 100,000")

############################.
##Cancer ----
############################.

#Breast cancer
oneline(filepath="Cancer/Breast Cancer - Introduction Chart 2", 
        xvar="class1", yvar="measure", 
        title="Chart 2. Mean age of women at birth of first child, Scotland", 
        sourc="<a href='http://www.isdscotland.org/Health-Topics/Maternity-and-Births/Births'>ISD Scotland</a>", 
        xaxtitle="Year", yaxtitle="Mean age at first birth")

oneline(filepath="Cancer/Breast Cancer Chart 1", 
        xvar="class1", yvar="measure", 
        title="Chart 1. Female breast cancer incidence, Scotland", 
        sourc="<a href='http://www.isdscotland.org/Health-Topics/Cancer/Cancer-Statistics/Breast'>ISD Scotland</a>", 
        xaxtitle="Year", yaxtitle="Age-sex standarized rate per 100,000")

oneline(filepath="Cancer/Breast Cancer Chart 2", 
        xvar="class1", yvar="measure", 
        title="Chart 1. Female breast cancer mortality, Scotland", 
        sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/vital-events-reference-tables'>NRS</a>; ICD10 code: C50", 
        xaxtitle="Year", yaxtitle="Age-sex standardised rate per 100,000")

#Colorectal cancer
multiline(filepath="Cancer/Colorectal Cancer Chart 1", 
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 1. Colorectal cancer incidence, Scotland", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Cancer/Cancer-Statistics/Colorectal'>ISD Scotland</a>; ICD10 codes: C18-C20", 
          xaxtitle="Year", yaxtitle="Age-sex standardised rate per 100,000")

multiline(filepath="Cancer/Colorectal Cancer Chart 2", 
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 2. Colorectal cancer mortality, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/vital-events-reference-tables'>NRS</a>; ICD10 codes: C18-C20", 
          xaxtitle="Year", yaxtitle="Age-sex standardised rate per 100,000")

#Lung cancer
multiline(filepath="Cancer/Lung Cancer Chart 1", 
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 1. Lung cancer incidence, Scotland", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Cancer/Cancer-Statistics/Lung-Cancer-and-Mesothelioma'>SCR, ISD Scotland</a>; ICD10 codes: C33 & C34", 
          xaxtitle="Year", yaxtitle="Age-sex standardised rate per 100,000")

multiline(filepath="Cancer/Lung Cancer Chart 2", 
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 2. Lung cancer mortality, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/vital-events-reference-tables'>NRS</a>; ICD10 codes: C33 & C34", 
          xaxtitle="Year", yaxtitle="Age-sex standardised rate per 100,000")

#Prostate cancer
oneline(filepath="Cancer/Prostate Cancer Chart 1", 
        xvar="class1", yvar="measure", 
        title="Chart 1. Prostate cancer incidence, Scotland", 
        sourc="<a href='http://www.isdscotland.org/Health-Topics/Cancer/Cancer-Statistics/Male-Genital-Organs'>SCR, ISD Scotland</a>. ICD10 code: C61", 
        xaxtitle="Year", yaxtitle="Age-sex standardised rate per 100,000")

oneline(filepath="Cancer/Prostate Cancer Chart 2", 
        xvar="class1", yvar="measure", 
        title="Chart 1. Prostate cancer mortality, Scotland", 
        sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/vital-events-reference-tables'>NRS</a>; ICD10 code: C61", 
        xaxtitle="Year", yaxtitle="Age-sex standardised rate per 100,000")

############################.
##CHD ----
############################.

barcompar(filepath="CHD/chd_international_chart1", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 1. CHD death rates for selected<br>countries in the world. Men aged 35-74 years, 2000", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Heart-Disease/Topic-Areas/Mortality'>NRS/ISD Scotland</a> <a href='http://www.who.int/cardiovascular_diseases/resources/atlas/en/'>British Heart Foundation/WHO Atlas of Heart Disease and Stroke</a>", 
          xaxtitle='Country', yaxtitle="Age standardised rate per 100,000 ")

barcompar(filepath="CHD/chd_international_chart2", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 2. CHD death rates for selected<br>countries in the world. Women aged 35-74 years, 2000", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Heart-Disease/Topic-Areas/Mortality'>NRS/ISD Scotland</a> <a href='http://www.who.int/cardiovascular_diseases/resources/atlas/en/'>British Heart Foundation/WHO Atlas of Heart Disease and Stroke</a>", 
          xaxtitle='Country', yaxtitle="Age standardised rate per 100,000")

############################.
##Children ----
############################.
multibar(filepath="Children/children_pop_chart1", 
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 1. Estimated population, Scotland, mid 2016", 
         sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-estimates/mid-year-population-estimates'>NRS</a>", 
         xaxtitle='Age (years)', yaxtitle="Population")

#Class names are other way round from other data files.
multiline(filepath="Children/children_poverty_chart1", 
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 1. Child poverty, absolute and relative<br>after housing costs, Scotland", 
          sourc="<a href='https://www.gov.uk/government/collections/households-below-average-income-hbai--2'>HBAI, DWP</a>", 
          xaxtitle="Financial year", yaxtitle="Percentage")


############################.
##Chronic Liver Disease ----
############################.
#Mortality
multiline(filepath="Chronic Liver Disease/CLD_mortality_gender_rate_Chart1", 
          xvar="class2", yvar="measure", group="class1", pal_col=palbysexoverall,
          title="Chart 1. Chronic liver disease mortality<br> by gender, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths'>NRS</a>", 
          xaxtitle="Year of death registration", yaxtitle="Age-sex standardised rate per 100,000")

multiline(filepath="Chronic Liver Disease/CLD_mortality_age_rate_Chart2", 
          xvar="class2", yvar="measure", group="class1", pal_col=pal_cldmortage,
          title="Chart 2. Chronic liver disease mortality by age group, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths'>NRS</a>", 
          xaxtitle="Year of death registration", yaxtitle="Age-sex standardised rate per 100,000")

multiline(filepath="Chronic Liver Disease/CLD_mortality_conditions_rate_Chart3", 
          xvar="class2", yvar="measure", group="class1", pal_col=palalccondition,
          title="Chart 3. Chronic liver disease mortality by condition, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths'>NRS</a>", 
          xaxtitle="Year of death registration", yaxtitle="Age-sex standardised rate per 100,000")

multiline(filepath="Chronic Liver Disease/CLD_mortality_simd_rate_Chart4", 
          xvar="class2", yvar="measure", group="class1", pal_col=pal_simd,
          title="Chart 4. Chronic liver disease mortality<br> by SIMD decile, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths'>NRS</a>", 
          xaxtitle="Year of death registration", yaxtitle="Age-sex standardised rate per 100,000")

#Morbidity
multiline(filepath="Chronic Liver Disease/CLD_morbidity_gender_rate_Chart1", 
          xvar="class2", yvar="measure", group="class1", pal_col=palbysexoverall,
          title="Chart 1. Chronic liver disease morbidity<br>by gender, Scotland ", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses'>SMR01, ISD Scotland</a>", 
          xaxtitle="Financial year of discharge", yaxtitle="Age-sex standardised rate per 100,000")

multiline(filepath="Chronic Liver Disease/CLD_morbidity_age_rate_Chart2", 
          xvar="class2", yvar="measure", group="class1", pal_col=pal_cldmorbage,
          title="Chart 2. Chronic liver disease morbidity by age group, Scotland", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses'>SMR01, ISD Scotland</a>", 
          xaxtitle="Financial year of discharge", yaxtitle="Age-sex standardised rate per 100,000")

multiline(filepath="Chronic Liver Disease/CLD_morbidity_conditions_rate_Chart3", 
          xvar="class2", yvar="measure", group="class1", pal_col=palalccondition,
          title="Chart 1. Chronic liver disease morbidity<br>by condition, Scotland", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses'>SMR01, ISD Scotland</a>", 
          xaxtitle="Financial year of discharge", yaxtitle="Age-sex standardised rate per 100,000")

multiline(filepath="Chronic Liver Disease/CLD_morbidity_simd_rate_Chart4", 
          xvar="class2", yvar="measure", group="class1", pal_col=pal_simd2,
          title="Chart 4. Chronic liver disease morbidity<br>by SIMD deciles, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths'>NRS</a>", 
          xaxtitle="Financial year of discharge", yaxtitle="Age-sex standardised rate per 100,000")

############################.
##Community Wellbeing ----
############################.
#Neighbourhood staisfaction
oneline(filepath="Community Wellbeing/communitywellbeing_neighbourhoodsatisfaction_chart1", 
        xvar="class1", yvar="measure", 
        title="Chart 1. Adults (aged 16 plus) who rate their neighbourhood<br> as a very good place to live, Scotland, 2015", 
        sourc="<a href='http://www.gov.scot/Topics/Statistics/16002/PublicationAnnual'>SHS</a>", 
        xaxtitle="Year", yaxtitle="Percentage")

barcompar(filepath="Community Wellbeing/communitywellbeing_neighbourhoodsatisfaction_chart2", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 2. Adults (aged 16 plus) who rate their neighbourhood<br> as a very good place to live by council, 2015", 
          sourc="<a href='http://www.gov.scot/Topics/Statistics/16002/PublicationAnnual'>SHS</a>", 
          xaxtitle='Council', yaxtitle="Percentage")

barcompar(filepath="Community Wellbeing/communitywellbeing_neighbourhoodsatisfaction_chart3", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 3. Adults (aged 16 plus) who rate their neighbourhood<br> as a very good place to live by SIMD decile, Scotland, 2015", 
          sourc="<a href='http://www.gov.scot/Topics/Statistics/16002/PublicationAnnual'>SHS</a>", 
          xaxtitle='SIMD decile', yaxtitle="Percentage")

barcompar(filepath="Community Wellbeing/communitywellbeing_neighbourhoodsatisfaction_chart4", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 4. Adults (aged 16 plus) who rate their neighbourhood<br>as a very good place to live, Scotland, 2015", 
          sourc="<a href='http://www.gov.scot/Topics/Statistics/16002/PublicationAnnual'>SHS</a>", 
          xaxtitle='Urban-Rural classification', yaxtitle="Percentage")

#Trust
barcompar(filepath="Community Wellbeing/communitywellbeing_trust_chart1", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 1. Adults (aged 16 plus) who believe that most people<br>can be trusted, Scotland, 2013/15", 
          sourc="<a href='http://www.gov.scot/Topics/Statistics/16002/PublicationAnnual'>SHS</a>", 
          xaxtitle='SIMD quintile', yaxtitle="Percentage")

barcompar(filepath="Community Wellbeing/communitywellbeing_trust_chart2", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 2. Adults (aged 16 plus) who believe that most people<br>in their neighbourhood can be trusted, Scotland, 2013/15", 
          sourc="<a href='http://www.gov.scot/Topics/Statistics/16002/PublicationAnnual'>SHS</a>. Excludes people who have just moved to the area.", 
          xaxtitle='SIMD quintile', yaxtitle="Percentage")

############################.
##COPD ----
############################.
#Primary care
multibar(filepath="COPD/COPD_Primary_care_chart_1", 
         xvar="class1", yvar="measure", group="class2", pal = palnogroups,
         title="Chart 1. COPD prevalence, Scotland, 2012/13", 
         sourc="<a href='http://www.isdscotland.org/Health-Topics/General-Practice/GP-Consultations/Health-Conditions/COPD'>PTI, ISD</a>. Number consulting a GP or Practice Nurse at least once during the year", 
         xaxtitle='Age group', yaxtitle="Prevalence per 1,000 population<br> (deprivation standardised)")

stackedbar(filepath="COPD/COPD_Primary_care_chart_2", 
           xvar="class2", yvar="measure", group="class1", pal = palnogroups,
           title="Chart 2. Estimated number of primary care<br>consultations related to COPD, Scotland", 
           sourc="<a href='http://www.isdscotland.org/Health-Topics/General-Practice/GP-Consultations/Health-Conditions/COPD'>PTI, ISD</a>", 
           xaxtitle="Financial year", yaxtitle="Number of consultations")

#Secondary care
multiline (filepath="COPD/COPD_Secondary Care - Chart 1", 
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 1. Incidence of COPD, excluding bronchiectasis, Scotland", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses/'>SMR01, ISD</a>. ICD10 Codes:J40-J44, ICD9 Codes:490-492, 496", 
          xaxtitle="Financial year", yaxtitle="Age-sex standardised rate of <br>new cases per 100,000")

multiline (filepath="COPD/COPD_Secondary Care - Chart 2", 
           xvar="class2", yvar="measure", group="class1", pal_col=pal3bysex,
           title="Chart 2. Incidence of COPD, Scotland", 
           sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses/'>SMR01, ISD</a>ICD10 Codes:J45-J46, ICD9 Codes:493", 
           xaxtitle="Financial year", yaxtitle="Age-sex standardised rate of <br>new cases per 100,000 per year")

#Mortality
multiline (filepath="COPD/COPD_Mortality_Chart_1", 
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 1. Mortality rate for COPD by gender, Scotland", 
           sourc="<a href='http://www.isdscotland.org/index.asp'>ISD</a>. ICD10 Codes: J40-J44, ICD9 Codes: 490-492, 496", 
           xaxtitle="Year", yaxtitle="Age-sex standardised rate per 100,000")

#Deprivation
multibar(filepath="COPD/COPD_deprivation_Chart_1", 
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 1. COPD admissions in males, Scotland, 2015/16", 
         sourc="<a href='http://www.isdscotland.org/Health-Topics/General-Practice/GP-Consultations/Health-Conditions/COPD'>PTI, ISD</a>. ICD10 Codes: J40-J44", 
         xaxtitle='SIMD quintile', yaxtitle="Age-sex standardised rate per 100,000")

multibar(filepath="COPD/COPD_deprivation_Chart_2", 
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 2. COPD admissions in females, Scotland, 2015/16", 
         sourc="<a href='http://www.isdscotland.org/Health-Topics/General-Practice/GP-Consultations/Health-Conditions/COPD'>PTI, ISD</a>. ICD10 Codes: J40-J44", 
         xaxtitle='SIMD quintile', yaxtitle="Age-sex standardised rate per 100,000")

#NHS board
barcompar(filepath="COPD/COPD - NHS Board data - Chart 1", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 1. COPD prevalence rate per 100 patients<br>registered with a GP Practice, 2015/16", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/General-Practice/Quality-And-Outcomes-Framework/2010-11/Register-and-prevalence-data.asp'>QOF, ISD Scotland</a>. Practices with new GMS contracts", 
          xaxtitle='NHS Board', yaxtitle="Crude prevalence rate per 100 patients")

barcompar(filepath="COPD/COPD - NHS Board data - Chart 2", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 2. Hospital admissions <br>with COPD (main diagnosis), 2015/16", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses/'>SMR01, ISD Scotland</a>. ", 
          xaxtitle='NHS Board', yaxtitle="Age-sex standardised rate per 100,000 ")

#Smoking
multiline(filepath="COPD/COPD_Smoking_chart_1", 
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 1. Prevalence of current smoking among adults, UK", 
          sourc="<a href='https://data.gov.uk/dataset/general_household_survey'>Tobacco Advisory Council/General Household Survey</a>", 
          xaxtitle="Year", yaxtitle="Prevalence")

multiline(filepath="COPD/COPD_Smoking_chart_2", 
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 3. Smoking rates by gender, Scotland", 
          sourc="<a href='https://data.gov.uk/dataset/general_household_survey'>General Household Survey</a>", 
          xaxtitle="Year", yaxtitle="Percentage who are current smokers")

#International
onebar(filepath="COPD/COPD_International - Chart 1", 
       xvar="class1", yvar="measure", 
       title="Chart 1. Death rates due to COPD in various industrialised<br>countries, Males", 
       sourc="<a href='http://www.who.int/healthinfo/mortality_data/en/'>WHO Mortality Database</a>, extracted October 2016", 
       xaxtitle='Country', yaxtitle="Rate per 100,000")

onebar(filepath="COPD/COPD_International - Chart 2", 
       xvar="class1", yvar="measure", 
       title="Chart 2. Death rates due to COPD in various industrialised<br>countries, Females", 
       sourc="<a href='http://www.who.int/healthinfo/mortality_data/en/'>WHO Mortality Database</a>, extracted October 2016", 
       xaxtitle='Country', yaxtitle="Rate per 100,000")

############################.
##Crime ----
############################.

onebar(filepath="Crime/Crime - National trends Chart 1", 
       xvar="class1", yvar="measure", 
       title="Chart 1. Crimes recorded by police, Scotland", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Crime-Justice'>Scottish Government</a>", 
       xaxtitle='Year', yaxtitle="Number")

onebar(filepath="Crime/Crime - by local authority Chart 1", 
       xvar="class1", yvar="measure", 
       title="Chart 1. Index of crime by council, 2015/16", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Crime-Justice'>Scottish Government</a>", 
       xaxtitle='Council', yaxtitle="Index of crime, Scotland = 100")

############################.
##Deaths ----
############################.
#All causes rates
#Legend overlay in plotly
multiline (filepath="Deaths/deaths-trend-allcause-chart1", 
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 1. All-cause death rates, Scotland", 
           sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/age-standardised-death-rates-calculated-using-the-esp'>NRS</a>. Rates directly age-sex standardised using the European Standard Population 2013 or 1976.", 
           xaxtitle="Year", yaxtitle="Age-sex standarized rate per 100,000")

barcompar(filepath="Deaths/deaths-allcause-byhb-chart1", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 1. All-cause death rates by NHS Board, 2014", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/age-standardised-death-rates-calculated-using-the-esp'>NRS</a>.", 
          xaxtitle='NHS Board', yaxtitle="Age-sex standarized rate per 100,000")

barcompar(filepath="Deaths/deaths-allcause-byLA-chart1", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 1. All-cause death rates by council, 2014", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/age-standardised-death-rates-calculated-using-the-esp'>NRS</a>.", 
          xaxtitle='Council', yaxtitle="Age-sex standarized rate per 100,000")

barcompar(filepath="Deaths/deaths-allcause-deprivation-chart1", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 1. All-cause death rates by deprivation decile, 2014", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/age-standardised-death-rates-calculated-using-the-esp'>NRS</a>. ", 
          xaxtitle='SIMD decile', yaxtitle="Age-sex standarized rate per 100,000")

#Top 10 causes
onebar(filepath="Deaths/deaths-top10causes-chart1", 
       xvar="class1", yvar="measure", 
       title="Chart 1. The ten most frequently occuring principal<br>causes of death, Scotland, 2012-2014", 
       sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/vital-events-reference-tables'>NRS</a>. Based on 3-digit ICD10 codes", 
       xaxtitle='Principal cause of death', yaxtitle="Percentage of all deaths")

onebar(filepath="Deaths/deaths-top10causes-chart2", 
       xvar="class1", yvar="measure", 
       title="Chart 2. The ten most frequently occuring principal causes of<br>premature death for people under 75 years, Scotland, 2012-2014", 
       sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/vital-events-reference-tables'>NRS</a>. Based on 3-digit ICD10 codes", 
       xaxtitle='Principal cause of death', yaxtitle="Percentage of all deaths under 75 ")

############################.
##Deprivation ----
############################.
onebar(filepath="Deprivation/SIMD2016_Chart1", 
       xvar="class1", yvar="measure", 
       title="Chart 1. Distribution of the 15% most deprived datazones,<br> Scotland, 2016", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/SIMD'>SIMD 2016, Scottish Government</a>", 
       xaxtitle='Council', yaxtitle="Percentage")

onebar(filepath="Deprivation/SIMD2016_Chart2", 
       xvar="class1", yvar="measure", 
       title="Chart 2. Datazones in each council within the<br>15% most health deprived in Scotland, 2016", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/SIMD'>SIMD 2016, Scottish Government</a>", 
       xaxtitle='Council', yaxtitle="Percentage")

############################.
##Diabetes ----
############################.
#secondary care
#changed place of legend in Plotly
multiline (filepath="Diabetes/diabetes_secondarycare_chart1", 
           xvar="class2", yvar="measure", group="class1", pal_col=pal2bysexoverall,
           title="Chart 1. Admissions to hospital with a <br>diagnosis of diabetes, Scotland", 
           sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses'>ISD</a>; ICD10 codes: E10, E11, E12, E13, E14", 
           xaxtitle="Financial year", yaxtitle="Number of admissions")

multiline (filepath="Diabetes/diabetes_secondarycare_chart2", 
           xvar="class2", yvar="measure", group="class1", pal_col=pal5bysex,
           title="Chart 2. Admissions to hospital with a main <br>diagnosis of diabetic ketoacidosis, Scotland", 
           sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses'>ISD</a>, ICD10 codes: E101, E111, E121, E131, E141", 
           xaxtitle="Financial year", yaxtitle="Number of admissions")

#Scottish diabetes survey
oneline (filepath="Diabetes/diabetes_survey_chart1", 
           xvar="class1", yvar="measure", 
           title="Chart 1. Prevalence of all types of diabetes, Scotland", 
           sourc="<a href='http://www.diabetesinscotland.org.uk/Publications.aspx'>Scottish Diabetes Survey</a>; ICD10 codes: E10, E11, E12, E13, E14", 
           xaxtitle="Year", yaxtitle="Crude prevalence (%)")

#NHS boards
multibar(filepath="Diabetes/diabetes_nhsboard_chart1", 
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 1. Prevalence of diabetes by health board </br>in two different sources", 
         sourc="<a href='http://www.isdscotland.org/qof'>ISD Quality & Outcomes Framework</a> & <a href='http://www.diabetesinscotland.org.uk/Publications.aspx'>Scottish Diabetes Survey</a>", 
         xaxtitle='Health Board', yaxtitle="Crude prevalence (%)")

#mortality
#changed place of legend in Plotly
multiline (filepath="Diabetes/diabetes_mortality_chart1", 
           xvar="class2", yvar="measure", group="class1", pal_col=pal2bysexoverall,
           title="Chart 1. Deaths where diabetes was recorded as the<br> underlying cause or as a contributory factor to death, Scotland", 
           sourc="<a href='http://www.isdscotland.org/index.asp'>ISD</a>; ICD10 codes: E10, E11, E12, E13, E14", 
           xaxtitle="Year", yaxtitle="Number of deaths")

#International comparison
barcompar(filepath="Diabetes/diabetes_international_chart1", 
       xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
       title="Chart 1. Estimated crude prevalence of diabetes <br>in selected countries, all ages, 2000", 
       sourc="<a href='http://www.who.int/diabetes/facts/en/diabcare0504.pdf'>WHO</a>; unpubl. figures provided by Prof. Sarah Wild from the Global Burden of Disease study", 
       xaxtitle='Country', yaxtitle="Estimated prevalence (%)")

############################.
##Diet and Nutrition ----
############################.
#Adults
multibar(filepath="Diet and Nutrition/diet_Adults - Chart 1", 
         xvar="class2", yvar="measure", group="class1", pal=palnogroups,
         title="Chart 1. Adults consuming 5 or more portions<br> of fruit and vegetables per day, Scotland, 2015", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='Age group', yaxtitle="Percentage")

onebar(filepath="Diet and Nutrition/diet_Adults - Chart 2", 
       xvar="class1", yvar="measure", 
       title="Chart 2. Adults consuming 5 or more portions<br> of fruit and vegetables per day, Scotland, 2015", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>, <a href='http://content.digital.nhs.uk/healthsurveyengland'>Health Survey for England</a>", 
       xaxtitle='SIMD quintile', yaxtitle="Percentage")

multibar(filepath="Diet and Nutrition/diet_Adults - Chart 3", 
         xvar="class2", yvar="measure", group="class1", pal=palnogroups,
         title="Chart 3. Adults consuming 5 or more portions<br> of fruit and vegetables per day, 2013", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='Age group', yaxtitle="Percentage")

#Children
multibar(filepath="Diet and Nutrition/diet_Children - Chart 1", 
         xvar="class2", yvar="measure", group="class1", pal=palnogroups,
         title="Chart 1. Children consuming 5 or more portions<br> of fruit and vegetables per day, Scotland, 2015", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='Age group', yaxtitle="Percentage")

#extending axis to 20 in plotly
multibar(filepath="Diet and Nutrition/diet_Children - Chart 2", 
         xvar="class2", yvar="measure", group="class1", pal=palnogroups,
         title="Chart 2. Children consuming 5 or more portions<br> of fruit and vegetables per day, Scotland, 2015", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='SIMD quintile', yaxtitle="Percentage")

multibar(filepath="Diet and Nutrition/diet_Children - Chart 3", 
         xvar="class2", yvar="measure", group="class1", pal=palnogroups,
         title="Chart 3. Children (aged 2-15) consuming NO portions<br>of fruit and vegetables per day, Scotland, 2015", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='SIMD quintile', yaxtitle="Percentage")

############################.
##Disability ----
############################.
oneline(filepath="Disability/Disability - ESA - Chart1Joomla", 
        xvar="class1", yvar="measure", 
        title="Chart 1. Adults claiming Employment & Support<br> Allowance or Incapacity Benefits, Scotland", 
        sourc="<a href='http://www.nomisweb.co.uk'>NOMIS</a>. Adults aged 16-64.", 
        xaxtitle="Year", yaxtitle="Percentage")

onebar(filepath="Disability/disability-LTC-chart2", 
       xvar="class1", yvar="measure", 
       title="Chart 2. Adults with a limiting long-term physical<br>or mental health condition or illness, Scotland, 2015", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/About/Surveys/SSCQ'>SSCQ, Scottish Government</a>. Adults aged 16 and over.", 
       xaxtitle='SIMD quintile', yaxtitle="Percentage")

onebar(filepath="Disability/disability-sah-chart2", 
       xvar="class1", yvar="measure", 
       title="Chart 2. Adults rating their health<br>as 'bad or very bad', Scotland, 2015", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/About/Surveys/SSCQ'>SSCQ, Scottish Government</a>. Adults aged 16 and over.", 
       xaxtitle='SIMD quintile', yaxtitle="Percentage")

############################.
##Epilepsy ----
############################.
multiline (filepath="Epilepsy/Epilepsy_incidence_deaths_Chart_1", 
           xvar="class2", yvar="measure", group="class1", pal_col=palbysexoverall,
           title="Chart 1. Deaths where epilepsy was recorded as the<br>underlying cause or a contributory factor to death, Scotland", 
           sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths'>NRS</a>. ICD10 codes: G40 and G41 thereafter, ICD9 codes: 345 up to 1999", 
           xaxtitle="Year", yaxtitle="Number of deaths")

multiline (filepath="Epilepsy/Epilepsy_incidence_sex_Chart_2", 
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 2. New cases (incidence) with a principal<br>diagnosis of epilepsy by age, Scotland", 
           sourc="<a href='http://www.isdscotland.org/index.asp'>ISD</a>. ICD10 codes: G40 and G41, ICD9 code: 345", 
           xaxtitle="Financial year", yaxtitle="Age-sex standarized rate per 100,000")

multiline (filepath="Epilepsy/Epilepsy_incidence_age_sex_Chart_3", 
           xvar="class2", yvar="measure", group="class1", pal_col=pal3bysex,
           title="Chart 3. New cases (incidence) with a principal<br>diagnosis of epilepsy by age and sex, Scotland", 
           sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses/'>SMR01, ISD</a>. Directly age-sex standardised to the European Standard Population 2013.<br>ICD10 codes: G40 and G41, ICD9 code: 345", 
           xaxtitle="Financial year", yaxtitle="Age-sex standarized rate per 100,000")

############################.
##Ethnicity ----
############################.
multibar(filepath="Ethnicity/ethnicity_sah_chart1", 
         xvar="class1", yvar="measure", group="class2", pal=palnogroups,
         title="Chart 1. Bad or very bad health by ethinicity<br>and age group, Scotland, 2011", 
         sourc="<a href='http://www.scotlandscensus.gov.uk/census-results'>Census 2011, NRS</a>", 
         xaxtitle='Ethnic group', yaxtitle="Percentage")

############################.
##Gender ----
############################.
multiline (filepath="Gender/Gender_chart1", 
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 1. Sex distribution of Scotland's<br>population within 5-year age groups, 2016", 
           sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population'>NRS</a>", 
           xaxtitle="Age group", yaxtitle="Percentage in each 5-year age group")

############################.
##Health Inequalities ----
############################.
#Legend overlay in plotly
oneline(filepath="Health Inequalities/Health_Inequalities_Chart_1", 
        xvar="class1", yvar="measure", 
        title="Chart 1. Relative Index of Inequality (RII)<br>All-cause mortality under 75 years, Scotland, 2015", 
        sourc="<a href='http://www.gov.scot/Publications/2017/03/8751'>Long-term Monitoring of Health Inequalities, Scottish Government</a>", 
        xaxtitle="Year", yaxtitle="Relative Index of Inequality (RII)")

#Legend overlay in plotly
multiline (filepath="Health Inequalities/Health_Inequalities_Chart_2", 
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 2. Absolute gap: all-causes mortality<br>under 75 years, Scotland, 2015", 
           sourc="<a href='http://www.gov.scot/Publications/2017/03/8751'>Long-term Monitoring of Health Inequalities, Scottish Government</a>", 
           xaxtitle="Year", yaxtitle="Absolute gap")

############################.
##Hepatitis C----
############################.
onebar(filepath="Hepatitis C/hep_deprivation_chart1", 
       xvar="class1", yvar="measure", 
       title="Chart 1. People diagnosed with Hepatitis C<br> by SIMD quintile, Scotland, 2016", 
       sourc="<a href='http://www.hps.scot.nhs.uk/bbvsti/wrdetail.aspx?id=73581&wrtype=6'>HPS</a>; only including patients alive and with a valid postcode", 
       xaxtitle='SIMD quintile', yaxtitle="Population")

############################.
##High blood pressure ----
############################.
multibar(filepath="High blood pressure/hbp_prevalence_chart1", 
         xvar="class1", yvar="measure", group="class2", pal=palnogroups,
         title="Chart 1. Prevalence of self-reported doctor-diagnosed<br>high blood pressure, Scotland, 2014/15 combined", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>SHS, Scottish Government</a>. Adults aged 16 and over.", 
         xaxtitle='Age group', yaxtitle="Percentage")

############################.
##Immunisations ----
############################.
onebar(filepath="Immunisations/immunisation_inequalities_chart1", 
       xvar="class1", yvar="measure", 
       title="Chart 1. Uptake of 3 doses of HPV vaccine<br>by SIMD quintile, Scotland, 2010-2011", 
       sourc="<a href='http://jech.bmj.com/content/68/1/57'>Sinka et al (2014)</a>;  S3 cohort, at August 2012", 
       xaxtitle='SIMD quintile', yaxtitle="Percentage")

############################.
##Income and Employment ----
############################.
#Household income
multiline (filepath="Income and employment/IE-household-income-chart1", 
           xvar="class1", yvar="measure", group="class2", pal_col=pal_gradient9,
           title="Chart 1. Equivalised weekly household income<br>before housing costs in Scotland, 2015/16 prices", 
           sourc="<a href='https://www.gov.uk/government/collections/households-below-average-income-hbai--2'>HBAI, DWP</a>", 
           xaxtitle="Financial year", yaxtitle="£ per week")

barcompar(filepath="Income and employment/IE-household-income-chart2", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 2. Households reporting that they do not<br> manage well financially in Scotland, 2015", 
          sourc="<a href='http://www.gov.scot/Topics/Statistics/16002'>Scottish Household Survey</a>", 
          xaxtitle='Household type', yaxtitle="Percentage")

#Working age poverty
multiline (filepath="Income and employment/IE-working-age-poverty-chart1", 
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 1. Population living in relative poverty<br>before housing costs, Scotland", 
           sourc="<a href='https://www.gov.uk/government/collections/households-below-average-income-hbai--2'>HBAI, DWP</a>", 
           xaxtitle="Financial year", yaxtitle="Percentage")

barcompar(filepath="Income and employment/IE-working-age-poverty-chart2", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 2. Households where at least one person<br> is in work claiming Working Tax Credits, 2014/2015", 
          sourc="<a href='https://www.gov.uk/government/publications/hmrc-annual-report-and-accounts-2014-to-2015'>HMRC</a>, <a href=https://www.ons.gov.uk/employmentandlabourmarket/peopleinwork/employmentandemployeetypes/qmis/annualpopulationsurveyapsqmi>/Annual Population Survey Household Datasets</a>", 
          xaxtitle='Council', yaxtitle="Percentage of all households")

#Availability of work
multiline (filepath="Income and employment/IE-availabilityofwork-chart1", 
           xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
           title="Chart 1. Employment rates by gender in Scotland", 
           sourc="<a href='https://www.ons.gov.uk/employmentandlabourmarket/peopleinwork/employmentandemployeetypes/bulletins/uklabourmarket/previousReleases'>Labour Force survey</a>, <a href='http://casweb.mimas.ac.uk/'>Census of Population</a>, <a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-estimates/mid-year-population-estimates'>NRS</a>", 
           xaxtitle="Year", yaxtitle="Percentage")

onebar(filepath="Income and employment/IE-availabilityofwork-chart2", 
       xvar="class1", yvar="measure", 
       title="Chart 2. ILO unemployed (aged 16 plus)<br>by occupations in Scotland, 2015", 
       sourc="<a href='https://www.gov.uk/government/collections/ukces-employer-skills-survey-2015'>Employer Skills Survey, UKCES</a>, <a href='http://www.gov.scot/Topics/Statistics/Browse/Labour-Market/Publications'>Annual Population Survey</a>", 
       xaxtitle='Occupations', yaxtitle="ILO unemployment per 100 vacancies")

onebar(filepath="Income and employment/IE-availabilityofwork-chart3", 
       xvar="class1", yvar="measure", 
       title="Chart 3. ILO unemployed (aged 16 plus)<br>by Scottish regions, 2015", 
       sourc="<a href='https://www.gov.uk/government/collections/ukces-employer-skills-survey-2015'>Employer Skills Survey, UKCES</a>, <a href='http://www.gov.scot/Topics/Statistics/Browse/Labour-Market/Publications'>Annual Population Survey</a>", 
       xaxtitle='Scottish region', yaxtitle="ILO unemployment per 100 vacancies")

#Legend overlay in plotly
multiline (filepath="Income and employment/IE-worklessness-chart1", 
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 1. Adults claiming unemployment benefits, ILO<br> unemployed and claiming any out-of work benefits, Scotland", 
           sourc="<a href='https://www.ons.gov.uk/employmentandlabourmarket/peopleinwork/employmentandemployeetypes/bulletins/uklabourmarket/previousReleases'>Labour Force survey</a>, <a href=https://www.gov.uk/government/statistics/work-and-pensions-longitudinal-study>DWP Longitudinal Survey, WPLS</a>. Adults aged 16-64 years", 
           xaxtitle="Year", yaxtitle="Percentage")

barcompar(filepath="Income and employment/IE-worklessness-chart2", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 2. Working-age adults claiming key out<br> of-work benefits, by sub-region, Scotland, 2016", 
          sourc="<a href=https://www.gov.uk/government/statistics/work-and-pensions-longitudinal-study>DWP Longitudinal Survey, WPLS</a>. Adults aged 16-64 years", 
          xaxtitle='Region', yaxtitle="Percentage")

############################.
##Injuries ----
############################.
multiline (filepath="Injuries/inj_road_traffic_chart_1", 
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 1. Road traffic casualties, Scotland",
           sourc="<a href='https://www.transport.gov.scot/publication/key-reported-road-casualties-scotland-2015'>Transport Scotland</a>", 
           xaxtitle="Year", yaxtitle="Number")

oneline(filepath="Injuries/inj_mortality_chart_1", 
       xvar="class1", yvar="measure", 
       title="Chart 1. Injury related mortality, Scotland", 
       sourc="<a href='https://www.injuryobservatory.net/britain-and-ireland-deaths-due-to-injury/'>IOBI</a>", 
       xaxtitle='Year', yaxtitle="Age-sex standarized rate per 100,000")

##END