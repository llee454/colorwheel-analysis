<h1><center>Combining Multiple Sets of Evidence Using the Evidence Colorwheel</center></h1>
<center>Larry Darryl Lee Jr.</center>
<center>March 24, 2024</center>

> This article describes how to combine multiple sets of evidence using the Evidence Colorwheel.

## Introduction

This article describes how to combine multiple sets of evidence using the Evidence Colorwheel.

## Evidence Weights

| $P(E|H)$ | $P(E|\\neg H)$ | $w_\{min\}$ | $w$ | $w_\{max\}$ |
| -------- | ------------- | --------- | --- | --------- |
{#each:root.weights}|{data:local[0][0]}|{data:local[1][0]}|{data:local[2].lower}|{data:local[2].middle}|{data:local[2].upper}|
{/each}

## Needed Evidence Weights

The following table shows the weight $w$ of evidence $E$ needed to change the probability that a given hypothesis $H$ is true from $P(H)$ to $P(H|E)$. The probabilities are reported using probability classes, accordingly, the minimum $w_\{min\}$, maximum $m_\{max\}$, and typical $w$ weights needed to shift the probabilities are given.

| $P(H)$ | $P(H|E)$ | $w_\{min\}$ | $w$ | $w_\{max\}$ |
| -------- | ------------- | --------- | --- | --------- |
{#each:root.needed_weights}|{data:local[0][0]}|{data:local[1][0]}|{expr:(enumber->str (get-data "local[2].lower"))}|{expr:(enumber->str (get-data "local[2].middle"))}|{expr:(enumber->str (get-data "local[2].upper"))}|
{/each}