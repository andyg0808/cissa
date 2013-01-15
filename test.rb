#!/usr/bin/env ruby

load 'cissa'

class Test
	def meth1
		puts "Meth 1 called"
	end

	def met_test44
		puts "met_test44"
	end
	def argmeth arg1
		puts "Argmeth is demanding.\nIt wants one argument. You said #{arg1}"
	end
	def paramtest(arg,arg2="default",arg3="test",*arg4)
		puts "Arguments:|#{arg}|#{arg2}|#{arg3}|#{arg4}|"
	end
	def newtest
		@var = 3
		return
	end
	def varval
		p @var
		return 
	end
end

Cissa.run_class Test
