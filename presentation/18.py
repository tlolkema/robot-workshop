import requests

class ExampleLibrary:

    def example_keyword(self, arg):
        url = 'localhost:9999/workshop'
        params = {
            'param': arg,
        }
        response = requests.get(url=url, params=params) 
        return response.text