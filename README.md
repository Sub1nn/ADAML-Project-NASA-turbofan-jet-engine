# ADAML-Group-Project: NASA Turbofan Jet Engine - Advanced Data Analysis and Machine Learning

**Welcome to our NASA Turbofan Jet Engine project**, part of the Advanced Data Analysis and Machine Learning course. This project is focused on analyzing and predicting the Remaining Useful Life (RUL) of turbofan engines using multivariate time-series data.

## Project Overview

This project is part of our course at LUT, where we are analyzing the FD001 dataset from NASA. We summarize the data, visualize key patterns, and preprocess it to build machine learning models that predict engine failures before they occur.

## Features

### **Data Summarization**

- _Multivariate Time Series Data_: Analyze sensor readings from turbofan engines to predict RUL.
- _Dataset Overview_: Understand how sensor values evolve as engines approach failure.

### **Visualizations**

- _Boxplots & Line Charts_: Highlight sensor outliers and degradation trends.
- _Engine Cycles_: Track engine performance over time to detect patterns indicating engine health.

### **Preprocessing**

- _Outlier Detection_: Identify and manage sensor data anomalies.
- _Data Scaling_: Normalize sensor readings for consistency in machine learning models.
- _Handling Noise_: Process noisy sensor data for more accurate predictions.

## Installation

1. Clone the repository:

   git clone https://github.com/Sub1nn/ADAML-Project

2. Navigate to the project directory:

   cd turbofan-analysis

3. Open the MATLAB environment:

   matlab

4. Run the provided MATLAB scripts to preprocess data and generate visualizations.

## Data Overview

- **Train Dataset**: 20,631 rows, 26 columns
- **Test Dataset**: 13,096 rows, 26 columns
- **RUL Dataset**: 429 rows, 1 column

## Tools Used

- **MATLAB**: For data analysis, visualization, and machine learning modeling.
- **GitHub**: For version control and collaboration.
- **Microsoft Teams**: For team communication and project management.

## Challenges & Preprocessing

### **Challenges**

- _Lack of Documentation_: The dataset provides sensor values without clear explanation of their meaning, making interpretation difficult.
- _Data noise_: Sensor readings contain noise and require preprocessing for accurate analysis.
- _Disconnected RUL Data_: The RUL file is not well-integrated with the main dataset, requiring additional handling.

### **Preprocessing Plan**

- _Missing Values_: Impute missing values or remove incomplete rows.
- _Outlier Handling_: Detect and remove extreme outliers.
- _Data Scaling_: Normalize sensor values for more accurate model performance.

## Technologies Used

- **MATLAB**: For data processing, analysis, and machine learning.
- **GitHub**: Code sharing and version control.

## Contributing

Contributions are welcome! To contribute, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Commit your changes.
4. Push your branch to your forked repository.
5. Submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
