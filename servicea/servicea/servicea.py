from nameko.rpc import rpc


class ServiceA:
    name = "servicea"

    @rpc
    def hello(self, name):
        print("Service A here...")
        return "Hello {}".format(name)
