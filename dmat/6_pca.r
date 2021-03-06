library(pbdDMAT, quiet=TRUE)
init.grid()

n <- 1e4
p <- 250

comm.set.seed(seed=1234567, diff=TRUE)
x.dmat <- ddmatrix("rnorm", nrow=n, ncol=p, mean=100, sd=25)

pca <- prcomp(x=x.dmat, retx=TRUE, scale=TRUE)
prop_var <- cumsum(pca$sdev)/sum(pca$sdev)
i <- max(min(which(prop_var > 0.9)) - 1, 1)

names(pca)
comm.print(str(pca))

y.dmat <- pca$x[, 1:i]

comm.cat("\nCols: ", i, "\n", quiet=TRUE)
comm.cat("%Cols:", i/dim(x.dmat)[2], "\n\n", quiet=TRUE)

finalize()
