import thinkbayes2 as tb
import thinkplot as tp
import matplotlib.pyplot as plt
import math

plt.close('all')
mypop=tb.MakePmfFromList([1,1,2,3,4,4,4])
mypop=tb.MakePmfFromList([1,1,2,3,4,4,4],label=r'population (n=1), $\mu$={0:,.2f} std={1:.3f}'.format(mypop.Mean(),math.sqrt(mypop.Var())))
plt.subplot(411)
tp.Hist(mypop)
norm=tb.NormalPdf()
tp.Config(ylabel='Probability')

mypop2=(mypop+mypop)/2
plt.subplot(412)
tp.Hist(mypop2,label=r'n=2, $\mu$={0:,.2f} std={1:.3f}'.format(mypop2.Mean(),math.sqrt(mypop2.Var())))
tp.Config(ylabel='Probability')

mypop8=(mypop2+mypop2+mypop2+mypop2)/4
plt.subplot(413)
tp.Hist(mypop8,label=r'n=8, $\mu$={0:,.2f} std={1:.3f}'.format(mypop8.Mean(),math.sqrt(mypop8.Var())))
tp.Config(ylabel='Probability')

mypop32=(mypop8+mypop8+mypop8+mypop8)/4
plt.subplot(414)
tp.Hist(mypop32,label=r'n=32, $\mu$={0:,.2f} std={1:.3f}'.format(mypop32.Mean(),math.sqrt(mypop32.Var())))
tp.Config(ylabel='Probability')



#mysample=tb.SampleSum([mypop],2)
#print sample
#plt.subplot(212)
#tp.Hist(mysample)