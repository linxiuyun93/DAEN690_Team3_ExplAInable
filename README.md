# Explainable AI Construct (XAIC) Project

## **Project Overview**
The Explainable AI Construct (XAIC) project is built upon the innovative framework proposed by **Dr. Curt**, Owner and Lead Researcher at Human-Cyber Performance Tech, LLC. With a strong background in psychology, research, and system design, Dr. Curt specializes in aligning advanced technologies with human-centric needs.

This project addresses challenges in implementing Explainable AI (XAI) in workplaces by focusing on human-centered factors. The XAIC framework integrates four key components:
- **Algorithm Findings (AF):** Categorizing work activities into machine learning algorithms.
- **Ability to Abstract (AA):** Assessing workers’ reasoning skills and their alignment with AI systems.
- **Data Type Understanding (DTU):** Linking data types to task descriptions for better contextual understanding.
- **Human in the Loop (HIL):** Evaluating human-AI interactions as direct, indirect, opaque, or automated.

---

## **Problem It Addresses**
The XAIC project tackles the following challenges:
1. **Building Trust in AI:**  
   XAI must bridge the gap between human workers and AI systems, providing clarity on "How?" and "Why?" decisions are made.

2. **Lack of Standard Definition:**  
   The absence of a unified definition for XAI complicates its consistent application in diverse contexts.

3. **Varying Explanation Needs:**  
   Explanation depth and strategies must be tailored to users' roles, skills, and tasks across industries such as healthcare, manufacturing, and finance.

This project validates the XAIC framework by ensuring XAI serves as a **supportive tool** that enhances human work.

---

## **Repository Structure**
The repository is organized into two major folders for clarity and modularity:

### **1. OnetData Folder**
This folder contains scripts and data files scraped from the O*NET website. It includes:
- **Python Script:**  
  - `Onet_data_scraping.ipynb`: A Jupyter notebook to extract and preprocess O*NET data.

- **CSV Files:**  
  - `All_Occupations.csv`: Overview of all occupations.  
  - `interests.csv`: Interest-based data for occupations.  
  - `onet_abilities.csv`: Abilities required for each occupation.  
  - `onet_detailed_work_activities.csv`: Detailed work activities for occupations.  
  - `onet_occupations.csv`: Information about specific occupations.  
  - `onet_tasks.csv`: Task descriptions for each occupation.  
  - `onet_technology_skills.csv`: Technology skills associated with occupations.  
  - `onet_tools_used.csv`: Tools commonly used in occupations.  
  - `onet_work_activities.csv`: General work activities associated with occupations.  
  - `work_styles.csv`: Work style data for occupations.  
  - `work_values.csv`: Work values associated with occupations.

---

### **2. XAIC Folder**
This folder contains the core components of the XAIC framework, organized into subfolders:

#### **Subfolders:**
- **AA (Ability to Abstract):**  
  - Contains input CSVs, Python scripts, and output CSVs for analyzing workers' reasoning skills and abstraction capabilities.

- **DTU (Data Type Understanding):**  
  - Includes data and scripts for linking task descriptions to specific data types and scoring understanding levels.

- **AF (Algorithm Findings):**  
  - Houses resources for categorizing work activities into common machine learning algorithms using NLP techniques.

- **HIL (Human in the Loop):**  
  - Contains tools for analyzing human-AI interactions, categorized as direct, indirect, opaque, or automated.

- **Project_Interface:**  
  - Includes the integration of all components, providing a unified interface for running the XAIC framework.

---

---

## **1. Ability to Abstract (AA)**

### **Purpose**
Ability to Abstract (AA) measures the cognitive capability required to understand and interact with AI systems. This component assesses how occupational roles align with varying levels of abstraction.

### **Key Features**
- **Machine Learning Algorithm:**
  - Implements **Random Forest Classifier** to predict AA levels based on features like job zones, STEM levels, and data types.
  - Applies **K-means clustering** to group industries by AA scores and their standard deviations.
- **Dataset Preparation:**
  - Includes occupational data with AA levels categorized into **Low**, **Medium**, and **High** based on job zones and knowledge areas.
- **Visualization:**
  - Generates bar plots to visualize AA scores by NAIC codes.
  - Boxplots compare AA distributions across industries (e.g., Healthcare, Manufacturing, Finance).

### **Applications**
- Identifies roles requiring higher abstraction capabilities for targeted training.
- Aligns AI systems to workforce abstraction capabilities.

### **How to Run**
1. Prepare the dataset (e.g., `Adjusted_Ability_to_Abstract_Analysis.csv`).
2. Run the AA analysis script.
3. View the output visualizations and clustering results.

### **Output Examples**
- Bar plots of occupation counts by AA level.
- Industry-wise clustering of AA scores.

---

## **2. Human in the Loop (HIL)**

### **Purpose**
Human in the Loop (HIL) categorizes the degree of human interaction with AI into four levels: **Direct**, **Indirect**, **Opaque**, and **Automatic**. This dimension ensures AI systems align with user capabilities and trust levels.

