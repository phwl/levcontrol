#!/usr/bin/env python3

import numpy as np
import matplotlib.pyplot as plt

# Simple Particle model

class Model:
    def __init__(self):
        self.T0 = 293
        self.m = 9.77e-18
        self.k_ap = 9.686367199937547e-06
        self.k_ip = -9.07067175478047e-07
        self.C_el = 4697940.12339623
        self.C_f  = 6.17940000000000e-12
        self.Q = 200
        self.Omega = np.sqrt(self.k_ap/self.m)
        self.Omega_ip = np.sqrt(np.abs(self.k_ip/self.m))
        self.Gamma = self.Omega/(self.Q)       
        self.k_ip = -9.07067175478047e-07
        self.sigma = 0.5*1e-7
        self.alpha = 0.1 * self.sigma**2 * np.abs(self.k_ip/(self.sigma**4)) / self.m
        self.beta = self.sigma**2 * np.abs(self.k_ip / (self.sigma**2)) / self.m
        self.a = 0.1 * np.abs(self.k_ip / (self.sigma**4))
        self.b = np.abs(self.k_ip / (self.sigma**2))

    def force_func(self, x):
        return self.alpha * x**3 - self.beta * x
    
model = Model()

hw_f = 250e6
hw_oversample = 36 #36
t_s = hw_oversample / hw_f

fac_over = hw_oversample
t_s_over = hw_oversample / (hw_f * fac_over)

num_samples = int(5e-4/t_s) # 3000

# 10 µs  -> 0.1
# 50 µs  -> -0.1
# 110 µs -> 0
sig_z = np.zeros(num_samples)
for i in range(num_samples):
    t = i*t_s
    if t >= 10e-6 and t < 50e-6:
        sig_z[i] = 0.1
    elif t >= 50e-6 and t < 110e-6:
        sig_z[i] = -0.1
    elif t >= 110e-6:
        break

sig_qdd = np.zeros(num_samples)
sig_qd = np.zeros(num_samples)
sig_q = np.zeros(num_samples)

sig_qdd_eu = np.zeros(num_samples)
sig_qd_eu = np.zeros(num_samples)
sig_q_eu = np.zeros(num_samples)

XEND = num_samples
for i in range(XEND):
    sig_qdd[i] = (model.C_f / model.m) * sig_z[i] - model.Gamma * sig_qd[i] - model.force_func(sig_q[i])
    if i + 1 < num_samples:
        if i - 1 >= 0:
            sig_qd[i+1] = sig_qd[i] + t_s * ((3/2) * sig_qdd[i] - (1/2) * sig_qdd[i-1])
        else:
            sig_qd[i+1] = sig_qd[i] + t_s * sig_qdd[i]
        
        sig_q[i+1] = sig_q[i] + (t_s/2) * (sig_qd[i+1] + sig_qd[i])
        #sig_q[i+1] = sig_q[i] + t_s * sig_qd[i+1]

for i in range(XEND):
    sig_qdd_eu[i] = (model.C_f / model.m) * sig_z[i] - model.Gamma * sig_qd_eu[i] - model.force_func(sig_q_eu[i])
    if i + 1 >= num_samples:
        continue
    sig_qd_eu[i+1] = sig_qd_eu[i] + t_s * sig_qdd_eu[i]
    sig_q_eu[i+1] = sig_q_eu[i] + t_s * sig_qd_eu[i+1]

num_oversamples = int(5e-4/t_s_over)
XEND_OVER = num_oversamples

z_over = np.zeros(num_oversamples)
for i in range(num_oversamples):
    t = i*t_s_over
    if t >= 10e-6 and t < 50e-6:
        z_over[i] = 0.1
    elif t >= 50e-6 and t < 110e-6:
        z_over[i] = -0.1
    elif t >= 110e-6:
        break

print(f"{num_oversamples = }")
print(f"{t_s_over = }")
print(f"{t_s = }")
qdd_over = np.zeros(num_oversamples)
qd_over = np.zeros(num_oversamples)
q_over = np.zeros(num_oversamples)
for i in range(XEND_OVER):
    qdd_over[i] = (model.C_f / model.m) * z_over[i] - model.Gamma * qd_over[i] - model.force_func(q_over[i])
    if i + 1 >= num_oversamples:
        break
    # Forward/backward euler integration
    #qd_over[i+1] = qd_over[i] + t_s_over * qdd_over[i]
    #q_over[i+1] = q_over[i] + t_s_over * qd_over[i+1]

    # 2nd order Linear Multistep (Adams-Bashforth combined w/ Adams-Mouton)
    if i - 1 >= 0:
        qd_over[i+1] = qd_over[i] + t_s_over * ((3/2) * qdd_over[i] - (1/2) * qdd_over[i-1])
    else:
        qd_over[i+1] = qd_over[i] + t_s_over * qdd_over[i]
    
    q_over[i+1] = q_over[i] + (t_s_over/2) * (qd_over[i+1] + qd_over[i])

fig, ax = plt.subplots()
t_normal = np.linspace(0, num_samples*t_s, len(sig_z))
t_over = np.linspace(0, num_oversamples*t_s_over, len(z_over))
#ax.plot(t_normal, sig_z, label="z(t), FPGA")
ax.plot(t_normal, sig_q*1e6, label="2nd Order Linear Multistep, Minimal")
ax.plot(t_normal, sig_q_eu*1e6, label="Euler-F/B, Minimal")

#ax.plot(t_over, z_over, label="z(t), LM2")
ax.plot(t_over, q_over*1e6, label="2nd Order Linear Multistep, Full")
ax.set_xlim((0, num_samples*t_s))

ax.legend()
plt.show()