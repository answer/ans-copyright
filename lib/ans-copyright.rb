require "ans-copyright/version"

module Ans
  module Copyright

    def show_copyright(copyright,opts=nil)
      opts ||= {}

      padding = opts[:padding] || " "
      separator = opts[:separator] || " - "

      if opts[:file]
        opts[:now] = File.mtime(Rails.root.join opts[:file]).year
      end

      unless opts[:since]
        unless opts[:now]
          raw copyright
        else
          raw "#{copyright}#{padding}#{opts[:now]}"
        end
      else
        now = (opts[:now] || Time.now.strftime("%Y")).to_i
        since = opts[:since].to_i

        if since ==  now
          raw "#{copyright}#{padding}#{since}"
        else
          raw "#{copyright}#{padding}#{since}#{separator}#{now}"
        end
      end
    end

  end
end
