# Builds a bar graph with total arrests on the y axis and race/gender on the
# x axis. Refer to my presentation on graphing for more detail.

read_csv(here("C:/Users/Haokun Zhang/Desktop/UTexas classes/casual inference/Hidden curriculum/NLSY97_Hidden_Curriculum/R/data/NLSY97_clean.csv")) %>%
  group_by(race, gender) %>%
  summarize(total_arrests = mean(total_arrests)) %>%
  ggplot(aes(race, total_arrests, fill = gender)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(
    x = "Race", 
    y = "Mean Arrests", 
    fill = "Gender",
    title = "Mean Number of Incarceration in 2002 by Race and Gender") +
  theme_minimal() +
  scale_fill_economist()

ggsave(here("C:/Users/Haokun Zhang/Desktop/UTexas classes/casual inference/Hidden curriculum/NLSY97_Hidden_Curriculum/figures/incarceration_by_racegender.png"), width=8, height=4.5)

