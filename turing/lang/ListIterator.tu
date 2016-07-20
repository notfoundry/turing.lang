unit
class ListIterator
    inherit Iterator in "%oot/turing/lang/Iterator.tu"
    export hasPrevious, previous, nextIndex, previousIndex, add, insert
    
    deferred fcn hasPrevious(): boolean
    
    deferred fcn previous(): ^Object
    
    deferred fcn nextIndex(): int
    
    deferred fcn previousIndex(): int
    
    deferred proc add(o: ^Object)
    
    deferred proc insert(o: ^Object)
end ListIterator