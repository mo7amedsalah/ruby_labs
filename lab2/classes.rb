class Person
    @name
    def initialize(name)
        @name = name
    end
    def valid_name?()
        @name[/[a-zA-Z]+/]  == @name
    end
end

module Talkable

    def Talkable.contacts(email, phone)
        return email+"|"+phone
    end
end

class User < Person
    @email
    @phone

    def initialize(name, email, phone)
        super name
        @email = email
        @phone = phone
    end

    def create
        if valid_name?
            File.open('users.txt', 'a') do |f2|
             f2.puts "#{@name}:#{@email}:#{@phone}"
            end
            return self
        else
            return false
        end
    end

    def User.list(*args)
        File.open('users.txt', 'r') do |f1|
            @count = 0
             while line = f1.gets
                if args.length == 0 || ( args.length==1 and @count < args[0])
                    user = line.split(':')
                    puts user[0]+'**'+Talkable.contacts(user[1], user[2])
                    @count +=1
                end
             end
        end
    end
end
