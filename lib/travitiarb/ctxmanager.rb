module Ctxmanager
    class Manager
        attr_reader :_storage
        def initialize(cleverbot_instance=nil)
            @_storage = []
        end

        def _update_array(text)
            begin
                @_storage.push(text)
            rescue => exception
                puts exception.message
            end
        end
    end
end