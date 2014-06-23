#!/usr/bin/env ruby
#
# Author:: Andrew Gilbert <andrewg800@gmail.com>
# Copyright:: Copyright (c) 2013 Andrew Gilbert
#
# Copyright (c) 2013, Andrew Gilbert
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
#	* Redistributions of source code must retain the above copyright
#	  notice, this list of conditions and the following disclaimer.
#	* Redistributions in binary form must reproduce the above copyright
#	  notice, this list of conditions and the following disclaimer in the
#	  documentation and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

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
	def paramtest(arg, arg2="default", arg3="test", *arg4)
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
