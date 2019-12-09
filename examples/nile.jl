using CSV, StateSpaceModels, Plots, Statistics, Dates

# Load the Nile dataset
nile = CSV.read("./examples/Nile.csv")

# Plot the data
p1 = plot(nile.Year, nile.Flow, label = "Nile river flow", legend = :topright, color = :black, xlabel = "Year", ylabel = "Flow")

# Specify the state-space model
model = local_level(Vector{Float64}(nile.Flow))

# Estimate the state-space model
ss = statespace(model)