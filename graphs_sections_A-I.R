#Code to create plotly graphics and upload them to plotly site
#Sections starting with an A until an I.

############################.
##Packages, functions and plot parameters----
############################.
source("plotly_chart_functions.R")

############################.
##Allergy ----
############################.
#Replaced with Shiny dashboard:
# \\stats\scotpho\Website\Charts\Shiny\SQ\Allergic Conditions Chart

# Old charts
# #Chart 569.
# multiline(filepath="Allergy/Allergy_CIS_Chart1", 
#           xvar="class2", yvar="measure", group="class1", pal_col=pal_simd2,
#           title="Chart 1. Acute Hospital Inpatient/Day Case Discharges<br> Continuous Inpatient Stays (CIS) with selected diagnoses, Scotland", 
#           sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Inpatient-and-Day-Case-Activity/'>ISD</a>.", 
#           xaxtitle="Financial year", yaxtitle="Continuous Inpatient Stays (CIS)")
# 
# #Chart 584.
# multiline(filepath="Allergy/Allergy_CIS_rate_Chart2", 
#           xvar="class2", yvar="measure", group="class1", pal_col=pal_simd2,
#           title="Chart 1. Acute Hospital Inpatient/Day Case Discharges<br> Continuous Inpatient Stays (CIS) with selected diagnoses,<br>Directly age-sex standardised to the European Standard Population 2013,<br> Scotland", 
#           sourc="<a href='http://www.isdscotland.org/index.asp'>ISD</a>.", 
#           xaxtitle="Financial year", yaxtitle="Age-sex standarized rate per 100,000")
# 
# #Chart 571.
# multiline(filepath="Allergy/Allergy_patients_Chart3", 
#           xvar="class2", yvar="measure", group="class1", pal_col=pal_simd2,
#           title="Chart 1. Acute Hospital Inpatient/Day Case Patients<br>with selected diagnoses, Scotland", 
#           sourc="<a href='http://www.isdscotland.org/index.asp'>ISD</a>.", 
#           xaxtitle="Financial year", yaxtitle="Patients")
# 
# #Chart 586.
# multiline(filepath="Allergy/Allergy_patients_rate_Chart4", 
#           xvar="class2", yvar="measure", group="class1", pal_col=pal_simd2,
#           title="Chart 1. Acute Hospital Inpatient/Day Case Patients<br> with selected diagnoses,<br>Directly age-sex standardised to the European Standard Population 2013,<br> Scotland", 
#           sourc="<a href='http://www.isdscotland.org/index.asp'>ISD</a>.", 
#           xaxtitle="Financial year", yaxtitle="Age-sex standarized rate per 100,000")


############################.
##Asthma ----
############################.

#Chart 247
multiline(filepath="Asthma/asthma_mortality_chart1", 
          xvar="class2", yvar="measure", group="class1", pal_col=palbysexoverall,
          title="Chart 1. Deaths due to asthma, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/general-publications/vital-events-reference-tables'>NRS</a>", 
          xaxtitle="Year", yaxtitle="Number of deaths")

#Chart 243
multiline(filepath="Asthma/asthma_seccare_sex_chart1", 
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 1. First hospitalisations with asthma,<br> by gender, Scotland<br>Rates directly age-sex standardised using the European Standard Population 2013", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses'>SMR01, ISD Scotland</a>; ICD10 codes: J45 & J46", 
          xaxtitle="Financial year", yaxtitle="Age-sex standarized rate per 100,000")

#Chart 608
#Legend overlay in plotly
multiline(filepath="Asthma/asthma_seccare_age_sex_chart2", 
          xvar="class2", yvar="measure", group="class1", pal_col=pal2bysex,
          title="Chart 2. First hospitalisations with asthma,<br> by age and gender, Scotland<br>Rates directly age-sex standardised using the European Standard Population 2013", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses'>SMR01, ISD Scotland</a>; ICD10 codes: J45 & J46", 
          xaxtitle="Financial year", yaxtitle="Age-sex standarized rate per 100,000")
############################.
##Asthma PRE RELEASE ACCESS

#Chart 
multiline(filepath="Asthma/asthma_mortality_chart1PRA",  privacy = "secret",
          xvar="class2", yvar="measure", group="class1", pal_col=palbysexoverall,
          title="Chart 1. Deaths due to asthma, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/general-publications/vital-events-reference-tables'>NRS</a>", 
          xaxtitle="Year", yaxtitle="Number of deaths")

#Chart 
multiline(filepath="Asthma/asthma_seccare_sex_chart1PRA",  privacy = "secret",
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 1. First hospitalisations with asthma,<br> by gender, Scotland", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses'>SMR01, ISD Scotland</a>; ICD10 codes: J45 & J46", 
          xaxtitle="Financial year", yaxtitle="Age-sex standarized rate per 100,000")

#Chart 
multiline(filepath="Asthma/asthma_seccare_age_sex_chart2PRA",  privacy = "secret",
          xvar="class2", yvar="measure", group="class1", pal_col=pal2bysex,
          title="Chart 2. First hospitalisations with asthma,<br> by age and gender, Scotland", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses'>SMR01, ISD Scotland</a>; ICD10 codes: J45 & J46", 
          xaxtitle="Financial year", yaxtitle="Age-sex standarised rate per 100,000")

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
        title="Chart 2. Female breast cancer mortality, Scotland", 
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
        title="Chart 2. Prostate cancer mortality, Scotland", 
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
         title="Chart 1. Estimated population, Scotland, mid 2017", 
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
          xvar="class2", yvar="measure", group="class1", pal_col=pal_simd2,
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
          title="Chart 3. Chronic liver disease morbidity<br>by condition, Scotland", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses'>SMR01, ISD Scotland</a>", 
          xaxtitle="Financial year of discharge", yaxtitle="Age-sex standardised rate per 100,000")

