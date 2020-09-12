require 'httparty'

module Http
    class Client
        # Make a request to the API
        # Parameters:
            #token[String] = Travitia API Token
            #text[String] = The text to be asked to cleverbot
            #context[Array] = Context 
        def request(token, text, context)
            begin
                resp = HTTParty.post("https://public-api.travitia.xyz/talk", :headers => {"Authorization": token}, :body => {"text": text, "context": context})
                return resp
            rescue => exception
                puts exception.message
            end
        end
    end
end