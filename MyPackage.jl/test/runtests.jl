using MyPackage
#using Test
using JUnitTestSets

###########################################
# Define your test cases in the block below
# - note use of the @jtestset and @jtest macros
# vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
ts = @jtestset "randomTests" begin
    @jtest 1 + 1 == 2
    @jtest iseven(10)
    @jtest 2 * 3 == 6
    @jtest isapprox(pi_approximation(), 3.14159, atol=0.005) # Note pi_approximiation() is defined inside MyPackage

    @jtest 1 + 0 == 127
    
end
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
# Define your test cases in the block above
###########################################

# Next 2 lines create a JUnit-formatted test report and write it to stdout
junit_report = write_report(ts)
print(junit_report)

# TODO - move check_test_results() into JUnitTestSet.jl package...
function check_test_results(ts::JUnitTestSet) 
    # Go through the resuls of each test that executed
    # If any test failed, return 1, otherwise return 0
    for t in ts.results
        if !t.result
            return 1
        end
    end
    return 0
end

# Next 2 lines will 'exit(1)' if any tests failed, otherwise 'exit(0)'
results = check_test_results(ts)
exit(results)


