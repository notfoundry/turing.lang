unit
monitor *Thread
    export spin

    proc spin(period: nat)
        const last: nat := Time.ElapsedCPU
        loop
            exit when Time.ElapsedCPU - last >= period
        end loop
    end spin
end Thread