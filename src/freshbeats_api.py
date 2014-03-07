import pyechonest
from pyechonest import artist
from pyechonest import config

def get_api_key():
    with open("../ECHONEST-APIKEY.txt") as fp:
        key = fp.read().strip()
        return key

config.ECHO_NEST_API_KEY = get_api_key()

def test():
    x = artist.Artist('the shins')
    print x.id
    print "Artists similar to: %s:" % (x.name,)
    for similar_artist in x.similar: 
        print "\t%s" % (similar_artist.name,)

print get_api_key()
print test()


