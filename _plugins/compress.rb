require 'jekyll_asset_pipeline'

# Right now, this just seems to make our JS *larger*.  At least, post-compression.
#
#class JavaScriptCompressor < JekyllAssetPipeline::Compressor
#  require 'closure-compiler'
#
#  def self.filetype
#    '.js'
#  end
#
#  def compress
#    return Closure::Compiler.new.compile(@content)
#  end
#end

module JekyllAssetPipeline
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