multiline(filepath="Chronic Liver Disease/CLD_morbidity_simd_rate_Chart4", 
          xvar="class2", yvar="measure", group="class1", pal_col=pal_simd2,
          title="Chart 4. Chronic liver disease morbidity<br>by SIMD deciles, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths'>NRS</a>", 
          xaxtitle="Financial year of discharge", yaxtitle="Age-sex standardised rate per 100,000")

############################.
##Chronic Liver Disease PRE RELEASE ACCESS
#Mortality
multiline(filepath="Chronic Liver Disease/CLD_mortality_gender_rate_Chart1PRA",  privacy = "secret",
          xvar="class2", yvar="measure", group="class1", pal_col=palbysexoverall,
          title="Chart 1. Chronic liver disease mortality<br> by gender, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths'>NRS</a>", 
          xaxtitle="Year of death registration", yaxtitle="Age-sex standardised rate per 100,000", privacy="secret")

multiline(filepath="Chronic Liver Disease/CLD_mortality_age_rate_Chart2PRA",  privacy = "secret",
          xvar="class2", yvar="measure", group="class1", pal_col=pal_cldmortage,
          title="Chart 2. Chronic liver disease mortality by age group, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths'>NRS</a>", 
          xaxtitle="Year of death registration", yaxtitle="Age-sex standardised rate per 100,000", privacy="secret")

multiline(filepath="Chronic Liver Disease/CLD_mortality_conditions_rate_Chart3PRA",  privacy = "secret",
          xvar="class2", yvar="measure", group="class1", pal_col=palalccondition,
          title="Chart 3. Chronic liver disease mortality by condition, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths'>NRS</a>", 
          xaxtitle="Year of death registration", yaxtitle="Age-sex standardised rate per 100,000", privacy="secret")

multiline(filepath="Chronic Liver Disease/CLD_mortality_simd_rate_Chart4PRA",  privacy = "secret",
          xvar="class2", yvar="measure", group="class1", pal_col=pal_simd,
          title="Chart 4. Chronic liver disease mortality<br> by SIMD decile, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths'>NRS</a>", 
          xaxtitle="Year of death registration", yaxtitle="Age-sex standardised rate per 100,000", privacy="secret")

#Morbidity
multiline(filepath="Chronic Liver Disease/CLD_morbidity_gender_rate_Chart1PRA",  privacy = "secret",
          xvar="class2", yvar="measure", group="class1", pal_col=palbysexoverall,
          title="Chart 1. Chronic liver disease morbidity<br>by gender, Scotland", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses'>SMR01, ISD Scotland</a>", 
          xaxtitle="Financial year of discharge", yaxtitle="Age-sex standardised rate per 100,000", privacy="secret")

multiline(filepath="Chronic Liver Disease/CLD_morbidity_age_rate_Chart2PRA",  privacy = "secret",
          xvar="class2", yvar="measure", group="class1", pal_col=pal_cldmorbage,
          title="Chart 2. Chronic liver disease morbidity by age group, Scotland", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses'>SMR01, ISD Scotland</a>", 
          xaxtitle="Financial year of discharge", yaxtitle="Age-sex standardised rate per 100,000", privacy="secret")

multiline(filepath="Chronic Liver Disease/CLD_morbidity_conditions_rate_Chart3PRA",  privacy = "secret",
          xvar="class2", yvar="measure", group="class1", pal_col=palalccondition,
          title="Chart 3. Chronic liver disease morbidity<br>by condition, Scotland", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses'>SMR01, ISD Scotland</a>", 
          xaxtitle="Financial year of discharge", yaxtitle="Age-sex standardised rate per 100,000", privacy="secret")

multiline(filepath="Chronic Liver Disease/CLD_morbidity_simd_rate_Chart4PRA", 
          xvar="class2", yvar="measure", group="class1", pal_col=pal_simd2,
          title="Chart 4. Chronic liver disease morbidity<br>by SIMD deciles, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths'>NRS</a>", 
          xaxtitle="Financial year of discharge", yaxtitle="Age-sex standardised rate per 100,000", privacy="secret")

############################.
##Community Wellbeing ----
############################.
#Neighbourhood staisfaction
oneline(filepath="Community Wellbeing/communitywellbeing_neighbourhoodsatisfaction_chart1", 
        xvar="class1", yvar="measure", 
        title="Chart 1. Adults (aged 16 plus) who rate their neighbourhood<br> as a very good place to live, Scotland", 
        sourc="<a href='http://www.gov.scot/Topics/Statistics/16002/PublicationAnnual'>SHS</a>", 
        xaxtitle="Year", yaxtitle="Percentage")

barcompar(filepath="Community Wellbeing/communitywellbeing_neighbourhoodsatisfaction_chart2", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 2. Adults (aged 16 plus) who rate their neighbourhood<br> as a very good place to live by council, 2017", 
          sourc="<a href='http://www.gov.scot/Topics/Statistics/16002/PublicationAnnual'>SHS</a>", 
          xaxtitle='Council', yaxtitle="Percentage")

barcompar(filepath="Community Wellbeing/communitywellbeing_neighbourhoodsatisfaction_chart3", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 3. Adults (aged 16 plus) who rate their neighbourhood<br> as a very good place to live by SIMD decile, Scotland, 2017", 
          sourc="<a href='http://www.gov.scot/Topics/Statistics/16002/PublicationAnnual'>SHS</a>", 
          xaxtitle='SIMD decile', yaxtitle="Percentage")

barcompar(filepath="Community Wellbeing/communitywellbeing_neighbourhoodsatisfaction_chart4", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 4. Adults (aged 16 plus) who rate their neighbourhood<br>as a very good place to live, Scotland, 2017", 
          sourc="<a href='http://www.gov.scot/Topics/Statistics/16002/PublicationAnnual'>SHS</a>", 
          xaxtitle='Urban-Rural classification', yaxtitle="Percentage")

#Trust
barcompar(filepath="Community Wellbeing/communitywellbeing_trust_chart1", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 1. Adults (aged 16 plus) who believe that most people<br>can be trusted, Scotland, 2015/17", 
          sourc="<a href='http://www.gov.scot/Topics/Statistics/16002/PublicationAnnual'>SHS</a>", 
          xaxtitle='SIMD quintile', yaxtitle="Percentage")

