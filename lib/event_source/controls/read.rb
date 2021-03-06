module EventSource
  module Controls
    module Read
      def self.example(stream_name: nil)
        stream_name ||= StreamName.example
        Example.build(stream_name)
      end

      class Example
        include EventSource::Read

        def configure(*); end
      end
    end
  end
end
