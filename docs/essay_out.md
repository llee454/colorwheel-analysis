<h1><center>Combining Multiple Sets of Evidence Using the Evidence Colorwheel</center></h1>
<center>Larry Darryl Lee Jr.</center>
<center>March 24, 2024</center>

## Introduction

This following tables can be used to weigh evidence. Given some evidence $E_0, E_1, \ldots, E_n$ and a hypothesis $H$, you can determine the probability that the hypothesis is true given the evidence $P(H|E_0 \wedge E_1 \wedge \ldots \wedge E_n)$ by following these steps:

1. calculate the weight $w_i$ of each piece of evidence $E_i$.
2. add up the weights of all of the evidence $w = \sum_{i = 0}^n w_i$.
3. calculate the probability that $H$ is true given evidence whose total weight is $w$.

To calculate the weight of each piece of evidence, use the "Evidence Weights" table. To determine the probability that $H$ is true, use the "Posterior Probabilities" table.

## Evidence Weights

The following table shows the weight of a given body of evidence $E$ with respect to a hypothesis $H$ given that the probability of observing $E$ when $H$ is true equals $P(E|H)$ and the probability of observing $E$ when $H$ is false equals $P(E|\neg H)$. This table uses probability classes. Accordingly, the minimum $w_{min}$, maximum $w_{max}$, and typical $w$ weights associated with $E$, given that the input probabilities fall within the stated probability classes, are also given.  

### Evidence Weights

| $P(E|H)$ | $P(E|\neg H)$ | $w_{min}$ | $w$ | $w_{max}$ |
| -------- | ------------- | --------- | --- | --------- |
|Blue|Blue|-0.0513|0|0.0513|
|Blue|Green|0|0.1082|0.2231|
|Blue|Yellow|0.1718|0.6678|1.6094|
|Blue|Orange|1.5581|2.0541|2.9957|
|Blue|Red|2.9444|3.6636|$\infty$|
|Green|Blue|-0.2231|-0.1082|0|
|Green|Green|-0.1718|0|0.1718|
|Green|Yellow|0|0.5596|1.5581|
|Green|Orange|1.3863|1.9459|2.9444|
|Green|Red|2.7726|3.5553|$\infty$|
|Yellow|Blue|-1.6094|-0.6678|-0.1718|
|Yellow|Green|-1.5581|-0.5596|0|
|Yellow|Yellow|-1.3863|0|1.3863|
|Yellow|Orange|0|1.3863|2.7726|
|Yellow|Red|1.3863|2.9957|$\infty$|
|Orange|Blue|-2.9957|-2.0541|-1.5581|
|Orange|Green|-2.9444|-1.9459|-1.3863|
|Orange|Yellow|-2.7726|-1.3863|0|
|Orange|Orange|-1.3863|0|1.3863|
|Orange|Red|0|1.6094|$\infty$|
|Red|Blue|$-\infty$|-3.6636|-2.9444|
|Red|Green|$-\infty$|-3.5553|-2.7726|
|Red|Yellow|$-\infty$|-2.9957|-1.3863|
|Red|Orange|$-\infty$|-1.6094|0|
|Red|Red|$-\infty$|0|$\infty$|


### Evidence Weights (Aminas)

To simplify calculations, we consider 0.75 nats worth of evidence equal to 1 amina and report the weight of evidence in Aminas.

| $P(E|H)$ | $P(E|\neg H)$ | $w_{min}$ | $w$ | $w_{max}$ |
| -------- | ------------- | --------- | --- | --------- |
|Blue|Blue|-1|0|1|
|Blue|Green|0|0|1|
|Blue|Yellow|0|1|3|
|Blue|Orange|2|3|4|
|Blue|Red|3|5|$\infty$|
|Green|Blue|-1|0|0|
|Green|Green|-1|0|1|
|Green|Yellow|0|1|3|
|Green|Orange|1|3|4|
|Green|Red|3|5|$\infty$|
|Yellow|Blue|-3|-1|0|
|Yellow|Green|-3|-1|0|
|Yellow|Yellow|-2|0|2|
|Yellow|Orange|0|2|4|
|Yellow|Red|1|4|$\infty$|
|Orange|Blue|-4|-3|-2|
|Orange|Green|-4|-3|-1|
|Orange|Yellow|-4|-2|0|
|Orange|Orange|-2|0|2|
|Orange|Red|0|2|$\infty$|
|Red|Blue|$-\infty$|-5|-3|
|Red|Green|$-\infty$|-5|-3|
|Red|Yellow|$-\infty$|-4|-1|
|Red|Orange|$-\infty$|-2|0|
|Red|Red|$-\infty$|0|$\infty$|