barcompar(filepath="Community Wellbeing/communitywellbeing_trust_chart2", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 2. Adults (aged 16 plus) who believe that most people<br>in their neighbourhood can be trusted, Scotland, 2015/17", 
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
#Chart 301
multiline (filepath="COPD/COPD_Secondary Care - Chart 1", 
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 1. Incidence of COPD, excluding bronchiectasis, <br>Scotland", 
           sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses/'>SMR01, ISD</a>. ICD10 Codes:J40-J44, ICD9 Codes:490-492, 496", 
           xaxtitle="Financial year", yaxtitle="Age-sex standardised rate of <br>new cases per 100,000")

#Chart 303
multiline (filepath="COPD/COPD_Secondary Care - Chart 2", 
           xvar="class2", yvar="measure", group="class1", pal_col=pal3bysex,
           title="Chart 2. Incidence of COPD, Scotland", 
           sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses/'>SMR01, ISD</a>ICD10 Codes:J40-J44, ICD9 Codes:490-492, 496", 
           xaxtitle="Financial year", yaxtitle="Age-sex standardised rate of <br>new cases per 100,000 per year")

#Mortality
#Chart 305
multiline (filepath="COPD/COPD_Mortality_Chart_1", 
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 1. Mortality rate for COPD by gender, Scotland", 
           sourc="<a href='http://www.isdscotland.org/index.asp'>ISD</a>. ICD10 Codes: J40-J44, ICD9 Codes: 490-492, 496", 
           xaxtitle="Year", yaxtitle="Age-sex standardised rate per 100,000")

#Deprivation
#Chart 307
multibar(filepath="COPD/COPD_deprivation_Chart_1", 
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 1. COPD admissions in males, Scotland, 2017/18", 
         sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses/'>SMR01, ISD</a>. ICD10 Codes: J40-J44", 
         xaxtitle='SIMD quintile', yaxtitle="Age-sex standardised rate per 100,000")

#Chart 415
multibar(filepath="COPD/COPD_deprivation_Chart_2", 
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 2. COPD admissions in females, Scotland, 2017/18", 
         sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses/'>SMR01, ISD</a>. ICD10 Codes: J40-J44", 
         xaxtitle='SIMD quintile', yaxtitle="Age-sex standardised rate per 100,000")

#NHS board
#Chart 309
barcompar(filepath="COPD/COPD - NHS Board data - Chart 1", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 1. COPD prevalence rate per 100 patients<br>registered with a GP Practice, 2015/16", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/General-Practice/Quality-And-Outcomes-Framework/2010-11/Register-and-prevalence-data.asp'>QOF, ISD Scotland</a>. Practices with new GMS contracts", 
          xaxtitle='NHS Board', yaxtitle="Crude prevalence rate per 100 patients")

#Chart 417
barcompar(filepath="/data/COPD/COPD - NHS Board data - Chart 2", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 2. Hospital discharges <br>with COPD (main diagnosis), 2015/16", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses/'>SMR01, ISD Scotland</a>. ICD10 codes J40-J44.", 
          xaxtitle='NHS Board', yaxtitle="Crude rate per 100,000 population")

#Smoking
multiline(filepath="COPD/COPD_Smoking_chart_1", 
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 1. Prevalence of current smoking among adults, UK", 
          sourc="<a href='https://data.gov.uk/dataset/general_household_survey'>Tobacco Advisory Council/General Household Survey</a>", 
          xaxtitle="Year", yaxtitle="Prevalence")

multiline(filepath="COPD/COPD_Smoking_chart_2", 
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 2. Smoking rates by gender, Scotland", 
          sourc="<a href='https://data.gov.uk/dataset/general_household_survey'>General Household Survey</a>", 
          xaxtitle="Year", yaxtitle="Percentage who are current smokers")

#International Charts 1&2 not updated Dec 2018 - WHO data source no longer available???
#Chart 315
#International
onebar(filepath="COPD/COPD_International - Chart 1", 
       xvar="class1", yvar="measure", 
       title="Chart 1. Death rates due to COPD in various industrialised<br>countries, Males", 
       sourc="<a href='http://www.who.int/healthinfo/mortality_data/en/'>WHO Mortality Database</a>, extracted October 2016", 
       xaxtitle='Country', yaxtitle="Rate per 100,000")

#Chart 317
onebar(filepath="COPD/COPD_International - Chart 2", 
       xvar="class1", yvar="measure", 
       title="Chart 2. Death rates due to COPD in various industrialised<br>countries, Females", 
       sourc="<a href='http://www.who.int/healthinfo/mortality_data/en/'>WHO Mortality Database</a>, extracted October 2016", 
       xaxtitle='Country', yaxtitle="Rate per 100,000")
############################.
##COPD PRE RELEASE ACCESS

#Secondary care
#Chart 467
multiline (filepath="COPD/COPD_Secondary Care - Chart 1PRA",  privacy = "secret",
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 1. Incidence of COPD, excluding bronchiectasis, <br>Scotland", 
           sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses/'>SMR01, ISD</a>. ICD10 Codes:J40-J44, ICD9 Codes:490-492, 496", 
           xaxtitle="Financial year", yaxtitle="Age-sex standardised rate of <br>new cases per 100,000")

#Chart 469
multiline (filepath="COPD/COPD_Secondary Care - Chart 2PRA",  privacy = "secret",
           xvar="class2", yvar="measure", group="class1", pal_col=pal3bysex,
           title="Chart 2. Incidence of COPD, Scotland", 
           sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses/'>SMR01, ISD</a>ICD10 Codes:J40-J44, ICD9 Codes:490-492, 496", 
           xaxtitle="Financial year", yaxtitle="Age-sex standardised rate of <br>new cases per 100,000 per year")

#Mortality
#Chart 471
multiline (filepath="COPD/COPD_Mortality_Chart_1PRA",  privacy = "secret",
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 1. Mortality rate for COPD by gender, Scotland", 
           sourc="<a href='http://www.isdscotland.org/index.asp'>ISD</a>. ICD10 Codes: J40-J44, ICD9 Codes: 490-492, 496", 
           xaxtitle="Year", yaxtitle="Age-sex standardised rate per 100,000")

#Deprivation
#Chart 473
multibar(filepath="COPD/COPD_deprivation_Chart_1PRA",  privacy = "secret",
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 1. COPD admissions in males, Scotland, 2017/18", 
         sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses/'>SMR01, ISD</a>. ICD10 Codes: J40-J44", 
         xaxtitle='SIMD quintile', yaxtitle="Age-sex standardised rate per 100,000")

#Chart 475
multibar(filepath="COPD/COPD_deprivation_Chart_2PRA",  privacy = "secret",
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 2. COPD admissions in females, Scotland, 2017/18", 
         sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses/'>SMR01, ISD</a>. ICD10 Codes: J40-J44", 
         xaxtitle='SIMD quintile', yaxtitle="Age-sex standardised rate per 100,000")


############################.
##Crime ----
############################.

oneline(filepath="Crime/Crime - National trends Chart 1", 
        xvar="class1", yvar="measure", 
        title="Chart 1. Crimes recorded by police, Scotland", 
        sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Crime-Justice/PubRecordedCrime'>Police Scotland</a>", 
        xaxtitle='Year', yaxtitle="Number")

onebar(filepath="Crime/Crime - by local authority Chart 1", 
       xvar="class1", yvar="measure", 
       title="Chart 1. Index of crime by council, 2016/17", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Crime-Justice/PubRecordedCrime'>Police Scotland</a>", 
       xaxtitle='Council', yaxtitle="Index of crime (Scotland = 100)")

onebar(filepath="Crime/crime-national-target-chart1",
       xvar="labelsx", yvar="measure", 
       title="Chart 1. Proportion of respondents</br> who were a victim of one or more crimes",
       sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Crime-Justice/crime-and-justice-survey/publications'>Scottish Crime and Victimisation Survey</a>",
       xaxtitle='Year', yaxtitle="Percentage")

# oneline(filepath="Crime/crime-national-target-chart1", 
#        xvar="class1", yvar="measure", labelsx="labelsx",
#        title="Chart 1. Proportion of respondents</br> who were a victim of one or more crimes", 
#        sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Crime-Justice/crime-and-justice-survey/publications'>Scottish Crime and Victimisation Survey</a>", 
#        xaxtitle='Year', yaxtitle="Percentage")

# data <- read.csv(paste("./data/", filepath, ".csv", sep=""), na.strings=c(""," ","NA")) #Reading data
#Dataset
data <- data.frame("labelsx" = as.factor(c("2008/09", "2009/10", "2010/11", "2012/13", "2014/15", "2016/17")),
                   "class1"=c(2008, 2009, 2010, 2012, 2014, 2016),
                   "measure" = c(20.4, 19.3, 17.8, 16.9, 14.5, 13.4))
#Plot
plot_plotly <- plot_ly(data=data, x=~class1, y=~round(measure),
                       type = "scatter", mode='lines', width = 650, height = 500, #size of plot
                       line = list(color = "blue")) %>% #Grouping variable for color and palette
  #Layout
  layout(title = "Test of errors in Plotly", #title
         titlefont = list(size=15), #title size
         annotations = list(), #It needs this because of a buggy behaviour
         yaxis = list(title = "Percentage", rangemode="tozero"),
         xaxis = list(title = "Year", tickangle = 270, tickfont =list(size=10),
                      tickvals=~class1, ticktext=~labelsx), #axis parameter
         margin=list( l = 70, r = 50, b = 150, t = 50, pad = 4 ) #margin-paddings
  ) %>%
  config(displaylogo = F, collaborate=F, editable =F) # taking out plotly logo and collaborate button

print(plot_plotly)

#Uploading to Plotly
api_create(x=plot_plotly, filename = "test_error") #Upload to server

#Plotting
# plot_plotly <- plot_ly(data=data, x=data[,xvar], y=round(data[,yvar],1),
#                        type = "scatter", mode='lines', width = 650, height = 500, #size of plot
#                        line = list(color = pal1color)) %>% #Grouping variable for color and palette
#   #Layout
#   layout(title = paste(title, "<br>", "<sup><i>Source: ", sourc, sep=""), #title
#          titlefont = list(size=15), #title size
#          annotations = list(), #It needs this because of a buggy behaviour
#          yaxis = list(title = yaxtitle, rangemode="tozero"),
#          xaxis = list(title = xaxtitle, tickangle = 270, tickfont =list(size=10),
#                       tickvals=data[,xvar], ticktext=data[,labelsx]), #axis parameter
#          margin=list( l = 70, r = 50, b = 150, t = 50, pad = 4 ), #margin-paddings
#          images = scotpho_logo) %>%
#   config(displaylogo = F, collaborate=F, editable =F) # taking out plotly logo and collaborate button
# 
# api_create(x=plot_plotly, filename = filepath) #Upload to server

onebar(filepath="Crime/crime-national-target-chart2", 
       xvar="class1", yvar="measure", 
       title="Chart 2. Proportion of respondents who think crime in their area<br> has stayed the same or reduced in the past 2 years", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Crime-Justice/crime-and-justice-survey/publications'>Scottish Crime and Justice Survey</a>", 
       xaxtitle='Year', yaxtitle="Percentage")

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
          title="Chart 1. All-cause death rates by NHS Board, 2017", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/age-standardised-death-rates-calculated-using-the-esp'>NRS</a>.", 
          xaxtitle='NHS Board', yaxtitle="Age-sex standarized rate per 100,000")

