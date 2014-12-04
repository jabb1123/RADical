# -*- coding: utf-8 -*-
"""
Created on Thu Dec 04 09:58:09 2014

@author: eengel
"""

import pandas
import numpy as np
import matplotlib.pyplot as plt


plt.close('all')


n_groups=17
female=(18.6,
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

participation=(15,
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


fig, ax = plt.subplots()
index = np.arange(n_groups)
bar_width = 0.45

opacity = 0.4


rects1 = plt.bar(index, female, bar_width,
                 alpha=opacity,
                 color='red',
                 label='Unemployment')

rects2 = plt.bar(index + bar_width, participation, bar_width,
                 alpha=opacity,
                 color='green',
                 label='Labor Force Participation')

plt.xticks(index + bar_width, ('Algeria',
    'Bahrain',
    'Egypt',
    'Iran',
    'Iraq',
    'Jordan',
    'Kuwait',
    'Lebanon',
    'Morocco',
    'Oman',
    'Qatar',
    'SAU',
    'Syria',
    'Tunisia',
    'UAE',
    'Palestine',
    'Yemen'
),rotation=45)
plt.legend()

plt.tight_layout()
plt.show()

#plt.grid(which='both')
#plt.ylim([0,100])
#plt.xlabel('Years',fontsize=14)
plt.ylabel('% of Eligbile Females',fontsize=14)
#plt.rc('xtick', labelsize=14) 
#plt.rc('ytick', labelsize=14)
#plt.legend(countrylist,loc='upper right', fancybox=True, framealpha=0.3)