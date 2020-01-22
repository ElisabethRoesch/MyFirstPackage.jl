# This is a function available to user. given the equation_id, it returns solutions.
function myFunction1(equation_id)
    result = 0
    if(equation_id == 1)
        result = internalFunction1()
    else
        result = internalFunction2()
    end
    return result
end

# This is an internal function the user cannot use by default.
function internalFunction1()
    f(u,p,t) = 1.01*u
    u0 = 1/2
    tspan = (0.0,1.0)
    prob = ODEProblem(f, u0 ,tspan)
    sol = solve(prob, Tsit5(), reltol = 1e-8, abstol = 1e-8)
end

# This is an internal function the user cannot use by default.
function internalFunction2()
    f(u,p,t) = 2.01*u
    u0 = 1/5
    tspan = (0.0,10.0)
    prob = ODEProblem(f, u0, tspan)
    sol = solve(prob, Tsit5(), reltol = 1e-8, abstol = 1e-8)
end
