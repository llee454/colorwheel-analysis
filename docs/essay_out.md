<h1><center>Combining Multiple Sets of Evidence Using the Evidence Colorwheel</center></h1>
<center>Larry Darryl Lee Jr.</center>
<center>March 24, 2024</center>

> This article describes how to combine multiple sets of evidence using the Evidence Colorwheel.

## Introduction

This article describes how to combine multiple sets of evidence using the Evidence Colorwheel.

## Evidence Weights

| $P(E|H)$ | $P(E|\neg H)$ | $w_{min}$ | $w$ | $w_{max}$ |
| -------- | ------------- | --------- | --- | --------- |
|Blue|Blue|-0.05129329438755058|0.0|0.05129329438755048|
|Blue|Green|2.2204460492503128e-16|0.10821358464023279|0.22314355131420976|
|Blue|Yellow|0.17185025692665942|0.6678293725756554|1.6094379124340992|
|Blue|Orange|1.5581446180465497|2.0541237336955462|0.6931471805599448|
|Blue|Red|0.6418538861723947|3.6635616461296463|Infinity|
|Green|Blue|-0.2231435513142097|-0.10821358464023272|-2.220446049250313e-16|
|Green|Green|-0.1718502569266589|0.0|0.17185025692665884|
|Green|Yellow|2.2204460492503128e-16|0.5596157879354227|1.5581446180465484|
|Green|Orange|1.3862943611198906|1.9459101490553132|0.641853886172394|
|Green|Red|0.47000362924573563|3.5553480614894135|Infinity|
|Yellow|Blue|-1.6094379124340992|-0.6678293725756553|-0.17185025692665942|
|Yellow|Green|-1.5581446180465484|-0.5596157879354228|-2.220446049250313e-16|
|Yellow|Yellow|-1.3862943611198892|0.0|1.3862943611198892|
|Yellow|Orange|1.110223024625156e-15|1.3862943611198906|0.4700036292457349|
|Yellow|Red|-0.9162907318741539|2.995732273553991|Infinity|
|Orange|Blue|-0.6931471805599448|-2.054123733695546|-1.5581446180465497|
|Orange|Green|-0.641853886172394|-1.9459101490553135|-1.3862943611198906|
|Orange|Yellow|-0.47000362924573486|-1.3862943611198906|-1.1102230246251571e-15|
|Orange|Orange|0.9162907318741554|0.0|-0.9162907318741554|
|Orange|Red|4.440892098500625e-16|1.6094379124341003|Infinity|
|Red|Blue|-Infinity|-3.6635616461296463|-0.6418538861723948|
|Red|Green|-Infinity|-3.5553480614894135|-0.4700036292457356|
|Red|Yellow|-Infinity|-2.995732273553991|0.9162907318741538|
|Red|Orange|-Infinity|-1.6094379124341003|-4.440892098500627e-16|
|Red|Red|-Infinity|0.0|Infinity|


## Needed Evidence Weights

The following table shows the weight $w$ of evidence $E$ needed to change the probability that a given hypothesis $H$ is true from $P(H)$ to $P(H|E)$. The probabilities are reported using probability classes, accordingly, the minimum $w_{min}$, maximum $m_{max}$, and typical $w$ weights needed to shift the probabilities are given.

| $P(H)$ | $P(H|E)$ | $w_{min}$ | $w$ | $w_{max}$ |
| -------- | ------------- | --------- | --- | --------- |
|Blue|Blue|$-\infty$|0|$\infty$|
|Blue|Green|$-\infty$|-1.7177|0|
|Blue|Yellow|$-\infty$|-3.6636|-1.5581|
|Blue|Orange|$-\infty$|-5.6095|-4.3307|
|Blue|Red|$-\infty$|-7.3271|-2.9444|
|Green|Blue|0|1.7177|$\infty$|
|Green|Green|-1.5581|0|1.5581|
|Green|Yellow|-4.3307|-1.9459|0|
|Green|Orange|-2.9444|-3.8918|-2.7726|
|Green|Red|$-\infty$|-5.6095|-1.3863|
|Yellow|Blue|1.5581|3.6636|$\infty$|
|Yellow|Green|0|1.9459|4.3307|
|Yellow|Yellow|-2.7726|0|2.7726|
|Yellow|Orange|-1.3863|-1.9459|0|
|Yellow|Red|$-\infty$|-3.6636|1.3863|
|Orange|Blue|4.3307|5.6095|$\infty$|
|Orange|Green|2.7726|3.8918|2.9444|
|Orange|Yellow|0|1.9459|1.3863|
|Orange|Orange|1.3863|0|-1.3863|
|Orange|Red|$-\infty$|-1.7177|0|
|Red|Blue|2.9444|7.3271|$\infty$|
|Red|Green|1.3863|5.6095|$\infty$|
|Red|Yellow|-1.3863|3.6636|$\infty$|
|Red|Orange|0|1.7177|$\infty$|
|Red|Red|$-\infty$|0|$\infty$|
