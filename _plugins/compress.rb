require 'jekyll_asset_pipeline'

module Wisq
  if ENV['COMPRESS'] == '1'
    require 'jekyll-minifier'

    class JavaScriptCompressor < JekyllAssetPipeline::Compressor
      require 'closure-compiler'

      def self.filetype
        '.js'
      end

      def compress
        return Closure::Compiler.new.compile(@content)
      end
    end

    class CssCompressor < JekyllAssetPipeline::Compressor
      require 'yui/compressor'

      def self.filetype
        '.css'
      end

      def compress
        return YUI::CssCompressor.new.compress(@content)
      end
    end
  end
end
