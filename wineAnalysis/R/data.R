#' 红酒理化指标数据集
#'
#' 包含红酒样本的 11 个理化指标测量值。
#'
#' @format 一个包含 11 个变量的数据框：
#' \describe{
#'   \item{Alcohol}{酒精浓度}
#'   \item{MalicAcid}{苹果酸}
#'   \item{Ash}{灰分}
#'   \item{AlcAsh}{酒精与灰分的比值（Alcalinity of ash）}
#'   \item{Mg}{镁含量（Magnesium）}
#'   \item{Phenols}{总酚}
#'   \item{Flav}{黄酮类化合物（Flavanoids）}
#'   \item{NonFlavPhenols}{非黄酮类酚}
#'   \item{Proa}{原花青素（Proanthocyanins）}
#'   \item{Color}{颜色强度}
#'   \item{Hue}{色调}
#' }
#' @source UCI Machine Learning Repository (或你自己的数据来源)
"wine"


#' 红酒品种分类标签
#'
#' 与 `wine` 数据集一一对应的红酒品种分类标签。
#'
#' @format 一个因子向量（Factor），分为 3 个水平（代表 3 种不同的红酒品种）。
"wine.class"