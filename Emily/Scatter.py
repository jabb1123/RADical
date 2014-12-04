# -*- coding: utf-8 -*-
"""
Created on Thu Dec 04 11:18:57 2014

@author: eengel
"""

# -*- coding: utf-8 -*-
"""
Created on Thu Dec 04 09:58:09 2014

@author: eengel
"""

import pandas
import numpy as np
import matplotlib.pyplot as plt


plt.close('all')

xd=(18.60000038,
    18,
    27.10000038,
    20,
    22.5,
    21,
    1.200000048,
    10.60000038,
    9.899999619,
    14.69999981,
    3.799999952,
    20.79999924,
    22.29999924,
    14.30000019,
    11.60000038,
    18,
    27.10000038
)

yd=(15,
    39.40000153,
    23.60000038,
    16.39999962,
    14.69999981,
    58.09999847,
    15.30000019,
    43.40000153,
    22.79999924,
    26.29999924,
    50.79999924,
    18.20000076,
    13.39999962,
    25.10000038,
    46.59999847,
    15.19999981,
    25.20000076
)

l=('DZA',
    'BHR',
    'EGY',
    'IRN',
    'IRQ',
    'JOR',
    'KWT',
    'LBN',
    'MAR',
    'OMN',
    'QAT',
    'SAU',
    'SYR',
    'TUN',
    'ARE',
    'WBG',
    'YEM'
)

#N = 17
#colors = np.random.rand(N)
#plt.scatter(x, y, s=30, c='red', alpha=0.5)

# sort the data
reorder = sorted(range(len(xd)), key = lambda ii: xd[ii])
xd = [xd[ii] for ii in reorder]
yd = [yd[ii] for ii in reorder]

# make the scatter plot
plt.scatter(xd, yd, s=90, alpha=0.3, marker='o')

for i, txt in enumerate(l):
    plt.annotate(txt,(xd[i],yd[i]))

# determine best fit line
par = np.polyfit(xd, yd, 1, full=True)

slope=par[0][0]
intercept=par[0][1]
#xl = [min(xd), max(xd)]
xl=[0,35]
yl = [slope*xx + intercept  for xx in xl]
plt.plot(xl, yl, '-r')

plt.tight_layout()


#plt.grid(which='both')
plt.xlim([0,30])
plt.ylim([0,100])
plt.xlabel('Unemployment (% female labor force)',fontsize=24)
plt.ylabel('Labor Force Participation Rate (% females ages 15+)',fontsize=24)
plt.show()
#plt.rc('xtick', labelsize=14) 
#plt.rc('ytick', labelsize=14)
#plt.legend(countrylist,loc='upper right', fancybox=True, framealpha=0.3)