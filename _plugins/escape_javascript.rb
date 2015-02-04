# Meat taken from Rails: http://goo.gl/5apLE
module Jekyll
  module EscapeJavascript
    JS_ESCAPE_MAP = {
      '\\'    => '\\\\',
      '</'    => '<\/',
      "\r\n"  => '\n',
      "\n"    => '\n',
      "\r"    => '\n',
      '"'     => '\\"',
      "'"     => "\\'"
    }
    if defined?(Encoding) && "".respond_to?(:encode)
      JS_ESCAPE_MAP["\342\200\250".force_encoding('UTF-8').encode!] = '&#x2028;'
    else
      JS_ESCAPE_MAP["\342\200\250"] = '&#x2028;'
    end

    def escape_javascript(s)
      if s
        s.gsub(/(\\|<\/|\r\n|\342\200\250|[\n\r"'])/u) {|match| JS_ESCAPE_MAP[match] }
      else
        ''
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::EscapeJavascript)
