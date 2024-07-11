require 'time'

module Jekyll
  class LastModifiedTimeGenerator < Generator
    safe true
    priority :high

    def generate(site)
      postech_data_path = File.join(site.source, '_data', 'postech.yml')
      if File.exist?(postech_data_path)
        site.config['postech_last_modified_time'] = File.mtime(postech_data_path).strftime("%b %d %Y at %H:%M %Z")
      end
    end
  end
end
