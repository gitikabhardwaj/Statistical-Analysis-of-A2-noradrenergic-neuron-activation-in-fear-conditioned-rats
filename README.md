# Activation Patterns of A2 Noradrenergic Neurons in Fear-Conditioned Rats

## Project Overview
This repository contains the R code and datasets for analyzing activation of A2 noradrenergic neurons in the nucleus of the solitary tract (NTS) of rats subjected to fear conditioning. The study focuses on dopamine β-hydroxylase (DbH) neurons, examining differences in activation under various conditions.

## Research and Data Origin

### Data Collection
The experimental data for this study on A2 noradrenergic neuron activation were collected at Florida State University. These experiments focused on understanding the neurological responses of rats subjected to various environmental conditions. For more details on the experimental setup and methodologies, refer to the published article linked below:
- [Research Article on ScienceDirect](https://www.sciencedirect.com/science/article/abs/pii/S0031938421002018)

### Data Analysis
The statistical analysis of the data was performed by me, Gita Bhardwaj, and Tyla Dolezel at Rush University using the R programming language. This analysis involved advanced statistical techniques to discern patterns and draw significant conclusions about the activation of dopamine β-hydroxylase (DbH) neurons in response to fear conditioning.


## Project Structure
- **/data/**: Contains instructions and links for accessing the datasets used in the analyses. Data collection was performed at Florida State University, with further details and findings available in the linked research article.
- **/scripts/**: Contains R scripts developed for data processing, analysis, and visualization. The statistical analysis was carried out at Rush University.
- **/results/**: Includes output files and visualizations generated from the R scripts.

## Data Description
The data is derived from experimental observations on rat neuron activation under different environmental exposures, collected through specific methods. Key variables include:
- `Total_DbH`: Percentage of DbH activation.
- `Re_exposure`: Environmental condition ('Dark' or 'Home Cage').

## Files and Directories
- `DbH.csv`: Dataset with the experimental results.
- `analysis.R`: R script for statistical analysis and generating visualizations.

## Requirements
This project uses R with packages like `ggplot2`, `dplyr`, and `tidyr`. Install them using:
```bash
install.packages(c("ggplot2", "dplyr", "tidyr"))
```

## Usage 
To run the analysis:
1. Ensure that R and all required packages are installed.
2. Execute the script via command line:
   ```bash
   Rscript analysis.R
   
## Key Findings

### Statistical Significance
Our findings show a statistically significant higher activation of DbH neurons in the Dark group compared to the Home Cage group, with a p-value less than 0.0001. This indicates a strong association between the environmental exposure and neuron activation levels.

### Power Analysis
Our analysis demonstrated robust statistical power (0.899) to detect significant effects, supporting the reliability of our results. This high level of power ensures that the probability of a Type II error (failing to detect a true effect when one exists) is minimized.

## Descriptive Statistics and Roles in Neuron Activation

### Descriptive Statistics: Re-Exposure
The following graph shows the percentage of neuron activation in the dark box re-exposure scenario, highlighting differences between male and female subjects.

![Dark Box Re-Exposure](images/dark_box_re_exposure.png)

### Descriptive Statistics by Sex
These graphs illustrate the activation of neurons in male and female rats, showing significant differences in response to environmental conditions.

![Descriptive Statistics Males](images/descriptive_stats_males.png)
![Descriptive Statistics Females](images/descriptive_stats_females.png)


### Regression Analysis
Here we present the regression analysis graphs showing the relationship of neuron activation with caudal, rostral, and AP regions.

![Regression Analysis Caudal](images/regression_caudal.png)

![Regression Analysis Rostral](images/regression_rostal.png)

![Regression Analysis AP](images/regression_ap.png)

## Regression Analysis Insights

### Predictive Roles
- **Caudal Region**: Identified as the strongest predictor of total neuron activation, emphasizing its crucial role in stress response regulation.
- **Rostral and AP Regions**: Although these regions have a less potent effect, they play critical roles in modulating stress and fear responses within the organism.

### Model Strength
Our regression model demonstrates a high explanatory power, with a Multiple R-squared value of 0.9774. This indicates that our model explains a significant portion of the variance in neuron activation among the studied subjects.

## Scientific and Practical Implications
These findings significantly enhance our understanding of the neuronal mechanisms involved in fear conditioning. The insights gained from this study have potential implications for developing targeted interventions that can modulate specific neuronal pathways involved in stress and fear responses. This could lead to more effective treatments for conditions linked to stress and anxiety disorders.

## Acknowledgements
We extend our gratitude to the research teams at Florida State University for their invaluable role in conducting the detailed experiments that form the basis of this analysis. Their dedication has been crucial in advancing the scientific community's understanding of neuronal responses to fear conditioning. Special thanks to Tyla Dolezel for her contributions to the research and statistical analysis at Rush University.

## Contact
For more information, potential collaborations, or discussions about the implications of our findings, feel free to reach out:

- **Email**: [gita.bhardwaj1@gmail.com](mailto:gita.bhardwaj1@gmail.com)
- **LinkedIn**: [Insert LinkedIn Profile](https://linkedin.com/in/GitaBhardwaj)

```
