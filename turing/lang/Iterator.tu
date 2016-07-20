unit
class Iterator
    inherit Object in "%oot/turing/lang/Object.tu"
    export hasNext, next, remove
    
    deferred fcn hasNext(): boolean
    
    deferred fcn next(): ^Object
    
    deferred proc remove()
    body proc remove()
        Error.Halt("Removal is not supported")
    end remove
end Iterator