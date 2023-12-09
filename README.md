# EpiCare Application

The application developed using Flutter caters specifically to the unique needs of individuals coping with epilepsy, presenting an intuitive interface for seamless interaction. Its core aim lies in fostering direct communication between doctors and patients, establishing a more effective channel for ongoing monitoring. Essential to this is its daily health maintenance feature, allowing precise medication management and mandating the completion of a post-episode form by patients, crucial for gathering data essential to medical oversight.

Yet, this application extends beyond basic functionalities. It grants convenient access to a trove of daily analytics and pivotal statistics, encompassing crucial information like EEG results and sleep patterns. Additionally, it effectively manages and tracks medical appointments, simplifying the organization of regular visits. By consolidating these comprehensive features, the app endeavors to significantly enhance the overall quality of life for individuals living with epilepsy, offering an accessible and comprehensive platform for medical supervision.

# Algorithm

Our algorithm aims to detect potential seizure events in EEG (electroencephalogram) data using spike detection techniques and threshold-based alarm triggering. The process involves several steps:

1- Loading Data: The code loads EEG data from a .mat file assumed to contain preictal segments.

2- Segmentation: It segments the loaded data into 5-second intervals using a sliding window approach.

3- Spike Detection: Within each segment, it detects spikes using a spike detection algorithm provided by the quickspikes library. The number of spikes in each segment is calculated.

4- Smoothing: The spike counts are smoothed using a one-dimensional uniform filter to reduce noise and facilitate threshold determination.

5- Threshold Calculation: The maximum smoothed spike count is used as the threshold for spike detection.

6- Alarm Triggering: An alarm is triggered if the number of spikes in a segment exceeds the calculated threshold, indicating a potential seizure event.

# Demo 

Watch the video Demo App