def move(num_disks, start=0, target=1, using=2)
    
    if num_disks == 1
        puts "Move disk from #{start} to #{target}"
    else
        move(num_disks-1, start, using, target)
        move(1,           start, target, using)
        move(num_disks-1, using, target, start)
    end 
end
   
n = 3
puts move(n)