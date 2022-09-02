
#Figure 3
if(save_figures_flag) {win.metafile("fig_3_rrfit.wmf", width = 5, height = 5)}
save_par<-par(mar=c(2,2,1,1))

plot(Rezac_x,Rezac_y, main='', xlab='', ylab='', lwd=3)

curve(FuncBinormal(x,resultsfull$Binormal_1[which(resultsfull$names=='Rezac2011')],
                   resultsfull$Binormal_2[which(resultsfull$names=='Rezac2011')]),add=TRUE, lwd=1)

curve(FuncBifractal(x,resultsfull$Bifractal_1[which(resultsfull$names=='Rezac2011')]
                    , resultsfull$Bifractal_2[which(resultsfull$names=='Rezac2011')]),add=TRUE, lty=2, lwd=2)

curve(FuncBilogistic(x,resultsfull$Bilogistic_1[which(resultsfull$names=='Rezac2011')]
                     , resultsfull$Bilogistic_2[which(resultsfull$names=='Rezac2011')]),add=TRUE, lty=3, lwd=2)

curve(FuncPower(x,resultsfull$Power_1[which(resultsfull$names=='Rezac2011')]),add=TRUE, lty=4, lwd=2)

legend( x="bottomright", 
        legend=c("Actual ROC curve points"
                 , "Fitted binormal ROC curve"
                 , "Fitted bifractal ROC curve"
                 , "Fitted bilogistic ROC curve"
                 , "Fitted power ROC curve"
        ),
        lty=c(0,1,2,3,4),
        lwd=c(3,1,2,2,2),
        pch=c(1,NA,NA,NA,NA) )
par(save_par)
if(save_figures_flag) {dev.off()}

paste0('Binormal: b=', resultsfull$Binormal_1[which(resultsfull$names=='Rezac2011')], ' gamma=', resultsfull$Binormal_2[which(resultsfull$names=='Rezac2011')], ' fobj=', resultsfull$Binormal_obj[which(resultsfull$names=='Rezac2011')])
paste0('Bifractal: beta=', resultsfull$Bifractal_1[which(resultsfull$names=='Rezac2011')], ' gamma=', resultsfull$Bifractal_2[which(resultsfull$names=='Rezac2011')], ' fobj=', resultsfull$Bifractal_obj[which(resultsfull$names=='Rezac2011')])
paste0('Bilogistic: alpha0=', resultsfull$Bilogistic_1[which(resultsfull$names=='Rezac2011')], ' alpha1=', resultsfull$Bilogistic_2[which(resultsfull$names=='Rezac2011')], ' fobj=', resultsfull$Bilogistic_obj[which(resultsfull$names=='Rezac2011')])
paste0('Power: gamma=', resultsfull$Power_1[which(resultsfull$names=='Rezac2011')], ' fobj=', resultsfull$Power_obj[which(resultsfull$names=='Rezac2011')])
paste0('Power: theta=', (1-resultsfull$Power_1[which(resultsfull$names=='Rezac2011')])/(1+resultsfull$Power_1[which(resultsfull$names=='Rezac2011')]), ' fobj=', resultsfull$Power_obj[which(resultsfull$names=='Rezac2011')])