barcompar(filepath="Deaths/deaths-allcause-byLA-chart1", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 1. All-cause death rates by council, 2017", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/age-standardised-death-rates-calculated-using-the-esp'>NRS</a>.", 
          xaxtitle='Council', yaxtitle="Age-sex standarized rate per 100,000")

#Chart 329
barcompar(filepath="Deaths/deaths-allcause-deprivation-chart1", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 1. All-cause death rates by deprivation decile, 2017", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/age-standardised-death-rates-calculated-using-the-esp'>NRS</a>. ", 
          xaxtitle='SIMD decile', yaxtitle="Age-sex standarized rate per 100,000")

#Top 10 causes
#Chart 331
onebar(filepath="Deaths/deaths-top10causes-chart1", 
       xvar="class1", yvar="measure", 
       title="Chart 1. The ten most frequently occuring principal<br>causes of death, Scotland, 2015-2017", 
       sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/general-publications/vital-events-reference-tables'>NRS</a>. Based on 3-digit ICD10 codes", 
       xaxtitle='Principal cause of death', yaxtitle="Percentage of all deaths")

#Chart333
onebar(filepath="Deaths/deaths-top10causes-chart2", 
       xvar="class1", yvar="measure", 
       title="Chart 2. The ten most frequently occuring principal causes of<br>premature death for people under 75 years, Scotland, 2015-2017", 
       sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/general-publications/vital-events-reference-tables'>NRS</a>. Based on 3-digit ICD10 codes", 
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
###############################################.
## PRA charts
multiline (filepath="Diabetes/diabetes_secondarycare_chart1_pra", privacy = "secret", 
           xvar="class2", yvar="rate", group="class1", pal_col=pal2bysexoverall,
           title="Chart 1. Admissions to hospital with a <br>diagnosis of diabetes, Scotland", 
           sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses'>ISD</a>; ICD10 codes: E10, E11, E12, E13, E14", 
           xaxtitle="Financial year", yaxtitle="Age-sex standarized rate per 100,000")

multiline (filepath="Diabetes/diabetes_secondarycare_chart2_pra", privacy = "secret", 
           xvar="class2", yvar="rate", group="class1", pal_col=pal5bysex,
           title="Chart 2. Admissions to hospital with a main <br>diagnosis of diabetic ketoacidosis, Scotland", 
           sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses'>ISD</a>, ICD10 codes: E101, E111, E121, E131, E141", 
           xaxtitle="Financial year", yaxtitle="Age-sex standarized rate per 100,000")

#mortality
multiline (filepath="Diabetes/diabetes_mortality_chart1_pra", privacy = "secret", 
           xvar="class2", yvar="rate", group="class1", pal_col=pal2bysexoverall,
           title="Chart 1. Deaths where diabetes was recorded as the<br> underlying cause or as a contributory factor to death, Scotland", 
           sourc="<a href='http://www.isdscotland.org/index.asp'>ISD</a>; ICD10 codes: E10, E11, E12, E13, E14", 
           xaxtitle="Year", yaxtitle="Age-sex standarized rate per 100,000")


###############################################.
## Live charts
#secondary care
#changed place of legend in Plotly
multiline (filepath="Diabetes/diabetes_secondarycare_chart1", 
           xvar="class2", yvar="rate", group="class1", pal_col=pal2bysexoverall,
           title="Chart 1. Admissions to hospital with a <br>diagnosis of diabetes, Scotland", 
           sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses'>ISD</a>; ICD10 codes: E10, E11, E12, E13, E14", 
           xaxtitle="Financial year", yaxtitle="Age-sex standarized rate per 100,000")

multiline (filepath="Diabetes/diabetes_secondarycare_chart2", 
           xvar="class2", yvar="rate", group="class1", pal_col=pal5bysex,
           title="Chart 2. Admissions to hospital with a main <br>diagnosis of diabetic ketoacidosis, Scotland", 
           sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses'>ISD</a>, ICD10 codes: E101, E111, E121, E131, E141", 
           xaxtitle="Financial year", yaxtitle="Age-sex standarized rate per 100,000")

#Scottish diabetes survey
oneline (filepath="Diabetes/diabetes_survey_chart1", 
         xvar="class1", yvar="measure", 
         title="Chart 1. Prevalence of all types of diabetes, Scotland", 
         sourc="<a href='http://www.diabetesinscotland.org.uk/Publications.aspx'>Scottish Diabetes Survey</a>; ICD10 codes: E10, E11, E12, E13, E14", 
         xaxtitle="Year", yaxtitle="Crude prevalence (%)")

#NHS boards
#changed place of legend in Plotly
multibar(filepath="Diabetes/diabetes_nhsboard_chart1", 
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 1. Prevalence of diabetes by health board </br>by two different sources", 
         sourc="<a href='http://www.isdscotland.org/qof'>ISD Quality & Outcomes Framework</a> & <a href='http://www.diabetesinscotland.org.uk/Publications.aspx'>Scottish Diabetes Survey</a>", 
         xaxtitle='Health Board', yaxtitle="Crude prevalence (%)")

#mortality
#changed place of legend in Plotly
multiline (filepath="Diabetes/diabetes_mortality_chart1", 
           xvar="class2", yvar="rate", group="class1", pal_col=pal2bysexoverall,
           title="Chart 1. Deaths where diabetes was recorded as the<br> underlying cause or as a contributory factor to death, Scotland", 
           sourc="<a href='http://www.isdscotland.org/index.asp'>ISD</a>; ICD10 codes: E10, E11, E12, E13, E14", 
           xaxtitle="Year", yaxtitle="Age-sex standarized rate per 100,000")

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
         title="Chart 1. Adults consuming 5 or more portions<br> of fruit and vegetables per day, Scotland, 2017", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='Age group', yaxtitle="Percentage")

