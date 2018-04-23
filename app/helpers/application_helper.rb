module ApplicationHelper
    def bootstrap_class_for(flash_type)
		case flash_type
		when "success"
		"alert-success"
		when "error"
		"alert-warning"
		when "alert"
		"alert-danger"
		when "notice"
		"alert-info"
		else
		flash_type.to_s
		end
	end

	def markdown(text)
	    options = {
	      filter_html:     true,
	      hard_wrap:       true,
	      link_attributes: { rel: 'nofollow', target: "_blank" },
	      space_after_headers: true,
	      fenced_code_blocks: true,
	      escape_html:         true 
	    }

	    extensions = {
	      autolink:           true,
	      superscript:        true,
	      disable_indented_code_blocks: true,
	      tables: 			true,
	    }

	    renderer = Redcarpet::Render::HTML.new(options)
	    markdown = Redcarpet::Markdown.new(renderer, extensions)

	    markdown.render(text).html_safe
  	end



end
