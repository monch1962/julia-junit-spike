using MyPackage
#using Test
using JUnitTestSets

ts = @jtestset "randomTests" begin
    @jtest 1 + 1 == 2
    @jtest iseven(10)
    @jtest 2 * 3 == 6
    @jtest isapprox(pi_approximation(), 3.14159, atol=0.005) # Note pi_approximiation() is defined inside MyPackage

    @jtest 1 + 0 == 127
    
end

junit_report = write_report(ts)
print(junit_report)
