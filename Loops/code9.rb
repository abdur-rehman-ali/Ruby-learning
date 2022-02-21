# redo statement 

# Restarts this iteration of the most internal loop, without checking loop condition. 

for i in (2..6)
    if i<4 then
        puts "#{i}"
        # redo
    end
end