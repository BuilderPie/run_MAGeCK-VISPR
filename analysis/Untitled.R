df = read.table('../../../all_LFC_combined.txt', row.names = 1)
colnames(df[,c(17,18,33)])

intersect(rownames(df)[order(df[,18], decreasing = F)][1:500],
          rownames(df)[order(df[,33], decreasing = F)][1:500])

intersect(rownames(df)[order(df[,17], decreasing = F)][1:500],
          rownames(df)[order(df[,33], decreasing = F)][1:500])

intersect(rownames(df)[order(df[,18], decreasing = T)][1:500],
          rownames(df)[order(df[,33], decreasing = T)][1:500])

which(df[intersect(rownames(df)[order(df[,18], decreasing = T)][1:500],
             rownames(df)[order(df[,33], decreasing = T)][1:500]),
    grep('coculture.T', colnames(df), ignore.case = T)]<0)
