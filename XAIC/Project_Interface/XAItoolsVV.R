

# Install packages if not already installed
install.packages("ggplot2")
install.packages("fmsb")  # For radar chart

# Create a data frame with the pros and cons of each tool
xai_tools <- data.frame(
  Tool = c("LIME", "SHAP", "AIX360"),
  Interpretability = c(4, 5, 3),   # Rating out of 5
  Ease_of_Use = c(5, 3, 4),
  Scalability = c(3, 5, 4),
  Model_Agnostic = c(5, 4, 4),
  Computational_Cost = c(3, 4, 5)  # Lower is better, but for consistency, we'll keep it positive
)

# Load ggplot2 for visualization
library(ggplot2)

# Summarize the overall scores for each tool by summing the ratings
xai_tools$Total_Score <- rowSums(xai_tools[, 2:6])

# Create a bar plot to compare the tools
ggplot(xai_tools, aes(x = Tool, y = Total_Score, fill = Tool)) +
  geom_bar(stat = "identity") +
  labs(title = "Comparison of XAI Tools: Total Score",
       y = "Total Score (Sum of Ratings)",
       x = "XAI Tool") +
  theme_minimal()









# Reshape the data for a line plot
library(reshape2)

# Melt the data for ggplot
xai_melt <- melt(xai_tools, id.vars = "Tool")

# Create a line plot
ggplot(xai_melt, aes(x = variable, y = value, group = Tool, color = Tool)) +
  geom_line(size = 1) +
  geom_point(size = 3) +
  labs(title = "Performance Comparison of XAI Tools Across Factors",
       x = "Factors",
       y = "Score") +
  theme_minimal() +
  scale_color_manual(values = c("LIME" = "green", "SHAP" = "blue", "AIX360" = "red"))










# Load necessary libraries
library(ggplot2)
library(reshape2)

# Create a data frame for the pros and cons of each XAI tool across industries
data <- data.frame(
  Tool = c("LIME", "SHAP", "AIX360"),
  Finance = c(3, 4, 2),  # 3 = Moderate, 4 = High, 2 = Low
  Healthcare = c(4, 2, 3),
  Manufacturing = c(2, 3, 4)
)

# Melt the data frame to a long format
data_melted <- melt(data, id.vars = "Tool")

# Define color gradient
color_gradient <- scale_fill_gradient(low = "white", high = "blue", limits = c(1, 4))

# Create the heatmap
heatmap_plot <- ggplot(data_melted, aes(x = variable, y = Tool)) +
  geom_tile(aes(fill = value), color = "black") +
  color_gradient +
  labs(x = "Industry", y = "XAI Tool", title = "Suitability of XAI Tools Across Industries") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  geom_text(aes(label = value), color = "black", size = 5)  # Add text to the heatmap

# Print the heatmap
print(heatmap_plot)

