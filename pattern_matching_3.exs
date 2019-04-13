[a, b, a] = [1, 2, 3] # Won't match
[a, b, a] = [1, 1, 2] # Won't match
a = 1 # -> 1
^a = 2 # -> 2
^a = 1 # Won't match
^a = 2 - a # Won't match
