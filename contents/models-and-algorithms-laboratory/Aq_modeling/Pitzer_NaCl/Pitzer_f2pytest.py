# python -m numpy.f2py -c mPitzer_w_NaCl.f90 -m Pitzer

f = open('mPitzer_w_NaCl.f90',mode='r')
from numpy import f2py

source="".join( f.readlines() )

f2py.compile(source=source,modulename='Pitzer',extension='.f90')

import Pitzer

a = Pitzer.mpitzer_w_nacl(mnacl=1,t_k=300)

print("a = ", a)

#%%
import numpy as np
from matplotlib import pyplot as plt

N=100
aH2O = np.zeros(N)
vm = np.linspace(0,10,N)
for t_k in [300, 350, 400]:

  for i in range(N):
    aH2O[i]=Pitzer.mpitzer_w_nacl(mnacl=vm[i],t_k=t_k)

  plt.plot(vm,aH2O,label=f"T={t_k:0.0f} K")



plt.ylabel(r'$a_\mathrm{H_2O}$')
plt.xlabel(r'$\mathrm{molality}_\mathrm{NaCl}$')
plt.legend()

plt.savefig('plot.png')

plt.show()
