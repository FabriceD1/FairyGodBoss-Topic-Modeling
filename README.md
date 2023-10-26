# FairyGodBoss-Topic-Modeling-and-Regression
This GitHub repository hosts the code and findings of a comprehensive study that leverages Latent Dirichlet Allocation (LDA) topic modeling to dissect the valuable feedback provided by female employees from FairyGodBoss's Top 30 Companies for Women. 

## Introduction
In today's globalized world, diversity and inclusion are critical factors for organizational growth and success. Diversity encompasses differences in ethnicity, gender, age, sexual identity, and more, while inclusion fosters a collaborative environment that enhances belongingness and participation. This project delves into the importance of inclusive workplaces for women and how it relates to topics such as work-life balance, support for women in leadership, and gender equality.

## Resources for a Gender-Inclusive Workplace
Gender diversity and inclusion have a significant impact on an organization's profitability. To maximize these advantages, resources like family-supportive supervisor behaviors and family-supportive organizational perceptions are essential. Work-life balance is also crucial, particularly for women who often face caregiving responsibilities.

## The Current Study
This project focuses on female employees' feedback from FairyGodBoss's Top 30 Companies for Women, aiming to highlight the significance of inclusivity, equality, and their impact on job satisfaction. Natural Language Processing (NLP) techniques, including Latent Dirichlet Allocation (LDA), are employed for comprehensive analysis.

## Methods
Data Collection
A dataset of 1,569 reviews from the top 30 companies was collected, with adjustments made to ensure consistency in the number of reviews per company. FairyGodBoss reviews played a key role in identifying the top 30 companies.

## Scraping FairyGodBoss Reviews
Two coders meticulously reviewed and collected data from selected companies' FairyGodBoss web pages. This data included review dates, overall job satisfaction ratings, flexibility, manager support, and reviews with lower job satisfaction ratings.

## Latent Dirichlet Allocation Topic Modeling
LDA topic modeling with n-grams was used to identify topics within the reviews. Data preprocessing involved tasks like stop-word removal, lemmatization, tokenization, and identifying n-grams to clean the corpus.

## Results for Final LDA Model

### Key Topic 1: Positive Workplace Environment and Support for Women
<img width="468" alt="image" src="https://github.com/FabriceD1/FairyGodBoss-Topic-Modeling-and-Regression/assets/90782496/208b70aa-004c-484d-a54d-df350b109487">

One of the prominent topics identified in our analysis is the "Positive Workplace Environment and Support for Women." Within this theme, female employees express their satisfaction with a work environment that is motivating and supportive. They highlight the significance of work-life balance and flexible work arrangements in contributing to their positive experiences. Gender equality and fair treatment of women in the workplace are also prominent aspects of this topic, reflecting the organization's commitment to these principles. This topic also emphasizes the presence of employee resources like support networks and opportunities for career growth within these companies.

### Key Topic 2: Women in Leadership
<img width="468" alt="image" src="https://github.com/FabriceD1/FairyGodBoss-Topic-Modeling-and-Regression/assets/90782496/f5d93f7a-fe22-497e-810f-5433f73a249c">

The second key topic, "Women in Leadership," revolves around the promotion of women in leadership roles within the organization. This topic underscores the emphasis placed on career growth opportunities for women and the value placed on workplace flexibility. The management team's role in fostering gender diversity and inclusion is highlighted, and employee sentiment is a key factor in shaping the work environment. This topic emphasizes the organization's commitment to empowering women in leadership positions and promoting gender diversity within the workplace.

### Key Topic 3: Inclusive Workplace Culture and Gender Equality
<img width="468" alt="image" src="https://github.com/FabriceD1/FairyGodBoss-Topic-Modeling-and-Regression/assets/90782496/269fb78a-12f6-4251-9c3b-af31558609fb">

The third key topic, "Inclusive Workplace Culture and Gender Equality," centers around fostering an inclusive and equitable workplace culture. This topic reflects the positive aspects of the workplace culture within these organizations, emphasizing a commitment to gender equality. It highlights the presence of women in leadership roles and the organization's dedication to promoting gender diversity in leadership positions. Moreover, it conveys that employees feel supported, particularly in gender-related matters, and that the work environment is favorable for women.

### Key Topic 4: Overall Job Satisfaction
<img width="468" alt="image" src="https://github.com/FabriceD1/FairyGodBoss-Topic-Modeling-and-Regression/assets/90782496/7413eeeb-7b0b-4a3c-8f11-18007cc1af2d">

"Overall Job Satisfaction" encompasses various dimensions of job satisfaction within the workplace. It reflects the organization's commitment to work-life balance, the cultivation of a positive company culture, a dedication to diversity and inclusion, the provision of growth opportunities, and the dynamics of interactions between colleagues. This topic emphasizes the pivotal role of the company's culture and values in shaping employees' experiences and feelings of value within the organization.

### Key Topic 5: Work-Life Balance
<img width="468" alt="image" src="https://github.com/FabriceD1/FairyGodBoss-Topic-Modeling-and-Regression/assets/90782496/a274757f-dfc0-4b2c-b55c-efe8295f08f8">

The final key topic, "Work-Life Balance," centers on the critical theme of achieving a balance between one's professional responsibilities and personal life. It delves into various aspects of the company's practices and culture, examining how these elements impact employees' perceptions and experiences. Additionally, the topic considers policies related to maternity leave and family support, highlighting the organization's commitment to helping employees manage family responsibilities. This topic explores how companies enable their employees, especially women, to achieve a work-life balance that promotes well-being and job satisfaction.

## Results of the Model with Low Job Satisfaction Reviews

### Key Topic 6: Employee Experiences and Workplace Challenges (Low Satisfaction)
<img width="468" alt="image" src="https://github.com/FabriceD1/FairyGodBoss-Topic-Modeling-and-Regression/assets/90782496/6ed72e03-3c5e-4f40-8572-a36cacb75789">

In our analysis of reviews with low job satisfaction ratings, we identified the key topic "Employee Experiences and Workplace Challenges." Within this theme, employees share their experiences and challenges within the workplace. They discuss issues such as communication breakdowns, a lack of recognition, and difficulties related to gender equality. Equal pay and the representation of women in leadership roles also emerge as concerns. Additionally, this topic explores interactions with managers and leaders, emphasizing their role in shaping employees' experiences within the organization. Understanding the challenges and areas of dissatisfaction highlighted within this topic can provide valuable insights for organizations seeking to improve their workplace environments.

### Key Topic 7: Financial Performance and Workplace Concerns (Low Satisfaction)
<img width="468" alt="image" src="https://github.com/FabriceD1/FairyGodBoss-Topic-Modeling-and-Regression/assets/90782496/d4204eba-ec95-4900-95d2-a22146df1932">

The second key topic identified in reviews with low job satisfaction ratings is "Financial Performance and Workplace Concerns." Within this theme, employees express concerns related to the financial performance and stability of the company. They discuss issues such as falling stock prices and the overall health of the organization. Change and adaptation within the organization, as well as considerations related to work hours and workload management, also play a role in shaping these discussions. Understanding the financial and operational concerns expressed by employees with low job satisfaction can guide organizations in addressing these issues and improving overall employee morale.

## Conclusion
This project underscores the importance of inclusivity, equality, and work-life balance in creating positive workplace experiences for women. Understanding the voices of employees, especially those from underrepresented groups, is crucial for fostering an inclusive and empowering work environment. As organizations evolve, listening to and analyzing employee feedback becomes not only an ethical but also a strategic imperative for success in an ever-changing business landscape.
