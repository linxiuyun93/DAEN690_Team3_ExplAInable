# Explainable AI Construct (XAIC) Project

## **Project Overview**
The Explainable AI Construct (XAIC) project is built upon the innovative framework proposed by **Dr. Curt**, Owner and Lead Researcher at Human-Cyber Performance Tech, LLC. With a strong background in psychology, research, and system design, Dr. Curt specializes in aligning advanced technologies with human-centric needs.

This project addresses critical challenges in implementing Explainable AI (XAI) in workplaces by focusing on human-centered factors. The XAIC framework integrates four key components:
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

## **Key Features**
1. **Human-Centered Design:**  
   The XAIC framework tailors explanations to workers' skills, tasks, and industries.

2. **Scalable Components:**  
   Each subfolder in the XAIC directory represents a modular component, allowing users to work on individual aspects like AA, DTU, AF, or HIL.

3. **Data-Driven Insights:**  
   The OnetData folder provides a rich source of occupational and industry-specific information to inform the XAIC framework.

---

## **Installation**
1. Clone the repository:  
   ```bash
   git clone https://gitlab.com/linxiuyun93/DAEN690_Team3_ExplAInable.git