## Posterior Probabilities

The following table shows the probability $P(H|E)$ that a given hypothesis $H$ is true given a body of evidence $E$ whose collective weight equals $w$, measured in Aminas, given that the probability that $H$ was true before we saw the new evidence $E$ was $P(H)$.

| $P(H)$ | $w$ | $P(H|E)_{min}$ | $P(H|E)$ | $P(H|E)_{max}$ |
| ------ | --- | ---------------- | -------- | ---------------- |
|Blue|-10|Red|Red|Blue|
|Blue|-9|Red|Red|Blue|
|Blue|-8|Red|Orange|Blue|
|Blue|-7|Orange|Orange|Blue|
|Blue|-6|Orange|Yellow|Blue|
|Blue|-5|Yellow|Yellow|Blue|
|Blue|-4|Yellow|Yellow|Blue|
|Blue|-3|Yellow|Green|Blue|
|Blue|-2|Green|Green|Blue|
|Blue|-1|Green|Green|Blue|
|Blue|0|Green|Blue|Blue|
|Blue|1|Blue|Blue|Blue|
|Blue|2|Blue|Blue|Blue|
|Blue|3|Blue|Blue|Blue|
|Blue|4|Blue|Blue|Blue|
|Blue|5|Blue|Blue|Blue|
|Blue|6|Blue|Blue|Blue|
|Blue|7|Blue|Blue|Blue|
|Blue|8|Blue|Blue|Blue|
|Blue|9|Blue|Blue|Blue|
|Blue|10|Blue|Blue|Blue|
|Green|-10|Red|Red|Red|
|Green|-9|Red|Red|Red|
|Green|-8|Red|Red|Red|
|Green|-7|Red|Red|Orange|
|Green|-6|Red|Orange|Orange|
|Green|-5|Orange|Orange|Yellow|
|Green|-4|Orange|Yellow|Yellow|
|Green|-3|Yellow|Yellow|Yellow|
|Green|-2|Yellow|Yellow|Green|
|Green|-1|Yellow|Yellow|Green|
|Green|0|Green|Green|Green|
|Green|1|Green|Green|Blue|
|Green|2|Green|Blue|Blue|
|Green|3|Blue|Blue|Blue|
|Green|4|Blue|Blue|Blue|
|Green|5|Blue|Blue|Blue|
|Green|6|Blue|Blue|Blue|
|Green|7|Blue|Blue|Blue|
|Green|8|Blue|Blue|Blue|
|Green|9|Blue|Blue|Blue|
|Green|10|Blue|Blue|Blue|
|Yellow|-10|Red|Red|Red|
|Yellow|-9|Red|Red|Red|
|Yellow|-8|Red|Red|Red|
|Yellow|-7|Red|Red|Red|
|Yellow|-6|Red|Red|Red|
|Yellow|-5|Red|Red|Orange|
|Yellow|-4|Red|Red|Orange|
|Yellow|-3|Red|Orange|Yellow|
|Yellow|-2|Orange|Orange|Yellow|
|Yellow|-1|Orange|Yellow|Yellow|
|Yellow|0|Yellow|Yellow|Yellow|
|Yellow|1|Yellow|Yellow|Green|
|Yellow|2|Yellow|Green|Green|
|Yellow|3|Yellow|Green|Blue|
|Yellow|4|Green|Blue|Blue|
|Yellow|5|Green|Blue|Blue|
|Yellow|6|Blue|Blue|Blue|
|Yellow|7|Blue|Blue|Blue|
|Yellow|8|Blue|Blue|Blue|
|Yellow|9|Blue|Blue|Blue|
|Yellow|10|Blue|Blue|Blue|
|Orange|-10|Red|Red|Red|
|Orange|-9|Red|Red|Red|
|Orange|-8|Red|Red|Red|
|Orange|-7|Red|Red|Red|
|Orange|-6|Red|Red|Red|
|Orange|-5|Red|Red|Red|
|Orange|-4|Red|Red|Red|
|Orange|-3|Red|Red|Red|
|Orange|-2|Red|Red|Orange|
|Orange|-1|Red|Orange|Orange|
|Orange|0|Orange|Orange|Orange|
|Orange|1|Orange|Yellow|Yellow|
|Orange|2|Orange|Yellow|Yellow|
|Orange|3|Yellow|Yellow|Yellow|
|Orange|4|Yellow|Yellow|Green|
|Orange|5|Yellow|Green|Green|
|Orange|6|Green|Green|Blue|
|Orange|7|Green|Blue|Blue|
|Orange|8|Blue|Blue|Blue|
|Orange|9|Blue|Blue|Blue|
|Orange|10|Blue|Blue|Blue|
|Red|-10|Red|Red|Red|
|Red|-9|Red|Red|Red|
|Red|-8|Red|Red|Red|
|Red|-7|Red|Red|Red|
|Red|-6|Red|Red|Red|
|Red|-5|Red|Red|Red|
|Red|-4|Red|Red|Red|
|Red|-3|Red|Red|Red|
|Red|-2|Red|Red|Red|
|Red|-1|Red|Red|Red|
|Red|0|Red|Red|Orange|
|Red|1|Red|Orange|Orange|
|Red|2|Red|Orange|Orange|
|Red|3|Red|Orange|Yellow|
|Red|4|Red|Yellow|Yellow|
|Red|5|Red|Yellow|Yellow|
|Red|6|Red|Yellow|Green|
|Red|7|Red|Green|Green|
|Red|8|Red|Green|Blue|
|Red|9|Red|Blue|Blue|
|Red|10|Red|Blue|Blue|


