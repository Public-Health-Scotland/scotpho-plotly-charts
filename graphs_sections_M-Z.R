#Code to create plotly graphics and upload them to plotly site
#Sections starting with a M until a Z.

############################.
### Packages, functions and plot parameters----
############################.
source("plotly_chart_functions.R")

############################.
### Migration----
############################.
plot_webchart(filepath="Migration/migration_scottish_chart1", chart_type = "multiline",
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups, tick_freq = 3,
          title="Chart 1. Scottish migration trends: <br>natural change and net migration", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/migration'>NRS</a>", 
          xaxtitle="Year", yaxtitle="Change in population")

plot_webchart(filepath="Migration/migration_board_chart1", chart_type = "onebar",
       xvar="class1", yvar="measure", order = T, 
       title="Chart 1. Net migration by NHS board, 2017-18",
       sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/migration'>NRS</a>", 
       xaxtitle="Health board", yaxtitle="Population")

plot_webchart(filepath="Migration/migration_la_chart1", chart_type = "onebar",
       xvar="class1", yvar="measure", order = T, 
       title="Chart 1. Net migration by council, 2017-18", 
       sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/migration'>NRS</a>", 
       xaxtitle="Council", yaxtitle="Population")

############################.
### Multiple sclerosis----
############################.
############################.

#secondary care
plot_webchart(filepath="Multiple Sclerosis/ms_seccare_chart1", chart_type = "multiline",
          xvar="class2", yvar="measure", group="class1", tick_freq = 1, pal_col=palnogroups,
          title="Chart 1. New cases (incidence) per 100,000 population with<br> a main diagnosis of multiple sclerosis, Scotland", 
          sourc="<a href='https://www.publichealthscotland.scot/'>SMR01, PHS</a>; ICD10 code: G35, ICD9 code: 340", 
          xaxtitle="Financial year", yaxtitle="Age-sex standardised rate of <br>new cases per 100,000")

plot_webchart(filepath="Multiple Sclerosis/ms_seccare_chart2", chart_type = "multiline",
          xvar="class2", yvar="measure", group="class1", tick_freq = 1, pal_col=pal3bysex,
          title="Chart 2. New cases (incidence) per 100,000 population with<br> a main diagnosis of multiple sclerosis, Scotland", 
          sourc="<a href='https://www.publichealthscotland.scot/'>SMR01, PHS</a>; ICD10 code: G35, ICD9 code: 340", 
          xaxtitle="Financial year", yaxtitle="Age-sex standardised rate of <br>new cases per 100,000")

#mortality
plot_webchart(filepath="Multiple Sclerosis/ms_mortality_chart1", chart_type = "multiline",
          xvar="class1", yvar="measure", group="class2", tick_freq = 1, pal_col=palbysexoverall,
          title="Chart 1. Deaths in Scotland where multiple sclerosis was<br>the underlying cause on the death certificate, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/general-publications/vital-events-reference-tables'>NRS</a>; ICD10 code: G35", 
          xaxtitle='Year of registration', yaxtitle="Number of deaths")

#new NHS board data chart
plot_webchart(filepath="Multiple Sclerosis/ms_NHSboards_chart1", chart_type = "barcompar",
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 1. Hospital stays per 100,000 population with<br> a main diagnosis of multiple sclerosis, 2019/20", 
          sourc="<a href='https://beta.isdscotland.org/find-publications-and-data/health-services/hospital-care/acute-hospital-activity-and-nhs-beds-information-annual/'>SMR01, PHS</a>. ICD10 code G35.", 
          xaxtitle='NHS Board', yaxtitle="Crude rate per 100,000 population")

### Multiple sclerosis PRE RELEASE ACCESS

#Only secondary care charts require PRA
#Chart 590
plot_webchart(filepath="Multiple Sclerosis/ms_seccare_chart1_PRA", chart_type = "multiline", privacy = "secret",
          xvar="class2", yvar="measure", group="class1", tick_freq = 1, pal_col=palnogroups,
          title="Chart 1. New cases (incidence) per 100,000 population with<br> a main diagnosis of multiple sclerosis, Scotland", 
          sourc="<a href='https://www.publichealthscotland.scot/'>SMR01, PHS</a>; ICD10 code: G35, ICD9 code: 340", 
          xaxtitle="Financial year", yaxtitle="Age-sex standardised rate of <br>new cases per 100,000")

#Chart 592
plot_webchart(filepath="Multiple Sclerosis/ms_seccare_chart2_PRA", chart_type = "multiline", privacy = "secret",
          xvar="class2", yvar="measure", group="class1", tick_freq = 1, pal_col=pal3bysex,
          title="Chart 2. New cases (incidence) per 100,000 population with<br> a main diagnosis of multiple sclerosis, Scotland", 
          sourc="<a href='https://www.publichealthscotland.scot/'>SMR01, PHS</a>; ICD10 code: G35, ICD9 code: 340", 
          xaxtitle="Financial year", yaxtitle="Age-sex standardised rate of <br>new cases per 100,000")



