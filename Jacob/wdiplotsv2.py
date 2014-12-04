import pandas
import numpy as np
import matplotlib.pyplot as plt


#read in our data as a pandas DataFrame (essentially a table)
#Data from the world bank at
#http://databank.worldbank.org/data/download/WDI_csv.zip

LOAD_WDI=False#choose whether to load the large file or a working subset

countrylist=['China',
             'East Asia & Pacific (all income levels)',
             'Hong Kong SAR, China',
             'Singapore',
             'Korea, Rep.',
             'South Asia']
indicatorlist=['Population, total',
                'Persistence to last grade of primary, total (% of cohort)',                
                'Literacy rate, adult total (% of people ages 15 and above)',
                'GINI index',
                'Income share held by lowest 20%',
                'Income share held by second 20%',
                'Income share held by third 20%',
                'Income share held by fourth 20%',
                'Income share held by highest 20%',
                'Income share held by lowest 10%',
                'Income share held by highest 10%',
                'GDP per capita (current US$)']

if LOAD_WDI:
    data=pandas.read_csv('WDI_Data.csv')#the whole thing!!!
    countries=pandas.read_csv('WDI_Country.csv')
    countries=countries[['Country Code','Region']]
    data=data.merge(countries, on='Country Code')
    
    #choose rows that match a specific indicator
    rows=False*len(data)
    for indicator in indicatorlist:
        rows=rows|(data['Indicator Name']==indicator)
    data=data[rows]
    
    #choose rows that match a specific country
    rows=False*len(data)
    for country in countrylist:
        rows=rows|(data['Country Name']==country)
    data=data[rows]
    
    data.to_csv('selected_data.csv')#write to a new csv file for simplicity
else:
    data=pandas.read_csv('selected_data.csv')# load smaller csv

#sort by specific column and add rank column
rankcol='2012'
data=data.sort(rankcol)
data['Rank']=range(1,len(data)+1)
    
#print data.keys()#print available columns
#print data


#data=data.fillna(method='pad')#forward fill; DANGEROUS!!!
#data=data.fillna(0)#fill with constant; DANGEROUS!!!

years=[]
for year in range(1960,2013+1):years.append(str(year))
    
#choose rows again to find data on a specific country
#print data[data['Country Name']=='India']
#print data['2012'][data['Country Name']=='India']

regioncolors={'South Asia':(0,1,1), 'Europe & Central Asia':(1,.7,0), 
              'Middle East & North Africa':(0,1,0), 'East Asia & Pacific':(1,0,0),
              'Sub-Saharan Africa':(0,0,1), 'Latin America & Caribbean':(1,1,0)}
color=['blue','red','purple','green','orange','cyan','brown','lime','yellow',
       'teal','crimson','coral','khaki','gold','salmon']              
              
shift_regions=.0
deltaregion={'South Asia':100**shift_regions,
             'Europe & Central Asia':10**shift_regions, 
              'Middle East & North Africa':.1**shift_regions,
              'East Asia & Pacific':1000**shift_regions,
              'Sub-Saharan Africa':.01**shift_regions,
              'Latin America & Caribbean':.001**shift_regions}  

mymarkersize=20    
#Choose indicator to plot
indicator=indicatorlist[11]

plt.close('all')
fig=plt.figure(1,figsize=(16, 8), dpi=60)
colorindex=0 #cycle colors
for country in countrylist:
    plt.plot(range(1960,2013+1),data[years][(data['Country Name']==country)&
        (data['Indicator Name']==indicator)].values[0],'o',
        markersize=mymarkersize,alpha=0.3,color=color[colorindex],
        markeredgecolor=(0,0,0))
    colorindex +=1

#plt.title(indicator+', '+rankcol)
plt.grid(which='both')
plt.xlabel('Years')
plt.ylabel(indicator)
plt.legend(countrylist,loc='upper left')
#plt.xlim([1e2,1e12])
#plt.ylim([1,len(data)])

#plt.xticks(data[columns],labels.values, rotation=45)