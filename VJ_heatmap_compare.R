function(df, VDJ, gene_perc, title){
  ggplot(df, aes(VDJ, gsub("_"," ", Time_point))) + geom_tile(aes(fill=gene_perc)) +
    theme(axis.text.x = element_text(angle = 90), axis.title = element_blank()) +
    scale_fill_continuous(low = "blue", high = "yellow") + labs(fill="Gene Percent Usage") +
    ggtitle(title) + facet_grid(~relapse)