rm(list=ls())

# remotes::install_github("schochastics/networkdata")
# library(networkdata)

data(protein)
protein_net = asNetwork(protein)

library(network)
library(intergraph)

# Select vertices with different lethality name
others = which(!(protein_net %v% "lethality") %in% c("Unknown", "Lethal", "Non-Lethal"))

# Set selected vertice attributes to "Other"
set.vertex.attribute(protein_net, "lethality", "Other", others)

# Plot network
plot(protein_net, vertex.col="lethality")

