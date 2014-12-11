# -*- coding: utf-8 -*-
"""
Created on Thu Dec 04 09:58:09 2014

@author: megsaysrawr, sourced from eengel
"""

import pandas
import numpy as np
import matplotlib.pyplot as plt

plt.close('all')


n_groups=9
sanitation=(8.9,
            12.2,
            21.9,
            27.8,
            29.6,
            42.8,
            57.5,
            74.4,
            97.1
)


fig, ax = plt.subplots()
index = np.arange(n_groups)
bar_width = 0.5

opacity = 0.4

#colors = ['red','magenta','cyan','green','yellow','orange','purple','crimson','blue']
colors = ['yellow','red','purple','green','orange','cyan','brown','lime','blue']

rects1 = plt.bar(index, sanitation, bar_width,
                 alpha=opacity,
                 color=colors)

plt.xticks(index + bar_width/2, ('South Sudan',
                                 'Tanzania',
                                 'Mali',
                                 'Nigeria',
                                 'SS Africa',
                                 'Zambia',
                                 'Swaziland',
                                 'South Africa',
                                 'Seychelles'
),rotation=45)
#plt.legend()

plt.tight_layout()
plt.show()

#plt.grid(which='both')
#plt.ylim([0,100])
plt.xlabel('Region',fontsize=14)
plt.ylabel('% of Population with Acess',fontsize=14)
#plt.rc('xtick', labelsize=14) 
#plt.rc('ytick', labelsize=14)
#plt.legend(countrylist,loc='upper right', fancybox=True, framealpha=0.3)