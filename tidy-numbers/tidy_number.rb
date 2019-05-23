class TidyNumber
        def self.solve(n)
                result(n).to_i
        end

        def self.result(n) 
                n = n.to_s.strip
                index = first_incorrect_index(n)
                return n if index == -1
                
                decreased_prefix = n[0, index].to_i - 1
                return self.result(decreased_prefix) + '9' * (n.length-index)
        end

        def self.first_incorrect_index(n)
                ciphers = n.split('')
                
                ciphers.each_with_index do |cipher, index|
                        next_index = index + 1
                
                        return -1 if next_index == ciphers.length
                        return next_index if cipher > ciphers[next_index]
                end

                return -1
        end
end

