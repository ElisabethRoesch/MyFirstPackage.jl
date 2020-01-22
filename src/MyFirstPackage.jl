module MyFirstPackage
    # Here I list all the packages that I will use in this package.
    using DifferentialEquations, Plots
    # Here I list all the files I want to include.
    include("myFile1.jl")
    include("myFile2.jl")
    include("myFile3.jl")
    # Here I list all the methods, I want to provide to the user.
    export myFunction1, myFunction2, myFunction3
end
