import numpy as np
import scipy.io
import quickspikes as qs
from scipy.ndimage import uniform_filter1d

# 1- Load the .mat file
mat_contents = scipy.io.loadmat('preictal_segment_N.mat')
print(mat_contents)


# 2- Use a sliding window to separate each period into segments with 5 seconds
window_size = 5 * mat_contents['sampling_frequency']
for i in range(0, len(mat_contents['data']), window_size):
    window = mat_contents['data'][i:i+window_size]

# 3- Detect the spikes in each segment for all periods and calculate their total number of spikes

# Initialize the detector
det = qs.detector(1000, 30)
# Detect the spikes
times = det.send(window)
# Calculate the total number of spikes
num_spikes = len(times)


#4- Smooth the number of spikes
smoothed_spikes = uniform_filter1d(num_spikes, size=7)


#5- Determine the threshold
threshold = np.max(smoothed_spikes)


#6- Trigger an alarm
if num_spikes > threshold:
  print("Alarm: Possible seizure event detected.")