onebar(filepath="Diet and Nutrition/diet_Adults - Chart 2", 
       xvar="class1", yvar="measure", 
       title="Chart 2. Adults consuming 5 or more portions<br> of fruit and vegetables per day, Scotland, 2017", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
       xaxtitle='SIMD quintile 2016', yaxtitle="Percentage")

multibar(filepath="Diet and Nutrition/diet_Adults - Chart 3", 
         xvar="class2", yvar="measure", group="class1", pal=palnogroups,
         title="Chart 3. Adults consuming 5 or more portions<br> of fruit and vegetables per day, 2016", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>, <a href='http://content.digital.nhs.uk/healthsurveyengland'>Health Survey for England</a>", 
         xaxtitle='Age group', yaxtitle="Percentage")

#Children
multibar(filepath="Diet and Nutrition/diet_Children - Chart 1", 
         xvar="class2", yvar="measure", group="class1", pal=palnogroups,
         title="Chart 1. Children consuming 5 or more portions<br> of fruit and vegetables per day, Scotland, 2017", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='Age group', yaxtitle="Percentage")

#extending axis to 20 in plotly
multibar(filepath="Diet and Nutrition/diet_Children - Chart 2", 
         xvar="class2", yvar="measure", group="class1", pal=palnogroups,
         title="Chart 2. Children consuming 5 or more portions<br> of fruit and vegetables per day, Scotland, 2017", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='SIMD quintile', yaxtitle="Percentage")

