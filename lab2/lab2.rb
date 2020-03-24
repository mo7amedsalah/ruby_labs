#!/usr/bin/ruby
require './classes.rb'
require 'getoptlong'
class Main
    @name = @email = @phone = @list = ''
    def initialize

        @opts = GetoptLong.new(
        [ "--name", "-n", GetoptLong::OPTIONAL_ARGUMENT ],
        [ "--email", "-e", GetoptLong::OPTIONAL_ARGUMENT],
        [ "--phone", "-p",GetoptLong::OPTIONAL_ARGUMENT ],
        [ "--list", "-l", GetoptLong::OPTIONAL_ARGUMENT ]
        )
        chose
    end

    def chose
        @opts.each do |opt, arg|
             case opt
                 when '--name'
                 @name = arg
                 when '--email'
                 @email = arg
                 when '--phone'
                 @phone = arg
                 when '--list'
                 @list = arg
            end
         end
         decide
    end

    def decide
        if @name and @email and @phone
            user=User.new(@name, @email, @phone)
            puts user.create
        elsif @list
            @list=@list.to_i
            if @list > 0
                User.list @list
            else
                User.list
            end
        else
            puts "Error Try again"
        end
    end

end

Main.new()