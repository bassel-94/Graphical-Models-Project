# Graphical-Models-Project

# Analysis and simulation of a dynamic network of epidemic transmission

Potential key points to include in the report

## Introduction
 * Introducing what a dynamic network is
 * Introducing ways to study epidemic and disease transmittion in a network over time by means of simulations using epimed package (see epidemodel's article in resources)
 * We introduce our own problem to solve; how can we model the transmission of an epidemic using a temporal ERGM using the example dataset
 
## Main steps of the study
 * Introduce the dataset we are working with
 * Do sumary statistics of the data. In our case, degree distribution and means either on a specific timestamp, or a lineplot showing evolution overtime using the epimodel's package
 * Data has a response variable, whether the individual is diseased or not. We can hide that and simulate it later.
 * Extract the parameters we will use to model the network using the TERGM which we will also define mathematically (using the vignette)
 * Plot the simulated network and its statistics on multiple timestamps to show its evolution overtime. 
 * Compare the predicted number of diseased individuals and compute accuracy of the simulated network (did it capture the real network's structure?)

## Conclusion
Conclude on how this may be useful in other cases.
