# Julia JUnit spike

Quick spike to see how to have Julia tests emit JUnit-formatted test results

First install Julia (on Mac, `brew cask install julia` should do it)

## To setup dependencies inside the Julia repl
```
$ julia
pkg> ]dev ./MyPackage.jl
pkg> add https://github.com/monch1962/JUnitTestSets.jl
pkg> status
pkg> test MyPackage
<Ctrl-D>
$
```

## To run tests from the command line
```
$ julia MyPackage.jl/test/runtests.jl
```
should produce a JUnit-format result file
