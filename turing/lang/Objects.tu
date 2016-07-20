unit
module Objects
    import Object in "%oot/turing/lang/Object.tu"
    export assertNonNull
    proc assertNonNull(o: ^Object)
        if o = nil then Error.Halt("Object is null")
        end if
    end assertNonNull
end Objects