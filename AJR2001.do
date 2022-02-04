use AJR2001.dta, clear
reg loggdp risk
reg risk logmort0
predict uhat, residual
ivregress 2sls loggdp (risk = logmort0)
reg loggdp risk uhat
