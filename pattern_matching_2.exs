[a, b, a] = [1, 2, 3] # Won't match
[a, b, a] = [1, 1, 2] # Won't match
[a, b, a] = [1, 2, 1] # -> [1, 2, 1]
