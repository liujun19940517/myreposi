library(usethis)
library(devtools)

devtools::create("wineAnalysis")## 在当前目录下创建一个名为 "wineAnalysis" 的空 R 包
getwd()
setwd("C:/Users/Liujun/Documents/wineAnalysis/R")
setwd("C:/Users/Liujun/Documents/wineAnalysis")
getwd()#进入生成的 wineAnalysis/R/ 目录

load("D:/R语言学习资料/data/wine.RData")
load("D:/R语言学习资料/data/wineClass.RData")

usethis::use_data(wine, wine.class, #把外部数据“塞进” R 包里
                  overwrite = TRUE)#如果发现同名旧文件，直接用新的把它覆盖掉

colnames(wine)
devtools::document()
devtools::check()
devtools::install()

#如何调用
library(wineAnalysis)
data("wine")
data("wine.class")
plot_wine_biplot(wine, wine.class)

# 生成R Markdown引导文档
usethis::use_vignette("wine-analysis", title = "红酒数据的 PCA 与分类分析报告")



usethis::create_github_token()#Generate token
#https://github.com/settings/tokens 页面来管理你的个人访问令牌。
#也可以通过“设置”>“开发者设置”>“个人访问令牌”来访问该页面

#selecting “repo”, “user”, “gist”, and “workflow”
gitcreds::gitcreds_set()#存储 PAT 

gitcreds::gitcreds_set()
gitcreds_get(use_cache=FALSE)
getwd()
usethis::create_github_token()
