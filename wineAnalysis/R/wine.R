#' 绘制红酒数据的 PCA 双标图 (Biplot)
#'
#' @description 该函数使用 ade4 提取主成分，并结合 factoextra 绘制带有置信椭圆的标准 PCA Biplot。
#'
#' @param wine_data 一个包含红酒理化指标的 dataframe。
#' @param class_labels 一个包含红酒品种类别的因子或向量（用于图表分类上色）。
#' @param var_color 变量箭头的颜色，默认为 "violet"。
#'
#' @return 返回一个 ggplot2 对象。
#' @export
#'
#' @import ade4
#' @import factoextra
#' @import ggplot2
#'
#' @examples
#' # plot_wine_biplot(wine, wine.class)
plot_wine_biplot <- function(wine_data, class_labels, var_color = "violet") {
  # 运行主成分分析
  pca_res <- ade4::dudi.pca(wine_data, scannf = FALSE)
  
  # 绘制双标图
  factoextra::fviz_pca_biplot(pca_res, 
                              geom = "point", 
                              habillage = class_labels,
                              col.var = var_color, 
                              addEllipses = TRUE, 
                              ellipse.level = 0.69) +
    ggplot2::ggtitle("Wine PCA Biplot Analysis") + 
    ggplot2::coord_fixed()
}
