unit
class Iterable
    inherit Object in "%oot/turing/lang/Object.tu"
    import Iterator in "%oot/turing/lang/Iterator.tu"
    export iterator
    
    deferred fcn iterator(): ^Iterator
end Iterable