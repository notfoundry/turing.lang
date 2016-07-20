unit
class *Array
    export construct, size, element
    var elements: flexible array 1..0 of unchecked ^anyclass
    
    proc construct(size: nat)
        new elements, size
    end construct
    
    fcn size: nat
        result upper(elements)
    end size
    
    fcn element(arrIndex: nat): unchecked ^unchecked ^anyclass
        var resultPtr: unchecked ^unchecked ^anyclass
        #resultPtr := addr(elements(arrIndex))
        result resultPtr
    end element
end Array