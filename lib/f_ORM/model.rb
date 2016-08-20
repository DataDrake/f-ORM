require_relative 'scope'
module F_ORM
	module Model
		@@key_name = nil
		@@properties = {}
		@@relations = {}

		def initialize(key)
			send @@key_name , key
		end

		def key(name)
			@@key_name = name
			attr_accessor name
		end

		def property(name, type)
			raise 'f-ORM: Invalid Type specified' unless type.is_a? Class
			@@properties[name] = type
			attr_accessor name
		end

		def relation(name, type, scope)
			raise 'f_ORM: Invalid Type specified' unless type.is_a? Class
			raise 'f-ORM: Invalid Scope specified' unless F_ORM::SCOPE.include?(scope)
			@@relations[name] = {
					type: type,
					scope: scope
			}
			attr_accessor name
		end
	end
end