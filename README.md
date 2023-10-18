# 全国园林植物区划信息系统
## 前言
这是我在2009年，配合硕士毕业论文发表，用 C# 实现的一个园林植物库。
现在看起来功能很简陋，在信息技术方面的深度、前沿性也不足。
当时我的编程还处于瞒珊学步阶段，视野也很窄，让大家见笑了。
发在这里希望起到微薄的参考作用，让园林植物领域的同学可以少走一些弯路。

如果2023年以后还要在这个方向上迭代的话，我的建议是：  
1. 工程难点其实在于植物的结构化信息抽取整理，可以采用 LLM 进行抽取；
2. 基于KG重新做一遍知识库；
3. 手工的植被分区可以被智能模型代替。采用栅格系统，根据土壤、气候等情况，使用机器学习判断每种植物的分布区域。

## 研究背景
营造合理的植物景观，以取得良好的景观效果和环境效益，是园林建设的关键。
但由于植物景观的营造需要熟练掌握大量的植物材料以及美学设计技巧，再加上我国气候类型复杂，植物种类繁多，这些因素导致了我国园林植物景观往往不尽如人意。主要体现在植物材料的引种、选择应用不当，乡土植物的利用率低，植物景观营造的科学性与艺术性结合不够。

尽管我国拥有7000至8000多种木本植物，但是长期以来，对常规树种以外的乡土植物材料应用却非常保守，城市绿化树种异常单调。同时，每年都有大量的植物因为盲目引种而夭折，造成巨大的经济损失。将全面、科学的全国园林树种区域规划作为园林绿化的指导，植物引种驯化工作才能最终彻底走出盲目与保守这两大误区。

## 项目目标
本系统的主要功能为植物造景服务，服务对象主要为园林行业从业人员，包括设计人员和苗木生产者。植被分区系统在采用了陈有民的《中国园林绿化树种区域规划》基础上，融入了城镇植物名录作为补充，结合城镇海拔数据，可实现分区内部引种参考。
系统功能：支持互联网访问；支持按城镇、系统分类、观赏特性、生态习性等字段，对园林植物进行综合检索。

## 项目开发
开发语言：C#，运行环境 IIS7
开发环境：Visual Web Developer 2008，SQL Server 2005

## 论文全文
· [游宏凯. 基于Web的全国园林植物区划信息系统的构建. 华中农业大学. 硕士毕业论文. 2009](Papers/基于Web的全国园林植物区划信息系统的构建.pdf)

---

# National Landscape Plant Zoning Information System
## Preface
This is a landscape plant database I implemented using C# in 2009, in conjunction with the publication of my master's thesis. Looking at it now, the functions seem rudimentary, and it lacks depth and cutting-edge features in terms of information technology. At that time, I was still in the early stages of programming and had a limited perspective, which might seem laughable to many. I'm sharing it here in the hopes that it can serve as a modest reference, so that peers in the field of landscape plants can avoid some pitfalls.

If there are plans to iterate on this after 2023, my suggestions are:  
1. The main challenge lies in the structured information extraction of plants. LLM can be adopted for extraction;
2. Rebuild the knowledge base based on KG;
3. Manual vegetation zoning can be replaced by intelligent models. Using a grid system, based on soil, climate, and other factors, machine learning can be used to determine the distribution area of each plant.

## Research Background
Creating a rational plant landscape to achieve good landscape effects and environmental benefits is key to landscape construction. However, creating a plant landscape requires mastering a vast amount of plant materials and aesthetic design skills. Combined with China's complex climate types and diverse plant species, these factors often result in suboptimal landscape plant landscapes in China. This is mainly reflected in the improper introduction and application of plant materials, low utilization of native plants, and insufficient combination of scientific and artistic aspects in plant landscape creation.

Although China has over 7,000 to 8,000 woody plants, for a long time, the application of native plant materials outside of conventional tree species has been very conservative, leading to monotonous urban greening tree species. At the same time, a large number of plants die each year due to blind introduction, causing significant economic losses. Only by taking comprehensive and scientific national garden tree species regional planning as the guide to greening can we finally completely overcome the two major pitfalls of blindness and conservatism.

## Project Objectives
The main function of this system is to serve plant landscaping. The target users are primarily professionals in the gardening industry, including designers and seedling producers. The vegetation zoning system, based on Chen Youmin's "China Garden Greening Tree Species Regional Planning", incorporates the urban plant catalog as a supplement. Combined with urban altitude data, it can provide reference for introduction within the zone.
System features: Supports internet access; supports comprehensive retrieval of landscape plants by fields such as towns, systematic classification, ornamental characteristics, and ecological habits.

## Project Development
Development Language: C#, Operating Environment: IIS7
Development Environment: Visual Web Developer 2008, SQL Server 2005

## Full Thesis
· [You Hongkai. Construction of a Web-based National landscape plant Zoning Information System. Huazhong Agricultural University. Master's Thesis. 2009](Papers/基于Web的全国园林植物区划信息系统的构建.pdf)