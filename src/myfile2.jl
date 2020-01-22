# This is a function available to user. given an ODESolution, it returns a plot.
function myFunction2(solution)
    result_plot = 0
    if(length(solution.u) > 20)
        result_plot = internalFunction3(solution)
    else
        result_plot = internalFunction4(solution)
    end
    return result_plot
end

# This is an internal function the user cannot use by default.
function internalFunction3(solution)
    p = plot(solution, title = "Very long")
    return p
end

# This is an internal function the user cannot use by default.
function internalFunction4(solution)
    p = scatter(solution, title = "Very short")
    return p
end