### **Key Features**
- **Machine Learning Algorithm:**
  - Uses **K-means clustering** on **RoBERTa embeddings** to categorize interaction types.
  - Applies **Linear Regression** to evaluate the relationship between task features and interaction types.
- **Task Embedding:**
  - Uses **RoBERTa embeddings** for task descriptions to capture semantic meaning.
- **Clustering:**
  - Applies **K-means clustering** to categorize interaction types.
- **Output Integration:**
  - Adds HIL interaction types as a new column to datasets for further analysis.

### **Applications**
- Supports role-specific AI design by defining interaction levels.
- Improves user trust and oversight in AI systems.

### **How to Run**
1. Prepare the dataset (e.g., `combined_table2_data_with_industry_new.xlsx`).
2. Generate embeddings using the RoBERTa-based script.
3. Run the HIL clustering and view results in the updated dataset.

### **Output Examples**
- Interaction types mapped to tasks and industries (e.g., Healthcare: Direct, Manufacturing: Automatic).
- Updated dataset saved with interaction type classifications.

---

## **3. Algorithm Findings (AF)**

### **Purpose**
Algorithm Findings (AF) maps tasks and activities to algorithm functions (e.g., **Predictive**, **Descriptive**, **Prescriptive**, **Assistive**, **Automation**, **Support EF**) using keyword matching and similarity scoring.

### **Key Features**
- **Machine Learning Algorithm:**
  - Employs **TF-IDF Vectorization** and **Cosine Similarity** to identify the best-matching algorithm functions for task descriptions.
  - Combines **keyword-based matching** and **relevance scoring** to improve accuracy.
- **Keyword-Based Mapping:**
  - Uses predefined keywords to match tasks with algorithm functions.
- **Similarity-Based Matching:**
  - Employs cosine similarity to assign functions when keyword matches are insufficient.
- **Relevance Scoring:**
  - Calculates relevance scores to rank algorithm functions for each occupation.

### **Applications**
- Aligns workforce activities with algorithm functionalities for better AI integration.
- Guides the development of industry-specific XAI tools.

### **How to Run**
1. Prepare the input files (e.g., `Algorithm Data.xlsx`, `mapped_occupational_data_with_algorithm_functions.xlsx`).
2. Run the AF mapping script to merge tasks and algorithm data.
3. Review the relevance-based output dataset.

### **Output Examples**
- Occupations mapped to relevant algorithm functions.
- Top algorithms ranked by relevance scores.

---

## **4. Data Type Understanding (DTU)**

### **Purpose**
Data Type Understanding (DTU) evaluates the human capability to comprehend different data types (e.g., Image, Audio, Alphanumeric, Geographic) based on job zones and task descriptions.

### **Key Features**
- **Machine Learning Algorithm:**
  - Implements **RAKE (Rapid Automatic Keyword Extraction)** for keyword identification.
  - Uses a rule-based threshold system for DTU level categorization (**Low**, **Medium**, **High**).
- **Keyword Categorization:**
  - Maps tasks and activities to data types using keyword lists.
- **DTU Level Assignment:**
  - Assigns DTU levels based on keyword matches and job zone thresholds.

### **Applications**
- Identifies workforce proficiencies required for different data types.
- Informs training programs for AI system adoption.

### **How to Run**
1. Use the input file (e.g., `combined_table2_data_with_industry_new.csv`).
2. Run the DTU calculation script to categorize data types and assign levels.
3. Save and review the updated dataset with DTU columns.

### **Output Examples**
- DTU levels for Image, Audio, Alphanumeric, and Geographic data types.
- CSV output with DTU levels for each occupation and industry.

---

## **5. Product Interface**

### **Purpose**
The Product Interface is a **Streamlit** application that provides an interactive platform to explore XAIC dimensions, visualize data, and recommend suitable XAI tools.

### **Key Features**
- **Machine Learning Algorithm:**
  - Uses **Random Forest Classifier** for predicting dimensions like AA and DTU levels.
  - Integrates **SMOTE** and **RandomOverSampler** for handling imbalanced datasets.
- **Interactive Filters:**
  - Filter dataset by occupation, industry, and data type.
- **XAI Tool Recommendation:**
  - Suggests the most suitable tools (e.g., LIME, SHAP, DeepLIFT) based on selected dimensions.
- **Visualizations:**
  - Bar charts and radar charts to compare dimensions and XAI tools.

### **Applications**
- Demonstrates the practical use of XAIC dimensions in selecting XAI tools.
- Provides a user-friendly interface for exploring Explainable AI applications.

### **How to Run**
1. Install the required Python libraries (`streamlit`, `pandas`, `scikit-learn`, etc.).
2. Run the application:
   ```bash
   streamlit run explainable_AI_app.py
   ```
3. Explore the interface to filter datasets, view visualizations, and receive tool recommendations.

### **Output Examples**
- Filtered datasets by occupation and industry.
- Recommended XAI tools based on user-selected dimensions.
- Radar chart comparisons of XAI tools.
---

## **Installation**
1. Clone the repository:  
   ```bash
   git clone https://gitlab.com/linxiuyun93/DAEN690_Team3_ExplAInable.git
