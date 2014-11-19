import pandas as pd
import matplotlib.pyplot as plt
import textwrap

plt.close('all')

#Data from the World Bank Development Indicators at
#http://databank.worldbank.org/data/download/WDI_csv.zip

LOAD_WDI=False#choose whether to load the large file or a working subset

#countrylist=[]
indicatorlist=['Population, total',
                ]

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
#    rows=False*len(mydata)
#    for country in countrylist:
#        rows=rows|(mydata['Country Name']==country)
#    mydata=mydata[rows]
    
    mydata.to_csv('selected_data.csv')#write to a new csv file for simplicity
else:
    mydata=pd.read_csv('selected_data.csv')# load smaller csv

#sort by specific column and add rank column
rankcol='2012'
mydata=mydata.sort(rankcol)
mydata['Rank']=range(1,len(mydata)+1)
    
deltaregion={'South Asia':50, 'Europe & Central Asia':10, 
              'Middle East & North Africa':.1, 'East Asia & Pacific':200,
              'Sub-Saharan Africa':.02, 'Latin America & Caribbean':.005}  

mymarkersize=15   
#Choose indicator to plot
indicator=indicatorlist[0]

fig=plt.figure(1,figsize=(8,3), dpi=120)
ax=plt.subplot(111)

colorindex=0
for region in deltaregion:
    aux=mydata[mydata['Region']==region]
    mycolor=plt.get_cmap('hsv')(1.*colorindex/len(deltaregion))[:3]
    colorindex+=1
    plt.semilogx(aux[rankcol]*deltaregion[region],aux['Rank'],'o',
                 markersize=mymarkersize,
                 markerfacecolor=mycolor+(.2,),
                 markeredgecolor=tuple(x*.7 for x in mycolor),
                 label='\n'.join(textwrap.wrap(region,15)))
    plt.semilogx(mydata[rankcol]*deltaregion[region], mydata['Rank'],'-',
                 color=mycolor+(.5,))

#plot circles for everything                 
plt.semilogx(mydata[rankcol],mydata['Rank'],'o',
                 markersize=25,
                 markerfacecolor=(.5,.5,.5,.05),
                 markeredgecolor=(.0,.0,.0),
            )
#plot line for everything
plt.semilogx(mydata[rankcol],mydata['Rank'],'-',
             color=(0,0,0,.5))

plt.grid(which='both')
plt.xlabel(indicator+', '+rankcol)
plt.ylabel('Rank')
plt.xlim([1e2,1e12])
ax.set_xticks([10**(x+4) for x in range(7)])
#ax.set_xticklabels(['a','b','c'])#to set new labels

# Shrink current axis by 20%
box = ax.get_position()
ax.set_position([box.x0, box.y0, box.width * 0.8, box.height])

# Put a legend to the right of the current axis
ax.legend(loc='center left', bbox_to_anchor=(1.01, 0.5), fontsize=10,framealpha=0)

plt.show()
#uncomment to save figure
#plt.savefig(indicator+rankcol+'.pdf', bbox_inches='tight')
#plt.savefig(indicator+rankcol+'.png', bbox_inches='tight')