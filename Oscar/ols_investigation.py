import pandas as pd
import matplotlib.pyplot as plt
plt.close('all')

#mydata=pd.DataFrame({'x':[1,2,3,4],'y':[2,1,np.nan,4]})
mydata=pd.DataFrame({'x':[0,1,2,3,4],'y':[1,3,3,4,6]})
print mydata

res=pd.ols(x=mydata['x'],y=mydata['y'])
print res.summary

plt.plot(mydata['x'].values,mydata['y'].values,'-o')
#plt.plot(res.x,res.y,'-')
plt.plot(mydata['x'],res.predict(),'-o')
#plt.plot(mydata['x'].values,res.predict(fill_method='pad').values,'-o')
#plt.plot(mydata['x'].values,res.predict(fill_value=0).values,'-o')
plt.grid(which='both')
plt.title(
    r'$\beta$: {0:.3f}, $\sigma$: {1:.3f}, '.format(res.beta[0],res.std_err[0])+
    r'p-value: {0:.3f}, t-stat: {1:.3f}'.format(res.p_value[0],res.t_stat[0])
    )
plt.show()