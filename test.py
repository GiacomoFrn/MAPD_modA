from scipy import signal
from scipy import fftpack
from scipy.io import wavfile
import matplotlib.pyplot as plt
import numpy as np
from playsound import playsound
import wavio as wv
import os




#FILTER DESIGN
numtaps = 13
f = 4000
coeff = signal.firwin(numtaps, f, pass_zero ='lowpass',fs=16000)

#FILTER FREQUENCY RESPONSE
fft_coeff = fftpack.fft(coeff)
pow = np.abs(fft_coeff)                                #amplitude response
freqs = fftpack.fftfreq(len(coeff))
idx = np.argsort(freqs)
print(freqs[idx])
plt.plot(freqs[idx], pow[idx])
plt.xlim(left=0)
plt.show()

freq_sample, sig_audio = wavfile.read("welcome.wav")
print(freq_sample)
type(sig_audio)
#playsound("WAV-MP3.wav")

# Output the parameters: Signal Data Type, Sampling Frequency and Duration
print('\nShape of Signal:', sig_audio.shape)
print('Signal Datatype:', sig_audio.dtype)
print('Signal duration:', round(sig_audio.shape[0] / float(freq_sample), 2), 'seconds')

# Normalize the Signal Value and Plot it on a graph
pow_audio_signal = sig_audio / np.power(2, 15)
#pow_audio_signal = pow_audio_signal [:100]
#time_axis = 1000 * np.arange(0, len(pow_audio_signal), 1) / float(freq_sample) #in ms
time_axis = np.arange(0, len(pow_audio_signal), 1) / float(freq_sample)
plt.plot(time_axis, pow_audio_signal, color='blue')
plt.show()


#CONVOLUTION BETWEEN FILTER AND THE SIGNAL
N=len(coeff)+len(sig_audio)-1 #lunghezza della convoluzione

fft_coeff = fftpack.fft(coeff,N)
fft_audio = fftpack.fft(sig_audio,N)
out = fft_audio*fft_coeff
freqs = fftpack.fftfreq(N)
plt.plot(freqs, np.abs(fft_audio))
plt.plot(freqs, np.abs(out))
plt.xlim(left = 0)
plt.show()

#TIME DOMAIN FILTERED SIGNAL
time_output = fftpack.ifft(out,N)/np.power(2,15)
print(time_output)
time_output=time_output[numtaps-1:]
plt.plot(time_axis,pow_audio_signal,':',color='blue')
plt.plot(time_axis,time_output,color='red')
plt.show()

#sound_name = "filter.wav"
#path=r"/home/federico/Desktop/PHD_PROJECT/MAPD_modA"
#wv.write(os.path.join(path,sound_name),time_output,44100,sampwidth=1)

