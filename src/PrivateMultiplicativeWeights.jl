"""
    PrivateMultiplicativeWeights

Algorithm for creating differentially private synthetic data.
"""
module PrivateMultiplicativeWeights

using
    Distributions.Laplace,
    Distributions.wsample,
    Hadamard,
    Iterators.subsets

export
    mwem,
    Tabular,
    Histogram,
    HistogramQueries,
    RangeQueries,
    Parities,
    FactorParities,
    maximum_error,
    mean_squared_error

import
    Base: start, next, done, eltype, length

include("interface.jl")
include("histogram.jl")
include("rangequeries.jl")
include("factors.jl")
include("gosper.jl")
include("parities.jl")
include("error.jl")
include("mwem.jl")


end # module
