import pandas
import numpy as np
import matplotlib.pyplot as plt


#read in our data as a pandas DataFrame (essentially a table)
#this data is downloaded from the world bank world development indicators
#It's a csv, with null fields left blank
#If you represent null fields some other way, you'll need to change any of my lines that remove or check for nulls to check for your symbol
data=pandas.read_csv('Pop.csv')
#data=pandas.read_csv('WDI_Data.csv')#the whole thing!!!

countries=pandas.read_csv('WDI_Country.csv')
countries=countries[['Country Code','Region']]
data=data.merge(countries, on='Country Code')
#print datarows

#choose rows that match specific data in a specific column
indicator='Population, total'
rows=data['Indicator Name']==indicator
datarows=data[rows]
#datarows.to_csv('Pop.csv')



#sort by specific column and add rank column
mycolumns='2012'
datarows=datarows.sort(mycolumns)
datarows['Rank']=range(1,len(datarows)+1)
#print datarowscols['2012'][datarowscols['Country Name']=='India']

#chooses specific columns
#datarowscols=datarows[['Country Name','Indicator Name','Region',mycolumns]]
#print datarowscols
#print datarowscols[[1]]
#print datarowscols[['Country Name',columns]]

#choose rows again
#rows=datarowscols['Country Name']=='India'
#countrydata=datarowscols[rows]
#print countrydata

#labels=datarowscols['Country Name']

regioncolors={'South Asia':(0,1,1), 'Europe & Central Asia':(1,.7,0), 
              'Middle East & North Africa':(0,1,0), 'East Asia & Pacific':(1,0,0),
              'Sub-Saharan Africa':(0,0,1), 'Latin America & Caribbean':(1,1,0)}  
deltaregion={'South Asia':50, 'Europe & Central Asia':10, 
              'Middle East & North Africa':.1, 'East Asia & Pacific':200,
              'Sub-Saharan Africa':.02, 'Latin America & Caribbean':.005}  
mymarkersize=30

plt.close('all')
#plt.xticks(range(len(labels)),labels.values, rotation=45)
plt.figure(1,figsize=(16, 8), dpi=100)
for region in regioncolors:
    aux=datarows[datarows['Region']==region]
    plt.semilogx(aux[mycolumns]*deltaregion[region],aux['Rank'],'o',
                 markersize=mymarkersize,alpha=0.3,color=regioncolors[region],
                 markeredgecolor=[x*.1 for x in regioncolors[region]],linewidth=20)
for region in regioncolors:
    plt.semilogx(datarows[mycolumns]*deltaregion[region], datarows['Rank'],'-',
                 alpha=0.5, color=regioncolors[region])
                 
plt.semilogx(datarows[mycolumns],datarows['Rank'],'o',
                 markersize=70,alpha=0.3,color=[x*.6 for x in (1,1,.9)],
                 markeredgecolor=(0,0,0),linewidth=20)
plt.semilogx(datarows[mycolumns],datarows['Rank'],'-',alpha=0.9,
             color=(0,0,0))

plt.title(indicator+', '+mycolumns)
plt.grid(which='both')
plt.xlabel('Population')
plt.ylabel('Rank')
plt.xlim([1e2,1e12])
plt.legend([region for region in regioncolors],loc='lower right')
#plt.xticks(datarowscols[columns],labels.values, rotation=45)