multibar(filepath="Diet and Nutrition/diet_Children - Chart 3", 
         xvar="class2", yvar="measure", group="class1", pal=palnogroups,
         title="Chart 3. Children consuming NO portions<br>of fruit and vegetables per day, Scotland, 2017", 
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
       title="Chart 2. Adults with a limiting long-term physical<br>or mental health condition or illness, Scotland, 2016", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/About/Surveys/SSCQ'>SSCQ, Scottish Government</a>. Adults aged 16 and over.", 
       xaxtitle='SIMD quintile', yaxtitle="Percentage")

onebar(filepath="Disability/disability-sah-chart2", 
       xvar="class1", yvar="measure", 
       title="Chart 2. Adults rating their health<br>as 'bad or very bad', Scotland, 2016", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/About/Surveys/SSCQ'>SSCQ, Scottish Government</a>. Adults aged 16 and over.", 
       xaxtitle='SIMD quintile', yaxtitle="Percentage")

############################.
##Epilepsy ----
############################.
#Chart 423
multiline (filepath="Epilepsy/Epilepsy_incidence_deaths_Chart_1", 
           xvar="class2", yvar="measure", group="class1", pal_col=palbysexoverall,
           title="Chart 1. Deaths where epilepsy was recorded as the<br>underlying cause or a contributory factor to death, Scotland", 
           sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths'>NRS</a>. ICD10 codes: G40 and G41 thereafter, ICD9 codes: 345 up to 1999", 
           xaxtitle="Year", yaxtitle="Number of deaths")

#Chart 366
multiline (filepath="Epilepsy/Epilepsy_incidence_sex_Chart_2", 
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 2. New cases (incidence) with a principal<br>diagnosis of epilepsy by sex, Scotland", 
           sourc="<a href='http://www.isdscotland.org/index.asp'>ISD</a>. ICD10 codes: G40 and G41, ICD9 code: 345", 
           xaxtitle="Financial year", yaxtitle="Age-sex standarized rate per 100,000")

#Chart 368
multiline (filepath="Epilepsy/Epilepsy_incidence_age_sex_Chart_3", 
           xvar="class2", yvar="measure", group="class1", pal_col=pal3bysex,
           title="Chart 3. New cases (incidence) with a principal<br>diagnosis of epilepsy by age and sex, Scotland", 
           sourc="<a href='http://www.isdscotland.org/Health-Topics/Hospital-Care/Diagnoses/'>SMR01, ISD</a>. Directly age-sex standardised to the European Standard Population 2013.<br>ICD10 codes: G40 and G41, ICD9 code: 345", 
           xaxtitle="Financial year", yaxtitle="Age-sex standarized rate per 100,000")

############################.
##PRE RELEASE ACCESS

#Chart 477
multiline (filepath="Epilepsy/Epilepsy_incidence_deaths_Chart_1PRA",  privacy = "secret",
           xvar="class2", yvar="measure", group="class1", pal_col=palbysexoverall,
           title="Chart 1. Deaths where epilepsy was recorded as the<br>underlying cause or a contributory factor to death, Scotland", 
           sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths'>NRS</a>. ICD10 codes: G40 and G41 thereafter, ICD9 codes: 345 up to 1999", 
           xaxtitle="Year", yaxtitle="Number of deaths")

#Chart 479
multiline (filepath="Epilepsy/Epilepsy_incidence_sex_Chart_2PRA",  privacy = "secret",
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 2. New cases (incidence) with a principal<br>diagnosis of epilepsy by sex, Scotland", 
           sourc="<a href='http://www.isdscotland.org/index.asp'>ISD</a>. ICD10 codes: G40 and G41, ICD9 code: 345", 
           xaxtitle="Financial year", yaxtitle="Age-sex standarized rate per 100,000")

#Chart 481
multiline (filepath="Epilepsy/Epilepsy_incidence_age_sex_Chart_3PRA",  privacy = "secret",
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
           title="Chart 1. Sex distribution of Scotland's<br>population within 5-year age groups, 2017", 
           sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population'>NRS</a>", 
           xaxtitle="Age group", yaxtitle="Percentage in each 5-year age group")

############################.
##Health Inequalities ----
############################.
# Policy context
dualaxisline(filepath="Health Inequalities/Health_Inequalities_Policy_Chart_1", 
             xvar="class1", yvar="measure", yvar2="measure2", 
             title="Trends in income inequality (share of national income received by<br>top 1%) and mortality inequality (gap between ‘best’ and ‘worst’
             <br> local authority area), Great Britain 1920-2005", 
             sourc="<a href='https://doi.org/10.1136/bmj.c3639'>Thomas B, Dorling D, Davey Smith G. Inequalities in premature mortality in Britain: observational study from 1921 to 2007</a><br>
             <a href='https://policy.bristoluniversitypress.co.uk/injustice-revised-edition'>Dorling D. Injustice: why social inequality persists. Bristol: The Policy Press; 2010</a>        ", 
             xaxtitle="Three year rolling average", yaxtitle="Ratio of best to worst deciles for area-based mortality", yaxtitle2="Top 1% share of national income",
             minyrange = 1.2, maxyrange = 2.2, yname ="Mortality gap (ratio of best to worst local authority areas)", y2name = "Share of national income received by top 1%")

