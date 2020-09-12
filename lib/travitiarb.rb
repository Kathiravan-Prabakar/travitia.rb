require 'travitiarb/ctxmanager'
require 'travitiarb/http'
require 'travitiarb/version'

module Travitia
    class Client
        attr_reader :__version__, :_httpClient, :_ctxManager
        attr_accessor :token
        def initialize(token)
            @token = token
            @__version__ = Version::PKG_VERSION
            @_httpClient = Http::Client.new()
            @_ctxManager = Ctxmanager::Manager.new()
        end

        # Ask whatever you give to cleverbot
        def ask(text)
            begin
                @_ctxManager._update_array(text)
                resp = @_httpClient.request(@token, text, @_ctxManager._storage)
                return resp
            rescue => exception
                puts exception.message
            end
        end
    end
end