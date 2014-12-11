# -*- coding: utf-8 -*-
"""
Created on Thu Dec 04 09:58:09 2014

@author: eengel
"""

import pandas
import numpy as np
import matplotlib.pyplot as plt

#LOAD_WDI=True#choose whether to load the large file or a working subset
#
#countrylist=['China',
#             'East Asia & Pacific (all income levels)',
#             'Hong Kong SAR, China',
#             'Singapore',
#             'Korea, Rep.',
#             'South Asia']
#indicatorlist=['GDP growth (annual %)',
#                'GDP (constant LCU)',
#                'Employment to population ratio, 15+, female (%) (modeled ILO estimate)',
#                'Wage and salaried workers, female (% of females employed)',
#                'Urban population growth (annual %)',
#                'Urban population (% of total)',
#                'GDP per capita (current US$)',
#                'GDP (current US$)']
#
#if LOAD_WDI:
#    data=pandas.read_csv('WDI_Data.csv')#the whole thing!!!
#    countries=pandas.read_csv('WDI_Country.csv')
#    countries=countries[['Country Code','Region']]
#    data=data.merge(countries, on='Country Code')
#    
#    #choose rows that match a specific indicator
#    rows=False*len(data)
#    for indicator in indicatorlist:
#        rows=rows|(data['Indicator Name']==indicator)
#    data=data[rows]
#    
#    #choose rows that match a specific country
#    rows=False*len(data)
#    for country in countrylist:
#        rows=rows|(data['Country Name']==country)
#    data=data[rows]
#    
#    data.to_csv('selected_data.csv')#write to a new csv file for simplicity
#else:
#    data=pandas.read_csv('selected_data.csv')# load smaller csv
#
##sort by specific column and add rank column
#rankcol='2012'
#data=data.sort(rankcol)
#data['Rank']=range(1,len(data)+1)
#
##print data.keys()#print available columns
##print data
#
#
##data=data.fillna(method='pad')#forward fill; DANGEROUS!!!
##data=data.fillna(0)#fill with constant; DANGEROUS!!!
#
#years=[]
#for year in range(1960,2013+1):years.append(str(year))
#    
##choose rows again to find data on a specific country
##print data[data['Country Name']=='India']
##print data['2012'][data['Country Name']=='India']
#
#regioncolors={'South Asia':(0,1,1), 'Europe & Central Asia':(1,.7,0), 
#              'Middle East & North Africa':(0,1,0), 'East Asia & Pacific':(1,0,0),
#              'Sub-Saharan Africa':(0,0,1), 'Latin America & Caribbean':(1,1,0)}
#color=['blue','red','purple','green','orange','cyan','brown','lime','yellow',
#       'teal','crimson','coral','khaki','gold','salmon']              
#              
#shift_regions=.0
#deltaregion={'South Asia':100**shift_regions,
#             'Europe & Central Asia':10**shift_regions, 
#              'Middle East & North Africa':.1**shift_regions,
#              'East Asia & Pacific':1000**shift_regions,
#              'Sub-Saharan Africa':.01**shift_regions,
#              'Latin America & Caribbean':.001**shift_regions}  
#
#mymarkersize=100    
##Choose indicator to plot
#indicator=indicatorlist[5]
#


plt.close('all')


n_groups=5
female=(35.7,
        42.48,
        31.59,
        32.6,
        43.44
)

participation=(47.3,
               46.3,
               31.1,
               34.2,
               53.7
               
)


fig, ax = plt.subplots()
index = np.arange(n_groups)
bar_width = 0.45

opacity = 0.4


rects1 = plt.bar(index, female, bar_width,
                 alpha=opacity,
                 color='red')

rects2 = plt.bar(index + bar_width, participation, bar_width,
                 alpha=opacity,
                 color='green')

plt.xticks(index + bar_width, ('China (96)/(13)',
    'Singapore (98)/(13)',
    'South Korea (98)/(11)',
    'Taiwan (00)/(11)',
    'Hong Kong (96)/(11)'
),rotation=45)
plt.legend()

plt.tight_layout()
plt.show()

#plt.grid(which='both')
#plt.ylim([0,100])
#plt.xlabel('Years',fontsize=14)
plt.ylabel('GINI index',fontsize=14)
#plt.rc('xtick', labelsize=14) 
#plt.rc('ytick', labelsize=14)
#plt.legend(countrylist,loc='upper right', fancybox=True, framealpha=0.3)