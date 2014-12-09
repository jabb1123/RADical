import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

"""
Trying to get a window to show up on top
still doesn't work!
"""
def myplot(x,y):
    #fig=plt.figure(1)
    #fig, ax = plt.subplots()
    plt.plot(x,y)
    plt.grid(which='both')
    
    newX=10;newY=30
    mngr = plt.get_current_fig_manager()
    geom = mngr.window.geometry()
    x,y,dx,dy = geom.getRect()
    mngr.window.setGeometry(newX, newY, dx, dy)
    
    #plt.show()
    #fig.canvas.manager.window.activateWindow()
    #fig.canvas.manager.window.raise_()
    
#plt.clf('all')
a=np.arange(3,8,.5)
myplot(a,a)
myplot(a,a**2)



