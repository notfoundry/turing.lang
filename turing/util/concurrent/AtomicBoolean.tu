unit
monitor class AtomicBoolean

    export getValue, setValue
    
    var value: boolean := false
    
    fcn getValue(): boolean
        result value
    end getValue
    
    proc setValue(bool: boolean)
        value := bool
    end setValue
    
end AtomicBoolean