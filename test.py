from scipy import signal
from scipy import fftpack
from scipy.io import wavfile
import matplotlib.pyplot as plt
import numpy as np
from playsound import playsound
import wavio as wv
import os
import math




#FILTER DESIGN
numtaps = 11
f = [9500,10500]
coeff = signal.firwin(numtaps, f, pass_zero ='bandpass',fs=44100)
print(coeff)

#FILTER FREQUENCY RESPONSE
fft_coeff = fftpack.fft(coeff,20000)
pow = np.abs(fft_coeff)      #amplitude response
phase = np.angle(fft_coeff)
freqs = fftpack.fftfreq(20000)
print(freqs)
idx = np.argsort(freqs)
print(freqs[idx])
plt.plot(freqs[idx], phase[idx])
plt.xlim(left=0)
plt.show()

freq_sample_1, sig_audio_1 = wavfile.read("10kHz_44100Hz_16bit_05sec.wav")
freq_sample_2, sig_audio_2 = wavfile.read("1kHz_44100Hz_16bit_05sec.wav")

print(freq_sample_1)
type(sig_audio_1)

print(freq_sample_2)
type(sig_audio_2)
#playsound("WAV-MP3.wav")

# Output the parameters: Signal Data Type, Sampling Frequency and Duration
#print('\nShape of Signal:', sig_audio.shape)
#print('Signal Datatype:', sig_audio.dtype)
#print('Signal duration:', round(sig_audio.shape[0] / float(freq_sample), 2), 'seconds')

# Normalize the Signal Value and Plot it on a graph
pow_audio_signal_1 = sig_audio_1 / np.power(2, 15)
pow_audio_signal_2 = sig_audio_2 / np.power(2, 15)
#pow_audio_signal = pow_audio_signal [:100]
#time_axis = 1000 * np.arange(0, len(pow_audio_signal), 1) / float(freq_sample) #in ms
time_axis = np.arange(0, len(pow_audio_signal_1), 1) / float(freq_sample_1)
plt.plot(time_axis, pow_audio_signal_1, color='blue')
plt.plot(time_axis, pow_audio_signal_2, color='red')
plt.xlim(right=1/1000,left=0)
plt.show()


somma = pow_audio_signal_1+pow_audio_signal_2

#CONVOLUTION BETWEEN FILTER AND THE SIGNAL
N=len(coeff)+len(sig_audio_1)-1 #lunghezza della convoluzione

exp = np.pi*numtaps/freq_sample_1

print(fft_coeff)
fft_coeff = fftpack.fft(coeff,N)*(math.cos(exp)+1j*math.sin(exp))
print(fft_coeff)
#fft_audio_1 = fftpack.fft(sig_audio_1,N)
#fft_audio_2 = fftpack.fft(sig_audio_2,N)
#out_1 = fft_audio_1*fft_coeff
#out_2 = fft_audio_2*fft_coeff
fft_somma = fftpack.fft(somma,N)
out = fft_somma*fft_coeff
freqs = fftpack.fftfreq(N)
#plt.plot(freqs, np.abs(fft_audio_1))
#plt.plot(freqs, np.abs(fft_audio_2))
#plt.plot(freqs, np.abs(out))
#plt.xlim(left = 0)
#plt.show()


#TIME DOMAIN FILTERED SIGNAL
time_output = fftpack.ifft(out,N)
#print(time_output)
time_output=time_output[numtaps-1:]
plt.plot(time_axis,pow_audio_signal_1,':',color='blue')
plt.plot(time_axis,pow_audio_signal_2,':',color='black')
plt.plot(time_axis,time_output,color='red')
plt.xlim(right=1/1000,left=0)
plt.show()

#sound_name = "filter.wav"
#path=r"/home/federico/Desktop/PHD_PROJECT/MAPD_modA"
#wv.write(os.path.join(path,sound_name),time_output,44100,sampwidth=1)


