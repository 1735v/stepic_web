def app(env, start_response):
    query_string=env['QUERY_STRING']
    split_query_string=query_string.split("&")
    body=[bytes(i+'\n','ascii') for i in split_query_string]
    status='200 OK' 
    headers=[('Content-Type','text/plain')]
    start_response(status, headers)
    return body
