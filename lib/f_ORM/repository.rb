module F_ORM
	class Repository
		attr_reader :connection,:type
		def initialize(type, *config)
			@type = F_ORM.const_get(type)
			raise( "f-ORM: Unsupported Repository Type '#{type}'") unless @type
			@connection = @type.connect(*config)
			@models = []
		end

		def register(model)
			@models.push model
		end

	end
end