<h1><center>Combining Multiple Sets of Evidence Using the Evidence Colorwheel</center></h1>
<center>Larry Darryl Lee Jr.</center>
<center>March 24, 2024</center>

## Introduction

This following tables can be used to weigh evidence. Given some evidence $E_0, E_1, \\ldots, E_n$ and a hypothesis $H$, you can determine the probability that the hypothesis is true given the evidence $P(H|E_0 \\wedge E_1 \\wedge \\ldots \\wedge E_n)$ by following these steps:

1. calculate the weight $w_i$ of each piece of evidence $E_i$.
2. add up the weights of all of the evidence $w = \\sum_\{i = 0\}^n w_i$.
3. calculate the probability that $H$ is true given evidence whose total weight is $w$.

To calculate the weight of each piece of evidence, use the "Evidence Weights" table. To determine the probability that $H$ is true, use the "Posterior Probabilities" table.

## Evidence Weights

The following table shows the weight of a given body of evidence $E$ with respect to a hypothesis $H$ given that the probability of observing $E$ when $H$ is true equals $P(E|H)$ and the probability of observing $E$ when $H$ is false equals $P(E|\\neg H)$. This table uses probability classes. Accordingly, the minimum $w_\{min\}$, maximum $w_\{max\}$, and typical $w$ weights associated with $E$, given that the input probabilities fall within the stated probability classes, are also given.  

### Evidence Weights

| $P(E|H)$ | $P(E|\\neg H)$ | $w_\{min\}$ | $w$ | $w_\{max\}$ |
| -------- | ------------- | --------- | --- | --------- |
{#each:root.weights}|{data:local[0][0]}|{data:local[1][0]}|{expr:(enumber->str (get-data "local[2].lower"))}|{expr:(enumber->str (get-data "local[2].middle"))}|{expr:(enumber->str (get-data "local[2].upper"))}|
{/each}

### Evidence Weights (Aminas)

To simplify calculations, we consider 0.75 nats worth of evidence equal to 1 amina and report the weight of evidence in Aminas.

| $P(E|H)$ | $P(E|\\neg H)$ | $w_\{min\}$ | $w$ | $w_\{max\}$ |
| -------- | ------------- | --------- | --- | --------- |
{#each:root.weights}|{data:local[0][0]}|{data:local[1][0]}|{expr:(enumber->str (floor (nats->aminas (get-data "local[2].lower"))))}|{expr:(enumber->str (round (nats->aminas (get-data "local[2].middle"))))}|{expr:(enumber->str (ceiling (nats->aminas (get-data "local[2].upper"))))}|
{/each}

## Posterior Probabilities

The following table shows the probability $P(H|E)$ that a given hypothesis $H$ is true given a body of evidence $E$ whose collective weight equals $w$, measured in Aminas, given that the probability that $H$ was true before we saw the new evidence $E$ was $P(H)$.

| $P(H)$ | $w$ | $P(H|E)_\{min\}$ | $P(H|E)$ | $P(H|E)_\{max\}$ |
| ------ | --- | ---------------- | -------- | ---------------- |
{#each:root.posteriors}|{data:local[0][0]}|{data:local[1]}|{data:local[2].lower[0]}|{data:local[2].middle[0]}|{data:local[2].upper[0]}|
{/each}

## Needed Evidence Weights

The following table shows the weight $w$ of evidence $E$ needed to change the probability that a given hypothesis $H$ is true from $P(H)$ to $P(H|E)$. The probabilities are reported using probability classes, accordingly, the minimum $w_\{min\}$, maximum $m_\{max\}$, and typical $w$ weights needed to shift the probabilities are given.

### Evidence Weights

| $P(H)$ | $P(H|E)$ | $w_\{min\}$ | $w$ | $w_\{max\}$ |
| -------- | ------------- | --------- | --- | --------- |
{#each:root.needed_weights}|{data:local[0][0]}|{data:local[1][0]}|{expr:(enumber->str (get-data "local[2].lower"))}|{expr:(enumber->str (get-data "local[2].middle"))}|{expr:(enumber->str (get-data "local[2].upper"))}|
{/each}

### Evidence Weights (Aminas)

| $P(H)$ | $P(H|E)$ | $w_\{min\}$ | $w$ | $w_\{max\}$ |
| -------- | ------------- | --------- | --- | --------- |
{#each:root.needed_weights}|{data:local[0][0]}|{data:local[1][0]}|{expr:(enumber->str (floor (nats->aminas (get-data "local[2].lower"))))}|{expr:(enumber->str (round (nats->aminas (get-data "local[2].middle"))))}|{expr:(enumber->str (ceiling (nats->aminas (get-data "local[2].upper"))))}|
{/each}