#Scottish trends
#Legend overlay in plotly
oneline(filepath="Health Inequalities/Health_Inequalities_Chart_1_new", 
        xvar="class1", yvar="measure", 
        title="Chart 1. Relative Index of Inequality (RII)<br>(using SIMD income-employment index),<br>All-cause mortality under 75 years, Scotland", 
        sourc="<a href='https://www.gov.scot/publications/long-term-monitoring-health-inequalities-december-2018-report/'>Long-term Monitoring of Health Inequalities, Scottish Government</a>", 
        xaxtitle="Year", yaxtitle="Relative Index of Inequality (RII)")

#Legend overlay in plotly
multiline (filepath="Health Inequalities/Health_Inequalities_Chart_2_new", 
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 2. Age-standardised all-cause mortality rates under 75<br> years by least and most deprived deciles (using SIMD income-employment index),<br> Scotland", 
           sourc="<a href='https://www.gov.scot/publications/long-term-monitoring-health-inequalities-december-2018-report/'>Long-term Monitoring of Health Inequalities, Scottish Government</a>", 
           xaxtitle="Year", yaxtitle="European age-standarised mortality rate<br>per 100,000 population")

dualaxisline(filepath="Health Inequalities/Health_Inequalities_Chart_3", 
             xvar="class1", yvar="measure", yvar2="measure2", 
             title="Chart 3. Relative Index of Inequality (RII) and<br>Slope Index of Inequality (SII) (using SIMD income-employment<br> index), 
             all-cause mortality under 75 years, Scotland", 
             sourc="<a href='https://www.gov.scot/publications/long-term-monitoring-health-inequalities-december-2018-report/'>Long-term Monitoring of Health Inequalities, Scottish Government</a>", 
             xaxtitle="Year", yaxtitle="Relative Index of Inequality (RII)", 
             yaxtitle2="Slope Index of Inequality (SII)",
             minyrange = 0.6, maxyrange = 1.5, yname = "Relative Index of Inequality (RII)", 
             y2name="Slope Index of Inequality (SII)")

##In request by section author, this should include the trend line (linear regression)
##between deciles; we would need the values for that trend and then use barcompar
onebar(filepath="Health Inequalities/Health_Inequalities_Chart_4", 
       xvar="class1", yvar="measure", 
       title="Chart 4. Age-standardised all-cause mortality rates<br>(under 75 years) by deprivation decile, Scotland 2017", 
       sourc="<a href='https://www.gov.scot/publications/long-term-monitoring-health-inequalities-december-2018-report/'>Long-term Monitoring of Health Inequalities, Scottish Government</a>", 
       xaxtitle='SIMD income-employment index decile', 
       yaxtitle="European age-standarised mortality rate<br>per 100,000 populaton")

areaplot(filepath="Health Inequalities/Health_Inequalities_Chart_5", 
         xvar="age_grp", yvar="value", group="cause", pal_col=pal_health_ineq_area,
         title="Chart 5. Age specific contribution to inequalities of specific causes of death<br> across SIMD quintiles, males, Scotland 2012-16", 
         sourc="<a href='https://www.gov.scot/publications/long-term-monitoring-health-inequalities-december-2018-report/'>MRC/CSO Social and Public Health Sciences Unit, University of Glasgow</a>", 
         xaxtitle='5-year age group', yaxtitle="Relative Index of Inequality")

#UK trends
#Legend overlay in plotly
multiline (filepath="Health Inequalities/Health_Inequalities_UK_Chart_1", 
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 1. Relative Index of Inequality (RII)<br>(using Carstairs deprivation index), all-cause mortality, males aged 35-79 years,<br>Scotland and England & Wales", 
           sourc="<a href='https://bmjopen.bmj.com/content/7/7/e017590'>Long-term Monitoring of Health Inequalities, McCartney et al 2017</a>", 
           xaxtitle="Year", yaxtitle="Relative Index of Inequality (RII)")

#Legend overlay in plotly
multiline (filepath="Health Inequalities/Health_Inequalities_UK_Chart_2", 
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 2. Relative Index of Inequality (RII)<br>(using Carstairs deprivation index), all-cause mortality, females aged 35-79 years,<br>Scotland and England & Wales", 
           sourc="<a href='https://bmjopen.bmj.com/content/7/7/e017590'>Long-term Monitoring of Health Inequalities, McCartney et al 2017</a>", 
           xaxtitle="Year", yaxtitle="Relative Index of Inequality (RII)")


############################.
##Hepatitis C----
############################.
onebar(filepath="Hepatitis C/hep_deprivation_chart1", 
       xvar="class1", yvar="measure", 
       title="Chart 2. People diagnosed with Hepatitis C<br> by SIMD quintile, Scotland, 2016", 
       sourc="<a href='http://www.hps.scot.nhs.uk/bbvsti/wrdetail.aspx?id=73581&wrtype=6'>HPS</a>; only including patients alive and with a valid postcode", 
       xaxtitle='SIMD quintile', yaxtitle="Population")

############################.
##High blood pressure ----
############################.

multibar(filepath="High blood pressure/hbp_prevalence_chart1", 
         xvar="class1", yvar="measure", group="class2", pal=palnogroups,
         title="Chart 1. Prevalence of self-reported doctor-diagnosed<br>high blood pressure, Scotland, 2014 to 2017 combined", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>SHS, Scottish Government</a>. Adults aged 16 and over.", 
         xaxtitle='Age group', yaxtitle="Percentage")



############################.
##Housing ----
############################.
#Availability and affordability
multiline (filepath="Housing/housing_availability_chart1", 
           xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
           title="Chart 1. New affordable housing completions, Scotland", 
           sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Housing-Regeneration/HSfS/NewBuild/AHSPtables'>Scottish Government Affordable Housing Supply Tables</a>", 
           xaxtitle="Year", yaxtitle="Number")

