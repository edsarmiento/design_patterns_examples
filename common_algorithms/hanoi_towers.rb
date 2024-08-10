# Recursive method to solve Tower of Hanoi
def hanoi(n, from_peg, to_peg, aux_peg)
  if n == 1
		byebug
    # Base case: Move a single disk directly from from_peg to to_peg
    puts "Move disk 1 from peg #{from_peg + 1} to peg #{to_peg + 1}"
  else
    # Move n-1 disks from from_peg to aux_peg using to_peg
    hanoi(n - 1, from_peg, aux_peg, to_peg)
    
    # Move the nth disk from from_peg to to_peg
    puts "Move disk #{n} from peg #{from_peg + 1} to peg #{to_peg + 1}"
    
    # Move n-1 disks from aux_peg to to_peg using from_peg
    hanoi(n - 1, aux_peg, to_peg, from_peg)
  end
end

# Number of disks
num_disks = 3
# Solve the Tower of Hanoi problem
hanoi(num_disks, 0, 2, 1)