## Needed Evidence Weights

The following table shows the weight $w$ of evidence $E$ needed to change the probability that a given hypothesis $H$ is true from $P(H)$ to $P(H|E)$. The probabilities are reported using probability classes, accordingly, the minimum $w_{min}$, maximum $m_{max}$, and typical $w$ weights needed to shift the probabilities are given.

### Evidence Weights

| $P(H)$ | $P(H|E)$ | $w_{min}$ | $w$ | $w_{max}$ |
| -------- | ------------- | --------- | --- | --------- |
|Blue|Blue|$-\infty$|0|$\infty$|
|Blue|Green|$-\infty$|-1.7177|0|
|Blue|Yellow|$-\infty$|-3.6636|-1.5581|
|Blue|Orange|$-\infty$|-5.6095|-4.3307|
|Blue|Red|$-\infty$|-7.3271|-5.8889|
|Green|Blue|0|1.7177|$\infty$|
|Green|Green|-1.5581|0|1.5581|
|Green|Yellow|-4.3307|-1.9459|0|
|Green|Orange|-5.8889|-3.8918|-2.7726|
|Green|Red|$-\infty$|-5.6095|-4.3307|
|Yellow|Blue|1.5581|3.6636|$\infty$|
|Yellow|Green|0|1.9459|4.3307|
|Yellow|Yellow|-2.7726|0|2.7726|
|Yellow|Orange|-4.3307|-1.9459|0|
|Yellow|Red|$-\infty$|-3.6636|-1.5581|
|Orange|Blue|4.3307|5.6095|$\infty$|
|Orange|Green|2.7726|3.8918|5.8889|
|Orange|Yellow|0|1.9459|4.3307|
|Orange|Orange|-1.5581|0|1.5581|
|Orange|Red|$-\infty$|-1.7177|0|
|Red|Blue|5.8889|7.3271|$\infty$|
|Red|Green|4.3307|5.6095|$\infty$|
|Red|Yellow|1.5581|3.6636|$\infty$|
|Red|Orange|0|1.7177|$\infty$|
|Red|Red|$-\infty$|0|$\infty$|


### Evidence Weights (Aminas)

| $P(H)$ | $P(H|E)$ | $w_{min}$ | $w$ | $w_{max}$ |
| -------- | ------------- | --------- | --- | --------- |
|Blue|Blue|$-\infty$|0|$\infty$|
|Blue|Green|$-\infty$|-2|0|
|Blue|Yellow|$-\infty$|-5|-2|
|Blue|Orange|$-\infty$|-7|-5|
|Blue|Red|$-\infty$|-10|-7|
|Green|Blue|0|2|$\infty$|
|Green|Green|-3|0|3|
|Green|Yellow|-6|-3|0|
|Green|Orange|-8|-5|-3|
|Green|Red|$-\infty$|-7|-5|
|Yellow|Blue|2|5|$\infty$|
|Yellow|Green|0|3|6|
|Yellow|Yellow|-4|0|4|
|Yellow|Orange|-6|-3|0|
|Yellow|Red|$-\infty$|-5|-2|
|Orange|Blue|5|7|$\infty$|
|Orange|Green|3|5|8|
|Orange|Yellow|0|3|6|
|Orange|Orange|-3|0|3|
|Orange|Red|$-\infty$|-2|0|
|Red|Blue|7|10|$\infty$|
|Red|Green|5|7|$\infty$|
|Red|Yellow|2|5|$\infty$|
|Red|Orange|0|2|$\infty$|
|Red|Red|$-\infty$|0|$\infty$|