############################.
### Obesity ----
############################.
#adults
plot_webchart(filepath="Obesity/obesity_adults_Chart_1", chart_type = "multibar",
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 1. Prevalence of obesity, Scotland, 2016", data_down ="1934/obesity_adults_chart_1.csv",
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='Age group', yaxtitle="Percentage")

plot_webchart(filepath="Obesity/obesity_adults_Chart_2", chart_type = "multiline",
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 2. Prevalence of obesity in <br>adults (16-64 years), Scotland", 
          sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
          xaxtitle='Year', yaxtitle="Percentage")

#children
plot_webchart(filepath="Obesity/obesity_children_chart1", chart_type = "multiline",
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 1. Children, aged 2-15 years, at risk of obesity, Scotland", 
          sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
          xaxtitle='Year', yaxtitle="Percentage")

plot_webchart(filepath="Obesity/obesity_children_chart2", chart_type = "multiline",
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 2. Children in Primary 1 at risk of obesity, Scotland", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Child-Health/Child-Health-Programme/Child-Health-Systems-Programme-School.asp'>CHSP School</a>", 
          xaxtitle='Year', yaxtitle="Percentage")
#deprivation
plot_webchart(filepath="Obesity/obesity_Deprivation_Chart_1", chart_type = "multibar",
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 1. Adults obese and morbidly obese<br>by SIMD quintile, Scotland, 2016", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='SIMD quintile', yaxtitle="Percentage")

plot_webchart(filepath="Obesity/obesity_Deprivation_Chart_2", chart_type = "multibar",
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 2. Children obese and morbidly obese<br>by SIMD quintile, Scotland, 2016", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='SIMD quintile', yaxtitle="Percentage")

plot_webchart(filepath="Obesity/obesity_Deprivation_Chart_3", 
         xvar="class1", yvar="measure", chart_type = "onebar",
         title="Chart 3. Children in Primary 1 at risk<br> of obesity, Scotland, 2015/16", 
       sourc="<a href='http://www.isdscotland.org/Health-Topics/Child-Health/Child-Health-Programme/Child-Health-Systems-Programme-School.asp'>CHSP School</a>", 
       xaxtitle='SIMD quintile', yaxtitle="Percentage")

#international
#Maybe a good example worth try subplotting
plot_webchart(filepath="Obesity/obesity_International - Chart 1", chart_type = "barcompar",
         xvar="class1", yvar="measure", comparator="scotland_2016", compname="Scotland (2016)",
         title="Chart 1. Prevalence of obesity in men by country", 
       sourc="<a href='http://stats.oecd.org/index.aspx?DataSetCode=HEALTH_STAT'>OECD: StatsExtract</a>", 
       xaxtitle='Country', yaxtitle="Percentage")

plot_webchart(filepath="Obesity/obesity_International - Chart 2", chart_type = "barcompar",
         xvar="class1", yvar="measure", comparator="scotland_2016", compname="Scotland (2016)",
       title="Chart 2. Prevalence of obesity in women by country", 
       sourc="<a href='http://stats.oecd.org/index.aspx?DataSetCode=HEALTH_STAT'>OECD: StatsExtract</a>", 
       xaxtitle='Country', yaxtitle="Percentage")

############################.
### Older People ----
############################.
plot_webchart(filepath="Older People/Older People - Chart 1", chart_type = "multibar",
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 1. Population aged 60 and over, Scotland, 2018", 
         sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-estimates'>NRS</a>", 
         xaxtitle='Age', yaxtitle="Population")

#legend overlay in Plotly
plot_webchart(filepath="Older People/Older People - Chart 2", chart_type = "multiline",
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 2. Pensioners living in households<br> of below average income, Scotland", 
          sourc="<a href='https://www.gov.uk/government/collections/households-below-average-income-hbai--2'>HBAI</a>, <a href='https://www.gov.uk/government/organisations/department-for-work-pensions'>DWP</a>", 
          xaxtitle='Year', yaxtitle="Estimated percentage")

############################.
### Oral Health----
############################.
plot_webchart(filepath="Oral Health/oral_adulttrend_chart1", chart_type = "oneline",
           xvar="class1", yvar="measure",
           title="Chart 1. Adults with no natural teeth, Scotland", 
           sourc="<a href='http://content.digital.nhs.uk/article/3894/Adult-Dental-Health-Survey'>Adult Dental Health Survey</a> & <a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
           xaxtitle="Year", yaxtitle="Percentage")

plot_webchart(filepath="Oral Health/oral_adulttrend_chart2", 
       xvar="class1", yvar="measure", chart_type = "onebar",
       title="Chart 2. Adults with no natural teeth, Scotland, 2017", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
       xaxtitle='SIMD quintile', yaxtitle="Percentage")


############################.
### Physical activity ----
############################.
#adults
plot_webchart(filepath="Physical activity/pa_agegender_csv_Chart_1", chart_type = "multibar",
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 1. Adults achieving physical activity recommendations <br> by age and sex, Scotland, 2019",
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>",
         xaxtitle='Age group', yaxtitle="Percentage")

plot_webchart(filepath="Physical activity/pa-adults-muscle-agegender-chart2", chart_type = "multibar",
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 2. Adults achieving physical activity recommendations,<br> including muscle strengthening activities per week, Scotland, 2019",
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>",
         xaxtitle='Age group', yaxtitle="Percentage")

plot_webchart(filepath="Physical activity/pa_adults_SIMD_csv_Chart_3", chart_type = "multibar",
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 3. Adults achieving physical activity<br> recommendations, by SIMD quintile, 2019",
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>",
         xaxtitle='SIMD quintile', yaxtitle="Percentage")

plot_webchart(filepath="Physical activity/pa-adults-timetrend-chart4",chart_type = "multiline",
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 4. Adults achieving physical activity<br> recommendations by sex, Scotland, 2012-2019",
          sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>",
          xaxtitle='Year', yaxtitle="Percentage")

#children
plot_webchart(filepath="Physical activity/pa_child_agegender_csv_Chart_1", chart_type = "multibar",
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 1. Children between 2-15 years old meeting<br> physical activity recommendations, Scotland, 2019",
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>",
         xaxtitle='Age group', yaxtitle="Percentage")

plot_webchart(filepath="Physical activity/pa_childrenSIMD_csv_Chart_2", chart_type = "multibar",
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 2. Children between 2-15 years old meeting<br> physical activity recommendations, by SIMD quintile, Scotland, 2019",
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>",
         xaxtitle='SIMD quintile', yaxtitle="Percentage")

plot_webchart(filepath="Physical activity/pa_children_international_chart4", chart_type = "multibar",
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 3. Girls and boys aged 15 meeting recommended<br> levels of physical activity in HSBC countries, 2013/14",
         sourc="<a href='http://www.hbsc.org/'>Health Behaviour in School-aged Children Survey</a>",
         xaxtitle='Country', yaxtitle="Percentage")

############################.
### Physical environment ----
############################.
#active travel
plot_webchart(filepath="Physical environment/Active travel - Chart 1", chart_type = "stackedbar",
           xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
           title="Chart 1. Journeys made by main mode of transport", 
           sourc="<a href='https://www.transport.gov.scot/publication/transport-and-travel-in-scotland-2017/'>Transport Scotland</a>", 
           xaxtitle="Year", yaxtitle="Percentage journeys made")

#environmental justice
plot_webchart(filepath="Physical environment/environmental_justice_chart1", 
       xvar="class1", yvar="measure", chart_type = "onebar",
       title="Chart 1. Population within 1 km of an IPCC site*, Scotland", 
       sourc="<a href='http://eprints.staffs.ac.uk/1828/'>Fairburn et al. 2005</a><br> *sites falling within the scope of the Industrial Pollution Prevention and Control directive", 
       xaxtitle='SIMD quintile', yaxtitle="Percentage")

plot_webchart(filepath="Physical environment/environmental_justice_chart2", 
       xvar="class1", yvar="measure", chart_type = "onebar",
       title="Chart 2. Population within 1 km of derelict land, Scotland", 
       sourc="<a href='http://eprints.staffs.ac.uk/1828/'>Fairburn et al. 2005</a>", 
       xaxtitle='SIMD quintile', yaxtitle="Percentage")

plot_webchart(filepath="Physical environment/environmental_justice_chart3", 
       xvar="class1", yvar="measure", chart_type = "onebar",
       title="Chart 3. Population within 1km of a river<br> with poor/polluted water quality, Scotland", 
       sourc="<a href='http://eprints.staffs.ac.uk/1828/'>Fairburn et al. 2005</a>", 
       xaxtitle='SIMD quintile', yaxtitle="Percentage")

#green spaces
plot_webchart(filepath="Physical environment/Greenspace SIMD - Chart 1", 
       xvar="class1", yvar="measure", chart_type = "onebar",
       title="Chart 1. Adults living within a 5 minute walk <br> of greenspace, Scotland, 2017", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/16002'>Scottish Household Survey</a>", 
       xaxtitle='SIMD quintile', yaxtitle="Percentage")

plot_webchart(filepath="Physical environment/Greenspace SIMD - Chart2", 
       xvar="class1", yvar="measure", chart_type = "onebar",
       title="Chart 2. Adults satisfied/fairly satisfied with<br>local greenspace, Scotland, 2017", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/16002'>Scottish Household Survey</a>", 
       xaxtitle='SIMD quintile', yaxtitle="Percentage")

#housing
plot_webchart(filepath="Physical environment/Housing failing standard - Chart 1", 
       xvar="class1", yvar="measure", chart_type = "onebar",
       title="Chart 1. Dwellings failing the Scottish <br>Housing Quality Standard by tenure, 2014", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/SHCS'>Scottish House Condition Survey</a>", 
       xaxtitle='Housing tenure', yaxtitle="Percentage")

plot_webchart(filepath="Physical environment/Housing overcrowded - Chart 2", 
       xvar="class1", yvar="measure", chart_type = "onebar",
       title="Chart 2. Households overcrowded as defined by<br>the bedroom standard by tenure, Scotland, 2014", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/SHCS'>Scottish House Condition Survey</a>", 
       xaxtitle='Housing tenure', yaxtitle="Percentage")

#maintenance
plot_webchart(filepath="Physical environment/Maintenance - Chart 1", 
       xvar="class1", yvar="measure", chart_type = "onebar",
       title="Chart 1. Adults saying that rubbish/litter lying around<br>is very/fairly common in their neighbourhood, Scotland, 2017", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/16002'>Scottish Household Survey</a>", 
       xaxtitle='SIMD decile', yaxtitle="Percentage")

#traffic
plot_webchart(filepath="Physical environment/Traffic - Chart 1", 
       xvar="class1", yvar="measure", chart_type = "oneline",
       title="Chart 1. Driver journeys delayed by congestion, Scotland", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/16002'>Scottish Household Survey</a>", 
       xaxtitle='Year', yaxtitle="Percentage")

############################.
### Population ----
############################.
#Household projections
plot_webchart(filepath="Population/pop_house_chart1",  chart_type = "multibar",
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 1. Projected change in household type, Scotland", 
         sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/housholds/household-projections'>NRS</a>", 
         xaxtitle="Household type", yaxtitle="Percentage")

plot_webchart(filepath="Population/pop_house_chart2", chart_type = "barcompar",
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 2. Projected change in household numbers by council", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/housholds/household-projections'>NRS</a>", 
          xaxtitle='Council', yaxtitle="Percentage")

#Pop projections
#Y axis range change in plotly
plot_webchart(filepath="Population/pop_scot_proj_chart1", 
        xvar="class1", yvar="rounded_pop", chart_type = "oneline",
        title="Chart 1. Projected population, Scotland", 
        sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-projections'>NRS</a>", 
        xaxtitle="Year", yaxtitle="Population")

plot_webchart(filepath="Population/pop_scot_proj_chart2", chart_type = "multiline",
          xvar="class2", yvar="rounded_pop", group="class1", pal_col=palnogroups,
          title="Chart 2. Projected population by age group, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-projections'>NRS</a>", 
          xaxtitle="Year", yaxtitle="Population")

plot_webchart(filepath="Population/pop_hb_proj_chart3",  chart_type = "multibar",
         xvar="class1", yvar="rounded_pop", group="class2", pal_col=palnogroups,
         title="Chart 3. Population projection by NHS Board, Scotland", 
         sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-projections'>NRS</a>", 
         xaxtitle='Health board', yaxtitle="Population")

plot_webchart(filepath="Population/pop_hb_proj_chart4",
       xvar="class1", yvar="measure", chart_type = "onebar", order = T,
       title="Chart 4. Projected change in population<br> by NHS Board: 2018-2043", 
       sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-projections'>NRS</a>", 
       xaxtitle='Health board', yaxtitle="Percentage")

plot_webchart(filepath="Population/pop_la_proj_chart5", chart_type = "multibar",
         xvar="class1", yvar="rounded_pop", group="class2", pal_col=palnogroups,
         title="Chart 5. Population projection by council, Scotland", 
         sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-projections'>NRS</a>", 
         xaxtitle='Council', yaxtitle="Population")

plot_webchart(filepath="Population/pop_la_proj_chart6",
       xvar="class1", yvar="measure", chart_type = "onebar", order = T,
       title="Chart 6. Projected change in population<br> by council: 2018-2043", 
       sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-projections'>NRS</a>", 
       xaxtitle='Council', yaxtitle="Percentage")

#Pop estimation
plot_webchart(filepath="Population/pop_scot_est_chart1", 
       xvar="class1", yvar="rounded_pop", chart_type = "onebar",
       title="Chart 1. Population by age group, Scotland, 2019", 
       sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/-by-theme/population/population-estimates'>NRS</a>", 
       xaxtitle='Age group', yaxtitle="Population")

#Y axis range change in plotly
plot_webchart(filepath="Population/pop_scot_est_chart2", 
        xvar="class1", yvar="rounded_pop", chart_type = "oneline",
        title="Chart 2. Population trend, Scotland", 
        sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-estimates'>NRS</a>", 
        xaxtitle="Year", yaxtitle="Population")

plot_webchart(filepath="Population/pop_hb_est_chart3", horizontal = T, chart_type = "stackedbar",
           yvar="area", xvar="measure", group="age_group", pal_col=palnogroups,
           title="Chart 3. Age structure of <br>health boards, Scotland, 2019", 
           sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-estimates'>NRS</a>", 
           yaxtitle="", xaxtitle="Percentage of the population")

plot_webchart(filepath="Population/pop_la_est_chart4",  horizontal = T, chart_type = "stackedbar",
           yvar="area", xvar="measure", group="age_group", pal_col=palnogroups,
           title="Chart 4. Age structure of <br>council areas, Scotland, 2019", 
           sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-estimates'>NRS</a>", 
           yaxtitle="", xaxtitle="Percentage of the population")

############################.
### Religion, Spirituality and Belief ----
############################.
plot_webchart(filepath="Religion, Spirituality and Belief/Religion - Chart 1", chart_type = "multibar",
        xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
        title="Chart 1. Proportion of the Scottish population by religion,<br> 2001 and 2011",
        sourc="<a href='https://www.scotlandscensus.gov.uk/'>Scotland's Census</a>",
        xaxtitle="Religion", yaxtitle="Proportion of the population")

############################.
### Rurality----
############################.
plot_webchart(filepath="Rurality/Rurality_Chart_1", chart_type = "multibar",
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 1. Life expectancy for Urban-Rural<br> areas, Scotland, 2014-2016", 
         sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/life-expectancy/life-expectancy-in-scottish-areas/2014-2016/list-of-tables'>NRS</a>", 
         xaxtitle='2013-14 Urban-Rural classification', yaxtitle="Life expectancy at birth")

plot_webchart(filepath="Rurality/Rurality_Chart_2", chart_type = "stackedbar",
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 2. Population estimates across the Urban-Rural<br> classification, Scotland, 2016", 
           sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-estimates/2011-based-special-area-population-estimates/population-estimates-by-urban-rural-classification'>NRS</a>", 
           xaxtitle="2013-14 Urban-Rural classification", yaxtitle="Population")

############################.
### Social environment ----
############################.
#civic participation
plot_webchart(filepath="Social Environment/Civic_participation_Chart_1", chart_type = "barcompar",
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 1. People who agree with the statement: 'I can<br>influence decisions affecting my local area', Scotland, 2018", 
          sourc="<a href='https://www.gov.scot/collections/scottish-household-survey/'>Scottish Household Survey</a>", 
          xaxtitle='Council', yaxtitle="Percentage")

#Edited in plotly: x axis labels
plot_webchart(filepath="Social Environment/Civic_participation_Chart_2", 
          xvar="class1", yvar="measure", chart_type = "onebar",
          title="Chart 2. Voter turnout: 2016 Scottish Parliamentary Elections", 
          sourc="<a href='https://www.electoralcommission.org.uk/scotland'>Electoral Comission</a>", 
          xaxtitle='Constituency', yaxtitle="Percentage")

plot_webchart(filepath="Social Environment/Civic_participation_Chart_3", chart_type = "barcompar",
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 3. Voter turnout: Scottish independence referendum", 
          sourc="<a href='https://www.electoralcommission.org.uk/scotland'>Electoral Comission</a> and BBC", 
          xaxtitle='Council', yaxtitle="Percentage")

plot_webchart(filepath="Social Environment/Civic_participation_Chart_4", 
       xvar="class1", yvar="measure", chart_type = "oneline",
       title="Chart 4. Scotland voter turnout: UK Parliament elections", 
       sourc="1945-2015: <a href='http://www.ukpolitical.info/'>UK Political Info</a>; 2017-2019: <a href='https://commonslibrary.parliament.uk/general-election-2019-turnout/'>UK Parliament</a>", 
       xaxtitle='Year', yaxtitle="Percentage")

#Lone parents
plot_webchart(filepath="Social Environment/lone_parent_chart1", chart_type = "barcompar",
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 1. Households with dependent children <br>which are lone parent households by NHS Board", 
          sourc="<a href='http://www.scotlandscensus.gov.uk/'>Census 2011</a>", 
          xaxtitle='Health board', yaxtitle="Percentage")

plot_webchart(filepath="Social Environment/lone_parent_chart2", chart_type = "barcompar",
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 2. Households with dependent children <br>which are lone parent households by council", 
          sourc="<a href='http://www.scotlandscensus.gov.uk/'>Census 2011</a>", 
          xaxtitle='Council', yaxtitle="Percentage")

plot_webchart(filepath="Social Environment/lone_parent_chart3", 
        xvar="class1", yvar="measure", chart_type = "oneline",
        title="Chart 3. Households with dependent children <br>which are lone parent households, Scotland", 
        sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/housholds/household-estimates'>NRS</a>", 
        xaxtitle='Year', yaxtitle="Percentage")

#lone pensioners
plot_webchart(filepath="Social Environment/lone_pensioner_chart1", chart_type = "barcompar",
       xvar="class1", yvar="measure",  comparator="comparator", compname="Scotland",
       title="Chart 1. Lone pensioner households <br>by local authority area, 2018", 
       sourc="<a href='https://www.gov.scot/collections/scottish-household-survey/'>Scottish Household Survey</a>", 
       xaxtitle='Local authority', yaxtitle="Percentage")

# Author asked for this to be removed
# plot_webchart(filepath="Social Environment/lone_pensioner_chart2", chart_type = "barcompar",
#        xvar="class1", yvar="measure",  comparator="comparator", compname="Scotland",
#        title="Chart 2. Lone pensioner households by council", 
#        sourc="<a href='http://www.scotlandscensus.gov.uk/'>Census 2011</a>", 
#        xaxtitle='Council', yaxtitle="Percentage")

#providers of unpaid care
plot_webchart(filepath="Social Environment/unpaid_carers_chart1", chart_type = "barcompar",
       xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
       title="Chart 1. People providing any unpaid care <br>by NHS board of residence, 2011",
       sourc="<a href='http://www.scotlandscensus.gov.uk/'>Census 2011</a>", 
       xaxtitle='Health board', yaxtitle="Percentage")

plot_webchart(filepath="Social Environment/unpaid_carers_chart2", chart_type = "barcompar",
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
       title="Chart 2. People providing any unpaid care by council, 2011",
       sourc="<a href='http://www.scotlandscensus.gov.uk/'>Census 2011</a>", 
       xaxtitle='Council', yaxtitle="Percentage")

#rating of neighbourhood
plot_webchart(filepath="Social Environment/neighb_rating_chart1", chart_type = "barcompar",
       xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
       title="Chart 1. People rating their neighbourhood as a <br>'Very good' or 'Fairly good' place to live, Scotland, 2018 ", 
       sourc="<a href='https://www.gov.scot/collections/scottish-household-survey/'>Scottish Household Survey</a>", 
       xaxtitle='Council', yaxtitle="Percentage")

plot_webchart(filepath="Social Environment/neighb_rating_chart2", chart_type = "barcompar",
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
       title="Chart 2. People rating their neighbourhood as a <br>'Very good' or 'Fairly good' place to live by SIMD decile, Scotland, 2019", 
       sourc="<a href='https://www.gov.scot/collections/scottish-household-survey/'>Scottish Household Survey</a>", 
       xaxtitle='SIMD decile', yaxtitle="Percentage")

#volunteering
plot_webchart(filepath="Social Environment/volunteering_chart1", chart_type = "barcompar",
       xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
       title="Chart 1. Adults who provided unpaid help to organisations <br>or groups in the last 12 months, Scotland, 2018", 
       sourc="<a href='https://www.gov.scot/collections/scottish-household-survey/'>Scottish Household Survey</a>", 
       xaxtitle='Council', yaxtitle="Percentage")

############################.
### Smoking ----
############################.
###############################.
#admissions
plot_webchart(filepath="Smoking/smoking_admissions_chart1", chart_type = "multiline_dashed",
        xvar="class1", yvar="measure", group="class2", pal_col=palnogroups, yvar_dashed = "measure2",
        title="Chart 1. Hospital admissions attributable to smoking, Scotland", 
        sourc="<a href='http://isdscotland.org/Health-Topics/Public-Health/Smoking-Cessation.asp'>PHS</a>, please be aware that there are no data available for the period 2004-2007", 
        xaxtitle="Year", yaxtitle="Age-sex standardised rate per 100,000")

plot_webchart(filepath="Smoking/smoking_admissions_sex_chart2", chart_type = "multiline_dashed",
          xvar="class1", yvar="measure", group="class2", pal_col=palnogroups, yvar_dashed = "measure2",
          title="Chart 2. Hospital admissions attributable to smoking<br> by gender, Scotland", 
          sourc="<a href='http://isdscotland.org/Health-Topics/Public-Health/Smoking-Cessation.asp'>PHS</a>, please be aware that there are no data available for the period 2004-2007", 
          xaxtitle="Year", yaxtitle="Age standardised rate per 100,000")

plot_webchart(filepath="Smoking/smoking_admissions_age_chart3", chart_type = "multiline_dashed",
          xvar="class1", yvar="measure", group="class2", pal_col=pal_five_gradient,yvar_dashed = "measure2",
          title="Chart 3. Hospital admissions attributable to smoking <br>by age group, Scotland", 
          sourc="<a href='http://isdscotland.org/Health-Topics/Public-Health/Smoking-Cessation.asp'>PHS</a>, please be aware that there are no data available for the period 2004-2007", 
          xaxtitle="Year", yaxtitle="Sex standardised rate per 100,000")

plot_webchart(filepath="Smoking/smoking_admissions_simd_chart4", chart_type = "multiline",
          xvar="class1", yvar="measure", group="class2", pal_col=pal_five_gradient,
          title="Chart 4. Hospital admissions attributable to smoking<br>by SIMD quintile, Scotland", 
          sourc="<a href='http://isdscotland.org/Health-Topics/Public-Health/Smoking-Cessation.asp'>PHS</a>", 
          xaxtitle="Year", yaxtitle="Age-sex standardised rate per 100,000")

plot_webchart(filepath="Smoking/smoking_admissions_disease_chart5", 
         xvar="class1", yvar="measure", chart_type = "onebar",
         title="Chart 5. Hospital admissions attributable to smoking <br>by disease grouping, 2017, Scotland", 
         sourc="<a href='http://isdscotland.org/Health-Topics/Public-Health/Smoking-Cessation.asp'>PHS</a>, Expressed as a percentage of all diagnosis that could be attributed to smoking", 
         xaxtitle="Disease group", yaxtitle="Percentage attributable")

###########.
#deaths
plot_webchart(filepath="Smoking/smoking_deaths_sex_chart1",  chart_type = "multiline_dashed",
                 xvar="class1", yvar="measure", yvar_dashed = "measure2", group="class2", pal_col=palbysexoverall,
                 title="Chart 1. Deaths attributable to smoking by sex, </br>Scotland; 2003, 2008-2017", 
                 sourc="<a href='http://isdscotland.org/Health-Topics/Public-Health/Smoking-Cessation.asp'>PHS</a>, please be aware that there are no data available for the period 2004-2007", 
                 xaxtitle="Year", yaxtitle="Age standardised rate per 100,000")

plot_webchart(filepath="Smoking/smoking_deaths_age_chart2",  chart_type = "multiline_dashed",
                 xvar="class1", yvar="measure", yvar_dashed = "measure2", group="class2", pal_col=pal_five_gradient,
                 title="Chart 2. Deaths attributable to smoking by age group, </br>Scotland; 2003, 2008-2017", 
                 sourc="<a href='http://isdscotland.org/Health-Topics/Public-Health/Smoking-Cessation.asp'>PHS</a>, please be aware that there are no data available for the period 2004-2007", 
                 xaxtitle="Year", yaxtitle="Sex standardised rate per 100,000")

plot_webchart(filepath="Smoking/smoking_deaths_simd_chart3", chart_type = "multiline",
          xvar="class1", yvar="measure", group="class2", pal_col=pal_five_gradient,
          title="Chart 3. Deaths attributable to smoking by<br> SIMD quintile, Scotland; 2008-2017", 
          sourc="<a href='http://isdscotland.org/Health-Topics/Public-Health/Smoking-Cessation.asp'>PHS</a>", 
          xaxtitle="Year", yaxtitle="Age-sex standardised rate per 100,000")

plot_webchart(filepath="Smoking/smoking_deaths_disease_chart4", chart_type = "multibar",
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 4. Deaths attributable to smoking as a percentage of<br> all deaths in each disease grouping, 2017, Scotland", 
         sourc="<a href='http://isdscotland.org/Health-Topics/Public-Health/Smoking-Cessation.asp'>PHS</a>", 
         xaxtitle="Disease group", yaxtitle="Percentage attributable")

############################.
### Suicide ----
############################.
plot_webchart(filepath="Suicide/suicide_national_chart1", chart_type = "multiline",
          xvar="class1", yvar="measure", group="class2", pal_col=palbysexoverall,
          title="Chart 1. Suicide rates, Scotland, all ages", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/suicides'>NRS</a>", 
          xaxtitle="Year", yaxtitle="Age-sex standardised rate per 100,000")

plot_webchart(filepath="Suicide/suicide_national_chart2", chart_type = "multibar",
          xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
          title="Chart 2. Male deaths from suicide<br>over time by age group, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/suicides'>NRS</a>", 
          xaxtitle="Age group", yaxtitle="Age-specific crude rate per 100,000")

plot_webchart(filepath="Suicide/suicide_national_chart3", chart_type = "multibar",
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 3. Female deaths from suicide<br>over time by age group, Scotland", 
         sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/suicides'>NRS</a>", 
         xaxtitle="Age group", yaxtitle="Age-specific crude rate per 100,000")

plot_webchart(filepath="Suicide/suicide_national_chart4", chart_type = "multiline",
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 4. Deaths from intentional self harm and events<br>of undetermined intent, Scotland", 
         sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/suicides'>NRS</a>", 
         xaxtitle="Year", yaxtitle="Age-sex standardised rate per 100,000")

plot_webchart(filepath="Suicide/suicide_uk_chart1", chart_type = "multiline",
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 1. Suicide death rates by UK country", 
          sourc="<a href='https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/deaths/datasets/suicidesintheunitedkingdomreferencetables'>ONS</a>, <a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/suicides'>NRS</a> & <a href='https://www.nisra.gov.uk/statistics/cause-death/suicide-deaths'>NISRA</a>", 
          xaxtitle="Year", yaxtitle="European age-standardised rate per 100,000")

##PRE-RELEASE ACCESS
plot_webchart(filepath="Suicide/suicide_national_chart1_PRA", chart_type = "multiline", privacy = "secret", static = T,
          xvar="class1", yvar="measure", group="class2", pal_col=palbysexoverall,
          title="Chart 1. Suicide rates, Scotland, all ages", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/suicides'>NRS</a>", 
          xaxtitle="Year", yaxtitle="Age-sex standardised rate per 100,000")

plot_webchart(filepath="Suicide/suicide_national_chart2_PRA", chart_type = "multibar", privacy = "secret", static = T,
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 2. Male deaths from suicide<br>over time by age group, Scotland", 
         sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/suicides'>NRS</a>", 
         xaxtitle="Age group", yaxtitle="Age-specific crude rate per 100,000")

plot_webchart(filepath="Suicide/suicide_national_chart3_PRA", chart_type = "multibar", privacy = "secret", static = T,
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 3. Female deaths from suicide<br>over time by age group, Scotland", 
         sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/suicides'>NRS</a>", 
         xaxtitle="Age group", yaxtitle="Age-specific crude rate per 100,000")

plot_webchart(filepath="Suicide/suicide_national_chart4_PRA", chart_type = "multiline", privacy = "secret", static = T,
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 4. Deaths from intentional self harm and events<br>of undetermined intent, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/suicides'>NRS</a>", 
          xaxtitle="Year", yaxtitle="Age-sex standardised rate per 100,000")

plot_webchart(filepath="Suicide/suicide_uk_chart1_PRA", chart_type = "multiline", privacy = "secret", static = T,
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 1. Suicide death rates by UK country", 
          sourc="<a href='https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/deaths/datasets/suicidesintheunitedkingdomreferencetables'>ONS</a>, <a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/suicides'>NRS</a> & <a href='https://www.nisra.gov.uk/statistics/cause-death/suicide-deaths'>NISRA</a>", 
          xaxtitle="Year", yaxtitle="European age-standardised rate per 100,000")

############################.
### Violence ----
############################.
plot_webchart(filepath="Violence/Violence - National trends Chart 1", chart_type = "multiline",
        xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
        title="Chart 1. Non-sexual crimes of violence recorded <br>by the police, Scotland", 
        sourc="<a href='https://www.gov.scot/collections/recorded-crime-in-scotland/'>Scottish Government</a>", 
        xaxtitle="Financial year", yaxtitle="Number of crimes")

plot_webchart(filepath="Violence/Violence - National trends Chart 2", chart_type = "multiline",
        xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
        title="Chart 2. Rates of non-sexual crimes of violence<br>recorded by the police, Scotland", 
        sourc="<a href='https://www.gov.scot/collections/recorded-crime-in-scotland/'>Scottish Government</a>", 
        xaxtitle="Financial year", yaxtitle="Rate per 10,000")

plot_webchart(filepath="Violence/Violence - Health data Chart 1", chart_type = "multibar",
          xvar="class2", yvar="measure", group="class1",  pal_col=palnogroups,
          title="Chart 1. Attendances rates to emergency departments<br>due to interpersonal violence at NHS Lothian in 2013", 
          sourc="<a href='https://www.scotphn.net/wp-content/uploads/2015/10/Report-Violence-Prevention-A-Public-Health-Priority-December-2014.pdf'>Conaglen & Gallimore, 2014</a>", 
          xaxtitle="Age group", yaxtitle="Rate per 1,000")


##END
