# Julia testing spike

First install Julia (on Mac, `brew cask install julia` should do it)

## To run tests inside the Julia repl
```
$ julia
pkg> ]dev ./MyPackage.jl
pkg> add https://github.com/maccam912/JUnitTestSets.jl.git
pkg> status
pkg> test MyPackage
```

## To run tests from the command line
```
$ julia MyPackage.jl/test/runtests.jl
```
