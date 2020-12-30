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
network::set.vertex.attribute(protein_net, "lethality", "Other", others)

# Plot network
plot(protein_net, vertex.col="lethality")
plot(asNetwork(protein), vertex.col = "lethality")

# test mixing matrix
mixingmatrix(protein_net, "lethality")

# Save network
save(protein_net, file = "protein_net.Rda")
