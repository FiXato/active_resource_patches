module ActiveResource
  class Connection
    HTTP_FORMAT_HEADER_NAMES[:head] = 'Content-Type'

    # Execute a HEAD request.
    # Used to obtain meta-information about resources, such as whether they exist and their size (via response headers).
    def head(path, headers = {})
      request(:head, path, build_request_headers(headers, :head))
    end
  end
end