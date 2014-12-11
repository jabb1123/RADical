import pandas
import numpy as np
import matplotlib.pyplot as plt
from scipy.interpolate import spline


#read in our data as a pandas DataFrame (essentially a table)
#Data from the world bank at
#http://databank.worldbank.org/data/download/WDI_csv.zip

LOAD_WDI=True#choose whether to load the large file or a working subset

countrylist=['China',
             'Hong Kong SAR, China',
             'Taiwan',
             'Singapore',
             'Korea, Rep.']
indicatorlist=['GDP growth (annual %)',
                'Urban population growth (annual %)',
                'Urban population (% of total)',
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

years_broke = []
for year in range(1980,2013+1):years_broke.append(str(year))
 
#choose rows again to find data on a specific country
#print data[data['Country Name']=='India']
#print data['2012'][data['Country Name']=='India']

regioncolors={'South Asia':(0,1,1), 'Europe & Central Asia':(1,.7,0), 
              'Middle East & North Africa':(0,1,0), 'East Asia & Pacific':(1,0,0),
              'Sub-Saharan Africa':(0,0,1), 'Latin America & Caribbean':(1,1,0)}
color=['red','salmon','crimson','blue','cyan','coral','brown','lime','yellow',
       'teal','crimson','coral','khaki','gold','salmon']              
              
shift_regions=.0
deltaregion={'South Asia':100**shift_regions,
             'Europe & Central Asia':10**shift_regions, 
              'Middle East & North Africa':.1**shift_regions,
              'East Asia & Pacific':1000**shift_regions,
              'Sub-Saharan Africa':.01**shift_regions,
              'Latin America & Caribbean':.001**shift_regions}  

mymarkersize=100    
#Choose indicator to plot
#plt.close('all')
colorindex=0 #cycle colors
for indicator in indicatorlist:
    colorindex=0
    fig=plt.figure(figsize=(12, 8), dpi=80)
    for country in countrylist:
        if country == 'Taiwan' and indicator == 'GDP per capita (current US$)':
            x = np.array(range(1980,2013+1))
            y = np.array(data[years_broke][(data['Country Name']==country)&(data['Indicator Name']==indicator)].values[0])
        else:
            x = np.array(range(1960,2013+1))
            y = np.array(data[years][(data['Country Name']==country)&(data['Indicator Name']==indicator)].values[0])
        x_smooth = np.linspace(x.min(),x.max(), 100)
        y_smooth = spline(x, y, x_smooth)
        plt.plot(
            x_smooth,
            y_smooth,
            '-',
            linewidth=2.5,
            markersize=mymarkersize,alpha=1,
            color=color[colorindex],
            markeredgecolor=(0,0,0))
        colorindex +=1
    plt.grid(which='both')
    #plt.ylim([0,105])
    plt.xlabel('Years',fontsize=14)
    plt.ylabel(indicator,fontsize=14)
    plt.rc('xtick', labelsize=14) 
    plt.rc('ytick', labelsize=14)
    plt.legend(countrylist,loc='lower right', fancybox=True, framealpha=0.3)


#plt.title(indicator+', '+rankcol)
#plt.title(indicator+', 1990-2012',fontsize=16)


#plt.xlim([1e2,1e12])
#plt.ylim([1,len(data)])

#plt.xticks(data[columns],labels.values, rotation=45)