from pandas import DataFrame
from numpy import arange
#import matplotlib.pyplot as plt


#testing multiple arguments in functions
def foo(*args):
    """grab the first argument regardless of how many go in"""
    print args[0]

def foo2(*args):
    """print all arguments"""
    print 'number of arguments: ',len(args)
    print 'list: ',args
    print 'for loop:'
    for arg in args:
        print arg
foo2('test', 'b',3,[11,7])


#Dataframe creation
df=DataFrame({'col1':[chr(97),'dat2','dat3'],'col2':['dat1','dat2','dat3']});print df,'\n'
df.to_excel('df.xls')
df.to_csv('df.csv')
df=DataFrame([chr(97),[3,4],'test'],['row1','row2','row3']);print df,'\n'
df=DataFrame({'col1':['dat1']},['row1']);print df,'\n'
df=DataFrame(['dat1','dat2'],['row1','row2']);print df,'\n'
df=DataFrame(['a','b',arange(5)]);print df,'\n'
df=DataFrame([arange(5),arange(5)]);print df,'\n'
df=DataFrame(df,index=['row1','row2'],
               columns=['col1','col2','col3']);print df,'\n'
print df.index #object
print df.index.values #list
print df.index.values[0] #list element

print df.columns
print df.columns.values
print df.columns.values[0]

df=DataFrame(['dat1','dat2','dat3']);print df,'\n'
df=DataFrame([['dat1','dat2','dat3']]);print df,'\n'
df[:]='new'
print df
df=DataFrame(['dat1','dat2','dat3'],['dat1','dat2','dat3']);print df,'\n'
df[:]='new'
print df

del df

df=DataFrame({'m':['Alice','Bob','Carol'],'q':arange(3),'o':arange(1,4)})
# when creating a dataframe, columns show alphabetically by key
# but new columns get added at the end

#data frame computation by columns
df['d']=df['o']*df['q']
df['e']=(df['o']+1)*df['d']
df['f']=2.*df['o']+4.*df['d']+5
print df