stackedbar(filepath="Housing/housing_availability_chart2", 
           xvar="class1", yvar="measure", group="class2", pal_col=pal3bysex,
           title="Chart 2. Housing tenure, Scotland", 
           sourc="<a href='https://www.gov.scot/Topics/Statistics/16002'>Scottish Household Survey </a>", 
           xaxtitle="Year", yaxtitle="Percentage")

#Quality and overcrowding
onebar(filepath="Housing/housing_quality_chart1", 
       xvar="class1", yvar="measure", 
       title="Chart 1. Dwellings failing the Scottish Housing <br>Quality Standard by tenure, 2016", 
       sourc="<a href='https://www.gov.scot/Topics/Statistics/SHCS'>Scottish House Condition Survey</a>", 
       xaxtitle='Tenure', yaxtitle="Percentage")

onebar(filepath="Housing/housing_quality_chart2", 
       xvar="class1", yvar="measure", 
       title="Chart 2. Overcrowding (under bedroom standard)<br>by tenure, Scotland, 2016", 
       sourc="<a href='https://www.gov.scot/Topics/Statistics/SHCS'>Scottish House Condition Survey</a>", 
       xaxtitle='Tenure', yaxtitle="Percentage")

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
           title="Chart 1. Equivalised weekly household income (BHC) in Scotland: 1994-97 to 2014-17<br>(2016/17 prices)", 
           sourc="<a href='https://www.gov.uk/government/collections/households-below-average-income-hbai--2'>HBAI, DWP</a>", 
           xaxtitle="Year", yaxtitle="£ per week")

barcompar(filepath="Income and employment/IE-household-income-chart2", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 2. Percentage of households reporting that they do not manage well financially:<br>Scotland, 2016", 
          sourc="<a href='http://www.gov.scot/Topics/Statistics/16002'>Scottish Household Survey 2016</a>", 
          xaxtitle='Household type', yaxtitle="Percentage")

#Working age poverty
multiline (filepath="Income and employment/IE-working-age-poverty-chart1", 
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 1. Percentage of population living in relative poverty (After Housing Costs):<br>Scotland, 1994-97 to 2014-17", 
           sourc="<a href='https://www.gov.uk/government/collections/households-below-average-income-hbai--2'>HBAI dataset, DWP</a>", 
           xaxtitle="Year", yaxtitle="Percentage")

barcompar(filepath="Income and employment/IE-working-age-poverty-chart2", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 2. Percentage of households where at least one person is in work claiming<br>Working Tax Credits: 2015/16", 
          sourc="<a href='https://www.gov.uk/government/publications/hmrc-annual-report-and-accounts-2014-to-2015'>HMRC 2015/16</a>, <a href=https://www.ons.gov.uk/employmentandlabourmarket/peopleinwork/employmentandemployeetypes/qmis/annualpopulationsurveyapsqmi>Annual Population Survey Household Datasets (2015)</a>", 
          xaxtitle='Local authority', yaxtitle="Percentage of all households")

#Availability of work
multiline (filepath="Income and employment/IE-availabilityofwork-chart1", 
           xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
           title="Chart 1. Employment rates for men and women in Scotland, 1971-2017", 
           sourc="<a href='https://www.ons.gov.uk/employmentandlabourmarket/peopleinwork/employmentandemployeetypes/bulletins/uklabourmarket/previousReleases'>Labour Force survey</a>, <a href='http://casweb.mimas.ac.uk/'>Census of Population</a>, <a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-estimates/mid-year-population-estimates'>National Records for Scotland</a>", 
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
           title="Chart 1. Percentage of adults aged 16-64 claiming unemployment benefits,<br>ILO unemployed and any out-of work benefits: Scotland, 1992-2017", 
           sourc="<a href='https://www.ons.gov.uk/employmentandlabourmarket/peopleinwork/employmentandemployeetypes/bulletins/uklabourmarket/previousReleases'>Labour Force survey</a>, <a href=https://www.gov.uk/government/statistics/work-and-pensions-longitudinal-study>DWP Work and Pensions Longitudinal Survey, WPLS</a>, <a href=https://www.ons.gov.uk/employmentandlabourmarket/peoplenotinwork/unemployment/datasets/claimantcountandvacanciesdataset>Claimant Count</a>", 
           xaxtitle="Year", yaxtitle="Percentage of adults aged 16-64")

barcompar(filepath="Income and employment/IE-worklessness-chart2", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 2. Percentage of working-age adults aged 16-64 claiming key out-of-work benefits,<br>by sub-region, Scotland: 2017", 
          sourc="<a href=https://www.gov.uk/government/statistics/work-and-pensions-longitudinal-study>DWP Longitudinal Survey, WPLS</a>, <a href=https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-estimates/mid-year-population-estimates>National Records of Scotland</a>.", 
          xaxtitle='Region', yaxtitle="Percentage of adults aged 16-64")

############################.
##Injuries ----
############################.
multiline (filepath="Injuries/inj_road_traffic_chart_1", 
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 1. Road traffic casualties, Scotland",
           sourc="<a href='https://www.transport.gov.scot/publication/reported-road-casualties-scotland-2017/'>Transport Scotland</a>", 
           xaxtitle="Year", yaxtitle="Number")

multiline(filepath="Injuries/inj_seccare_chart1", 
        xvar="class1", yvar="measure", group="class2", pal_col=palalccondition,
        title="Chart 1. Injury related hospital admissions, Scotland", 
        sourc="<a href='http://www.isdscotland.org/Health-Topics/Emergency-Care/Unintentional-Injuries/'>SMR01, ISD</a>", 
        xaxtitle='Year', yaxtitle="Age-sex standarized rate per 100,000")

oneline(filepath="Injuries/inj_mortality_chart_1", 
        xvar="class1", yvar="measure", 
        title="Chart 1. Injury related mortality, Scotland", 
        sourc="<a href='https://www.injuryobservatory.net/britain-and-ireland-deaths-due-to-injury/'>IOBI</a>", 
        xaxtitle='Year', yaxtitle="Age-sex standarized rate per 100,000")

##END
