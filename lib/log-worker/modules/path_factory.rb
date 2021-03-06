class PathFactory
	attr_accessor :conf, :usage, :env, :dir, :file, :formatted_date, :formatted_day_before

	def initialize
		@conf 	= YAML.load_file("./config/conf.yaml")
	end

	def tmp_path
		current_dir = Dir.getwd
		return "#{current_dir}/tmp/logs"
	end

	def report_path
		current_dir = Dir.getwd
		return "#{current_dir}/tmp/report"
	end	

	def custom(usage, env, dir, file, formatted_date, formatted_day_before)		
		seeds_path = "#{Dir.getwd}/db/seeds/#{env}/#{file.sub(".log", "")}.csv"		
		usage_path = "/usr/local/var/www/logs/#{env}/#{dir}/#{formatted_day_before}-#{formatted_date}.log"

		seeds_base_name = File.dirname(seeds_path)								 
		usage_base_name = File.dirname(usage_path)

		if usage == "seeds"
			return [seeds_path, seeds_base_name]	
		else
			return [eval("usage_path"), eval("usage_base_name")]
		end
	end
end