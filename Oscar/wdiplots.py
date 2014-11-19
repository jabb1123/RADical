import pandas as pd
import matplotlib.pyplot as plt
import textwrap
import math

plt.close('all')

#Data from the World Bank Development Indicators at
#http://databank.worldbank.org/data/download/WDI_csv.zip

LOAD_WDI=False#choose whether to load the large file or a working subset

countrylist=['China','India','Colombia','Puerto Rico','Sweden',
             'Sub-Saharan Africa (all income levels)',
             'North America','European Union','OECD members','World']
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
                'Income share held by highest 10%']

if LOAD_WDI:
    mydata=pd.read_csv('WDI_Data.csv')#the whole thing!!!
    countries=pd.read_csv('WDI_Country.csv')
    countries=countries[['Country Code','Region']]
    mydata=mydata.merge(countries, on='Country Code')
    
    #choose rows that match a specific indicator
    rows=False*len(mydata)
    for indicator in indicatorlist:
        rows=rows|(mydata['Indicator Name']==indicator)
    mydata=mydata[rows]
    
    #choose rows that match a specific country
    rows=False*len(mydata)
    for country in countrylist:
        rows=rows|(mydata['Country Name']==country)
    mydata=mydata[rows]
    
    mydata.to_csv('selected_data.csv')#write to a new csv file for simplicity
else:
    mydata=pd.read_csv('selected_data.csv')# load smaller csv

#sort by specific column and add rank column
rankcol='2012'
mydata=mydata.sort(rankcol)
mydata['Rank']=range(1,len(mydata)+1)
    
#print mydata.keys()#print available columns

res = pd.ols(y=mydata['2013'], x=mydata[['2011','2012']])
print res.summary
print res.f_test('-1*2011=2')

#mydata=mydata.fillna(method='pad')#forward fill; DANGEROUS!!!
#mydata=mydata.fillna(0)#fill with constant; DANGEROUS!!!

years=[]
for year in range(1960,2013+1):years.append(str(year))

mymarkersize=15   
#Choose indicator to plot
indicator=indicatorlist[2]

fig=plt.figure(1,figsize=(8,3), dpi=120)
ax=plt.subplot(111)

colorindex=0
for country in countrylist:
    mycolor=plt.get_cmap('hsv')(1.*colorindex/len(countrylist))[:3]
    colorindex+=1
    plt.plot(range(1960,2013+1),
             mydata[years][(mydata['Country Name']==country)&
             (mydata['Indicator Name']==indicator)].values[0],'o',
            markersize=3*math.log(mydata['2012'][(mydata['Country Name']==country)&
             (mydata['Indicator Name']=='Population, total')].values[0])-40,
            markerfacecolor=mycolor+(.4,),
            markeredgecolor=tuple(x*.7 for x in mycolor),
            label='\n'.join(textwrap.wrap(country,20)),
        )

plt.grid(which='both')
plt.xlabel('Years')
plt.ylabel('\n'.join(textwrap.wrap(indicator,30)))
ax.autoscale(tight=True)
plt.ylim(0,100)#set limits manually
#plt.xlim(plt.xlim()[0],int(years[-1]))#set limits manually
#ax.set_xticks([10**(x+4) for x in range(7)])
#ax.set_xticklabels(['a','b','c'])#to set new labels

# Shrink current axis by 20%
box = ax.get_position()
ax.set_position([box.x0, box.y0, box.width * 0.8, box.height])

# Put a legend to the right of the current axis
ax.legend(loc='center left', bbox_to_anchor=(1.01, 0.5), fontsize=10,framealpha=0)

plt.show()
#uncomment to save figure
plt.savefig(indicator+'.pdf', bbox_inches='tight')
#plt.savefig(indicator+'.png', bbox_inches='tight')