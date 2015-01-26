..
# integration of emissions
emiSum <- aggregate( NEI$Emissions, by = list( Year = NEI$year ), FUN = sum )

# generate the plot
png( 'plot1.png', height = 600, width = 800 )

plot( emiSum$Year,
      emiSum$x,
      type = 'b',
      main = 'The Total Emission in The United States from 1999 to 2008',
      xlab = 'Year',
      ylab = 'The Total Emissions from All Sources',
      axes = F,
      frame.plot = T )

xIndicators <- as.numeric( emiSum$Year )
axis( side = 1,
      at = xIndicators,
      labels = str( xIndicators ) )

yIndicators <- as.numeric( c( min( emiSum$x ), mean( emiSum$x ), max( emiSum$x ) ) )
axis( side = 2,
      at = yIndicators,
      labels = str( yIndicators ) )

dev.off()
